#include <iostream> 	//cerr
#include "shell.h"	//shell header file
#include <string.h> 	//strerror
#include <errno.h> 	//errno
#include <fstream> 	//ifstream
#include <string>  	//getline
#include <iomanip> 	//flush
#include <sys/types.h> 	//fork, open, wait
#include <sys/stat.h> 	//open
#include <sys/wait.h> 	//wait
#include <unistd.h> 	//fork, execve
#include <stdlib.h>	//exit
#include <stdio.h>	//perror
#include <fcntl.h>	//open

using namespace std;

const int STDOUT_FD = 1;

void call_redirected(const command *cmd)
{
	//create a forked variable PID for the child processes
	pid_t pid = fork();

	if(pid < 0 ) //failure
	{
		perror("could not create a child process");
		return ;
	}
	else if(pid == 0) //pid is returned in the child on success (0)
	{
		if(cmd->out_redir)
		{
			int fd = open(cmd->out_redir, O_WRONLY | O_CREAT | O_TRUNC, 0666);
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
		}
		if(cmd->in_redir)
		{
			int fd = open(cmd->in_redir, O_WRONLY | O_CREAT | O_TRUNC, 0666);
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
		}
		execvp(cmd->args[0], cmd->args);
		perror("could not execute process");
		exit(3);
	}
	else //successful forking
	{
		int status = 0;
		if (wait(&status) < 0)	
		{ 
			//error waiting for the file
			perror("could not wait for the file");
			return;
		}
		if (WIFEXITED(status))
		{
			if (WEXITSTATUS(status) != 0)
			{
				cerr << "Command exited with exit status " << WEXITSTATUS(status) << endl;
				return;
			} 
		}
		//wifsignaled
		if (WIFSIGNALED(status))
		{
			cerr << "Command exited with exit status" << WTERMSIG(status) << endl; 
			return;
		}
	}
}


int main(int argc, char **argv )
{
	ifstream scriptf;
	//in case there is a script we should be reading from
	bool from_script = false;
	//we will assume there is no script being read from initially
	if (argc > 2)	//bad usage
	{
		cerr << "Usage: " << argv[0] << "[<scriptfile>]\n";
		exit(1);
	}

	else if (argc == 2) //we know it will be from a script if there are 2 arguments passed through the command line
	{
		from_script = true;
		scriptf.open(argv[1]); //if the script is bad, exit the program
		if (scriptf.bad())
		{
			cerr << "Could not open input file!" << argv[1] << ": " << strerror(errno) << endl;
			exit(1);
		}
	}
	
	istream &inf = from_script ? scriptf : cin;

	string line; //command line 
	
	if(!from_script)
	{	
		cerr << "shell> " << flush; //output the shell test
	}
	while(getline(inf, line))
	{
		command * cmd = parse_command(line.c_str());
		//parse the commands appropriately and add them to cmd
		if (cmd->args[0])
		{	
			if (string(cmd->args[0]) == "cd")
			//cd directory
			//cd <nothing> sends us home
			{
			  if (cmd->args[1] == NULL)
			  { //checks to see if the home directory even exists
				if (!cmd->args[1])
				{//checks to see if the first argument is NULL since that indicates us going HOME
					if (getenv("HOME"))
					{
						if (chdir(getenv("HOME")) == -1)
						{
							cerr << "No such file or directory (1)"<< endl;
						}
					}
					else
					{
						cerr << "No home directory?" << endl;
					}
				}
			
			  }
			  else //home directory does not exist
			  {
				
				if(chdir(cmd->args[1]) == -1)
				{//otherwise goes to specified directory
					cerr << "directory "<<string(cmd->args[1]) << " not found" << endl;
				}
			  }
			}
			else if (string(cmd->args[0]) == "setenv")
			// setenv variable value
			{
				if (cmd->args[1] != NULL)
				{//checks to see if there are enough arguments to begin with
					if (cmd->args[2] != NULL)
					{//if there are, we run the arguments through setenv
						if (setenv(cmd->args[1], cmd->args[2], 1) == -1)
						{
							cerr << "unexpected error with setenv" << endl;
						}
					}
					else
					{ //otherwise we run just the one argument
						if(unsetenv(cmd->args[1]) == -1)
						{
							cerr << "unexpected error with unsetenv" << endl;
						}
					}
				}
				else
				{
					cerr << "not enough arguments! setenv <variable> [<value>]" << endl;
				}
			}
			else if (string(cmd->args[0]) == "exit")
			{
				exit(0); //exits
			}
			else 
			{
				call_redirected(cmd); //it must be some other function so we call call_redirected()
			}
		}
		free_command(cmd);
		if (!from_script)
		{
		cerr << "shell> " << flush;
		}
	}
	if (inf.bad()) //bad input
	{
		cerr << "Error reading the input: " << strerror(errno) << endl;
		exit(1);
	}

}
