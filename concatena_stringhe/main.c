int concatena_stringhe(char* src1, char* src2,char *dst);
int main(void) {
	char src1[255] = "ciao123 !!!!!";
	char src2[255] = " mammaMciao";
	char dst[255];
	concatena_stringhe(src1, src2, dst);
}