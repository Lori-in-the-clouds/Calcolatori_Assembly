int salavaparolaspiazzamento(char* s, char* d, unsigned char* parola1);
int main(void) {
	char s[255] = { "pancata pancata pancata panca" };
	char d[255];
	char parola[50] = { "ciao" };
	salavaparolaspiazzamento(s, d, parola);
}