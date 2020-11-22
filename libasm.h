#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>
# include <sys/stat.h>
# include <fcntl.h>
# include <sys/types.h>
# include <stdlib.h>



ssize_t ft_read(int fildes, void *buf, size_t nbyte);
ssize_t ft_write(int fildes, void *buf, size_t nbyte);
char    *ft_strcpy(char *dst,const char *src);
size_t  ft_strlen(const char *s);
int     ft_strcmp(const char *s1, const char *s2);
char    *ft_strdup(const char *s1);



