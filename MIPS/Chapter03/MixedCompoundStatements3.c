#include <stdio.h>

int main(){

	int a = 20, b = 10, c = 5;

	if (a <= 10)
		goto check_and;
	printf("true\n");
	goto done_if;
check_and:
	if (c <= 100)
		goto done_if;
	if (b < c)
		goto done_if;

	printf("true\n");

done_if:
	b |= 0xAA;

}
