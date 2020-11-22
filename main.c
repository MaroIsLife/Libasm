# include "libasm.h"

int main()
{
	int fd;
	int a;
	int b;
	char *s1;
	char *s2;

	//Strcpy
	a = ft_strcpy(s1,"test");
	printf("My Strcpy: Return: %d, Dst: %s\n",a,s1);
	b = strcpy(s1,"test");
	printf("Their Strcpy: Return: %d, Dst: %s",b,s1);

	//Strlen
	a = ft_strlen("Abc");
	printf("My Strlen: %d\n",a);
	b = strlen("Abc");
	printf("Their Strlen: %d\n",b);

	//Strcmp
	a = ft_strcmp("Abc","Absd12");
	printf("My Strlen: %d\n",a);
	b = strcmp("Abc","Absd12");
	printf("My Strlen: %d\n",b);

	//S





	

	return (0);
}
