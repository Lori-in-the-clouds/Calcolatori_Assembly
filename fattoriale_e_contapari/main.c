unsigned int fattoriale(unsigned int a);
int contapari(int* a, int* b, int lunghezza);

int main(void) {
	int a[8] = { 1,2,3,4,5,6,6,6};
	int b[8] = { 0,0,0,0,0 };
	int ris  = contapari(a, b, 8);
	return 0;
}