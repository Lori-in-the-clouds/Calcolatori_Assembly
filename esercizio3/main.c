#include <stdio.h>
void gaus(int* v, int lunghezza, int* media, int* var);
int main(void) {
	int v[10] = { 1,2,3,4,5,6,7,8,-5,9 };
	int media_intera = 0;
	int varianza_intera = 0;
	gaus(v, 10, &media_intera, &varianza_intera);
	printf("la gaussina intera che approssima i dati ha media %d e varianza %d", media_intera, varianza_intera);
}