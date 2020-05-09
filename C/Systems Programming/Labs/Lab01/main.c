#include <stdio.h>
#include "mystery.h"

int main()
{
	/* Experiment with changing the parameters here. */
	long a = 200;
	long b = 100;
	long c = 50;

	long result = mystery1(a, b, c);
	printf("mystery1 returned %ld\n\n", result);

	return 0;
}
