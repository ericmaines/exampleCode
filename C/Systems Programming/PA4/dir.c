/* Eric Maines
 * CS 270
 * 2020-04-08
 */

#include <sys/types.h>
#include <dirent.h>
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>

int main(void)
{
	struct dirent *entry;
	DIR *directory = opendir(".");
	if (directory == NULL)
	{
		//opendir failed
		perror("opendir failed");
		exit(1);
	}

	while((entry = readdir(directory)) != NULL)
	{
		printf("%s\n",entry->d_name);
	}
	if (errno != 0)
	{
		perror("readdir failed");
		exit(1);
	}

	if (closedir(directory) != 0)
	{
		perror("error closing directory");
		exit(1);
	}
	return 0;
}
