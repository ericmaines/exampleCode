/*Lab 03
 *Eric Maines
 *16-April-2020 
 * */
#include <stdlib.h>    //exit
#include <sys/types.h> //fork
#include <unistd.h>    //fork
#include <sys/stat.h>  //open
#include <fcntl.h>     //open
#include <stdio.h>     //perror
#include <sys/wait.h>  //wait
#include <iostream>

const int STDOUT_FD = 1;
extern char **environ; //depending on flags, might be declared in unistd.h
int call_redirected(const char *program, const char *args[], const char *outfile)
{
	pid_t pid = fork();
	if(pid < 0 )
	{
		perror("could not create a child process");
		return 0;
	}
	else if(pid == 0)
	{
		int fd = open(outfile, O_WRONLY | O_CREAT | O_TRUNC, 0666);
		if (fd < 0 )
		{
			perror("could not open file for redirection");
			exit(1);
		}
		if (dup2(fd, STDOUT_FD) <0 )
		{
			perror("could not duplicate description");
			exit(2);
		}
		execve(program, (char * const *) args, environ);
		perror("could not execute process");
		exit(3);

	}
	else
	{
		int status = 0;
		if (wait(&status) < 0)
		{ 
			perror("could not wait for the fild");
			return 0;
		}
		return WIFEXITED(status) && WEXITSTATUS(status) == 0;
	}
}

int main()
{
	const char *args[] = 
	{
		"ls",
		"-l",
		"/",
		nullptr //NULL in C (works in C++ too)
	};

	if (call_redirected("/bin/ls", args, "ls-out.txt"))
	{
		std::cout << "Success! \n";
		return 0;
	}
	else
	{
		std::cout << "Failure :( \n";
		return 1;
	}


}
