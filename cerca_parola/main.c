int cerca_stringa(char* str, char* parola, int* dst);
int main(void) {
	char str[255] = { "ciao mamma guarda come mi diverto, mamma ,mamm ,mmmmaa ,mamma ,mamma,mamma" };
	char parola[255] = { "mamma" };
	int dst[255] = { 0,0,0,0,0 };
	int ris =cerca_stringa(str,parola, dst);
}