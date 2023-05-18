#include <stdio.h>

int fib(int n) {
	if (n <= 1)
		return n;

	return fb(n - 2) + fib(n - 1);
}
