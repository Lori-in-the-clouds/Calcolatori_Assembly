int conta_vocali_consonanti(unsigned char* src, int* dstV, int* dstC);
int main(void) {
	char src[255] = { "CiAo Mamma 123 45!!!!!!}" };
	int dstV;
	int dstC;
	int ret;
	ret = conta_vocali_consonanti(src, &dstV, &dstC);



}