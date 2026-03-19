#include <stdio.h>

extern int f1(int, int, int, int);
int main(void) {
	int i = f1(2, 1, 3, 4);
	printf("answ = %u", i);
}
