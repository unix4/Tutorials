#include <stdio.h>

void print_letters(char letter, int count)
{
	for (int i = 0; i < count; i++) {
		putchar(letter);
	}
	putchar('\n');
}

int save_vals() {
	for (int i = 0; i < 10; i++) {
		print_letters('A' + i, i + 1);
	}

	return 8;
}
