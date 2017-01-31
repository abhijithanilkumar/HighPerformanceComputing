#include<stdio.h>

int main()
{

	unsigned int x= 0x12345678;
	char  *check = (char*) &x;
	
	if(*check==0x12)
	printf("\nLittle Endian");
	
	else if (*check == 0x78)
	printf("\nBig Endian");

}
