#include <stdio.h>

int main(){

	int a = 20, b = 10, c = 5;

	if (a > 10)
		goto do_true;
	if (c <= 100)
		goto done_if;
	if (b < c)
		goto done_if;

do_true:
	printf("true\n");

done_if:
	b |= 0xAA;
}
