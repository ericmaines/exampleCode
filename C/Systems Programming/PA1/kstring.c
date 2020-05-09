#include "kstring.h"
#include <stdlib.h>

char kstrget(kstring str, size_t pos)
{
	//returns the character at index POS in str's data
	//if POS is out of bounds, abort
	if (pos >= str.length)
		abort();
	char *retChar = (str.data);
	char foundChar = retChar[pos];
	return foundChar;
}

void kstrput(kstring str, size_t pos, char ch)
{
	//replaces the character at index pos with ch
	if (pos >= str.length)
		abort();
	char *newStr = (str.data);
	newStr[pos] = ch;
}

size_t kstrlen(kstring str)
{
	//returns the length of the kstring (str.length)
	return str.length;
}

kstring kstralloc(size_t nbytes)
{
	kstring result = { malloc(nbytes), nbytes };	
	if (result.data == NULL ) //malloc returns NULL when it fails - so we check to see that, and if so we abort
		abort();
	return result;
}

kstring kstrfrom(const char *cstr)
{
	//creates and returns a new string object that contains 
	//a copy of the contents of a null terminated C string
	//Returned result should be the length of cstr + 1
	//data member should be a pointer to newly allocated memory
	int length = 1;
	if (cstr == NULL)
		abort();
	while (cstr[length] != '\0')
	{
		length++;
	}
	length++;
	kstring result ={malloc(length), length};
	if (result.data == NULL)
		abort();
	char *tempData = result.data;
	for (size_t i = 0; i < length; i++)
		tempData[i] = cstr[i];
	result.data = tempData;
	return result;
}

void kstrfree(kstring str)
{
	free(str.data);
}

void kstrextend(kstring *strp, size_t nbytes)
{
	// modifies an existing kstring, pointed to by strp to be at least nbytes long
	// if (strp->length) was already nbytes or longer, it will not be reduced
	if (nbytes <= strp->length)
	{
		//nothing
	}
	else
	{	
		kstring newArray = {(realloc(strp->data, nbytes)), nbytes };

		if (newArray.data == NULL)
			abort();

		// fill the additional elements in the array with null bytes
		for (size_t i = strp->length; i <= nbytes; i++)
		{
			newArray.data[i] = '\0';
		}	
		// make strp->data point to the new array
		strp->data = newArray.data;
		// set strp->length to the new size
		strp->length = nbytes;
	}
}

void kstrcat(kstring *destp, kstring src)
{
	//Concatenates str onto the end of *destp
	// extends *destp to be long enough to hold the contents of both 
	// strings w/ kstringextend()
	// then copies the contents of scr in to the dest

	// get the data of each struct before the extend call
		size_t srcSize = src.length;
		size_t oldSize = destp->length;
		char *oldData =  destp->data;
	// extend destp by srcSize
		kstrextend(destp, srcSize);
		size_t newSize = (destp->length);
	// populate those arrays
		for (size_t i = 0; i <(oldSize); i++)
			destp->data[i] = oldData[i];
		for (size_t j = (oldSize);  j<=(newSize+1); j++)
			destp->data[j] = src.data[j];
}
