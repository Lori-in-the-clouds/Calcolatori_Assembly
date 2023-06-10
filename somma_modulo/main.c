int somma_modulo(int* src, int lunghezza, int* dst, int divisione);

int main(void) {
	int src[10] = { 5,5,5,5,5,5,5,5,5,5 };
	int dst[10];
	int ret = 0;
	ret =somma_modulo(src, 10, dst, -5);
}