# include "libasm.h"

int main()
{
	int fd;
	int a;
	int b;
	char *s1;
	char *s2;
	char *p = malloc (8 * sizeof(char));
	char *s4 = calloc(20,1);


	//Strcpy
	printf("Strcpy ====================================================================\n");
	ft_strcpy(p,"test");
 	printf("My Strcpy: %s\n",p);
	strcpy(p,"test");
	printf("Their Strcpy: %s\n",p);

	//Strlen
	printf("Strlen ====================================================================\n");
	a = ft_strlen("Abc");
	printf("My Strlen: %d\n",a);
	b = strlen("Abc");
	printf("Their Strlen: %d\n",b);

	//Strcmp
	printf("Strcmp ====================================================================\n");
	a = ft_strcmp("Abc","Absd12");
	printf("My Strcmp: %d\n",a);
	b = strcmp("Abc","Absd12");
	printf("Their Strcmp: %d\n",b);

	//Write
	printf("Write ====================================================================\n");
	a = ft_write(1,"ABC\n",sizeof("ABC\n"));
	printf("My write: %d\n",a);
	b = write(1,"ABC\n",sizeof("ABC\n"));
	printf("their write: %d\n",b);

	// //Read
	// printf("Read ====================================================================\n");
	fd = open("text.txt", O_RDONLY);
	a = ft_read(fd,s4,8);
	printf("My Read: Return: %d, Buff: %s\n",a,s4);
	b = read(fd,s4,8);
	printf("their Read: Return: %d, Buff: %s\n",b,s4);

	//Strdup
	printf("Strdup ====================================================================\n");
	s1 = ft_strdup("Hello");
	printf(" My Buff: %s\n",s1);
	s2 = strdup("Hello");
	printf("Their Buff: %s\n",s2);

	return (0);
}
