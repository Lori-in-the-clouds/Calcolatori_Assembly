#include <stdio.h>
int numeri_primi(unsigned char* src, unsigned char* dst, int size);
int main(void) {
	unsigned char src[255] = { 4,4,4 };
	unsigned char dst[255] = { 0,0,0,0,0,0,0,0,0,0 };
	int ris = numeri_primi(src, dst, 3);
}