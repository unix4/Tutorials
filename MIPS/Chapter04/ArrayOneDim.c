#include <stdio.h>

int main(){

	int total = 0;
	int numbers[10] = {1,1,1,1,1,1,1,1,1,1};

	for (int i = 0; i < 10; i++) {
		total += numbers[i];
	}

	printf("%i", total); // prints 10

	return 0;
}
