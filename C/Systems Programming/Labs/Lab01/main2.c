#include <stdio.h>
#include "mystery.h"

int main()
{
	/* Experiment with changing the contents and/or length of array. */
	long array[] = {
		12L,
		0L,
		-18L,
		120L,
		-3L,
		5L
	};

	/* Number of array elements is the size (in bytes) of the array,
	 * divided by the size (in bytes) of each element.
	 *
	 * sizeof(array) only works with real arrays!  If you give it a
	 * pointer to an array (and array function parameters are always
	 * pointers), sizeof returns the size of the pointer, not the array!
	 */
	size_t size = sizeof(array)/sizeof(long);
	long result2 = mystery2(array, sizeof(array)/sizeof(long));

	/* In %zu, the u means "unsigned decimal number", and "z" means
	 * "the size of a size_t".  The z modifier was added in C99.
	 *
	 * In %ld, the d means "signed decimal number", and "l" means
	 * "the size of a long".
	 */
	printf("mystery2 on %zu elements returned %ld\n\n", size, result2);

	return 0;
}
