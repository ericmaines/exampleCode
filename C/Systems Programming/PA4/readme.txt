This is Programming Assignment 4 for CS270

Author: 
	Eric Maines, edma236@uky.edu- Finished on 28-April-2020
Contents:
	This file contains the following:
	Makefile	--used for building the exe file
	parser.c	--used to parse the commands of the user
	shell.h/.cc	--header file and c++ code used for the main parts of this program

How to run:
	In UNIX you can run the shell by typing make into the terminal and running the command
	./shell
	after compillation

Implementation Notes: 
	main handles most of the cases in standard shell operation. The function call_redirected() will handle all other commands 
	not listed in main
	the functions contained within parser.c are there to parse the commands given by the user, which puts it into a struct used by the program

Limitations:
	the parser can only support a maximum of 30 arguments
	when the home environment doesn't exist, the shell has issues
		I believe there it has something to do with the getenv and chdir function, but I could not determine the exact reason
	The shell also has issues redirecting files out then in, both out and in simultaneously
		these are errors within the call_redirected function

References:
	I modeled my code for WIFSIGNALED after this code from IBM https://www.ibm.com/support/knowledgecenter/SSB23S_1.1.0.14/gtpc2/cpp_wait.html#cpp_wait
	Dr. Moore's videos on YouTube for a majority of the assigment.