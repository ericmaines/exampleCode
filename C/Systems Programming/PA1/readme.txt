Author: 
	Eric Maines
	edma236@uky.edu
	10 Febuary, 2020
Contents:

	kstring.c: implementation of the kstring functions
	kstring.h: header file for the kstring functions
	test-abbrev.c: an abbreviated test case for kstring
	Makefile: helps you compile the program! Type 'make' in the shell
	script.txtL a record of the testing cases.

Running:
	To compile this program, make the folder it's in your working directory, 
	and type 'make' into the shell.
	To run the test-case type './test-full' without the quotes into the shell
	Or type './test-abbrev' into the shell for a shorter test.

Implementation Notes:
	For many functions, I tried to go with the memory allocation that made the
	most sense, while taking up the least amount of space in the program.
	Everything else was done according to the project specifications.

Limitations:
	I was having issues with the final testing case, which I believe to be due 
	to some sort of an indexing error. However, I can't seem to find where the 
	indexing is. If I had more time, I would go through line by line and include
	some printf statements to debug, and see what is going on.

References:
	This project was done entirely by me looking off of the project assignment.
	No outside help was used except for the unix "man" when looking up the 
	syntax of the malloc family of functions.
