#include <stdio.h>

int main(){

	int a = 5, b = 6, c = 10;

	if (a <= 10 || a >= b)
		goto no_add20;

	c += 20;

no_add20:
	b &= 0xFF;
}
