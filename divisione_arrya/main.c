int divisione_array(int* src, int divisione, int lunghezza, int* resto);
int main(void) {
	int v[4] = { 3,3,3,3 };
	int resto[4];
	int ris = divisione_array(v, 3, 4, resto);
}