#include <stdio.h>

int main(){

	int a = 20, b = 10, c = 5;

	if (a > 10 || c > 100 && b >= c) {
		printf("true\n");
	}

	b |= 0xAA;
}
