#include<stdio.h>
#include<stdlib.h>


	void main()
	{

		printf("\n Basic Program in specific regions\n");
		system("gcc basic_only.c");
		system("size ./a.out");	

		printf("\n Global Variables Uninitialised Program in specific regions\n");
		system("gcc global_only.c");
		system("size ./a.out");	
	
		printf("\n Global Variables Initialised Program in specific regions\n");
		system("gcc globali_only.c");
		system("size ./a.out");	



		printf("\n Local Variables uninitialised Program in specific regions\n");
		system("gcc local_only.c");
		system("size ./a.out");	


		printf("\n Local Variables Initialised Program in specific regions\n");
		system("gcc locali_only.c");
		system("size ./a.out");	

		printf("\n Static Variables Initialised Program in specific regions\n");
		system("gcc statici_only.c");
		system("size ./a.out");	

		printf("\n Static Variables uninitialised Program in specific regions\n");
		system("gcc static_only.c");
		system("size ./a.out");	

		printf("\n Dynamic Variables uninitialised Program in specific regions\n");
		system("gcc dynamic_only.c");
		system("size ./a.out");	




	}

