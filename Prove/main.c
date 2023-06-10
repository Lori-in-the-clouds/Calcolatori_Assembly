#include <stdio.h>
#include <string.h>
//int main(void) {
//	int a, b, c;
//	a = 5;
//	b = 7;
//
//	//c = a + b;
//	__asm { //questo è un blocco assembly,viene chiamato inline assembly
//		//copiamo 
//		mov eax, a
//		mov ebx, b
//		add ebx, eax
//		mov c, ebx
//	}
//	printf("%d", c);
//}

int main(void) {
	/*char a[255] = "ciao mamma";
	char *b = &a[0];*/
	//__asm { //questo è un blocco assembly,viene chiamato inline assembly
	//	mov ebx,b //è corretta perché i puntatori sono a parallelismo con larchitettura,quindi sono a 32 bit
	//	mov ecx,[ebx+3]
	//	add ecx,-32
	//	mov [ebx+3],ecx
	//}
	/*int a;
	int* b;
	int c[5] = { 1,2,3,4,5 }; 
	b = &c[0];
	__asm {
	ris: mov ecx, 0;
		mov ebx, b;
		add ecx, [ebx];
		add ecx, [ebx + 4];
		add ecx, [ebx + 8];
		mov a, ecx;
	}
	printf("%d", a);*/

	//maggiore 
	/*int a, b, c;
	a = 3;
	b = 9;
	__asm {
		mov eax, a
		mov ebx, b
		cmp eax, ebx
		jg block1
		mov c, ebx
		jmp fine
		
		block1 : mov c, eax
		jmp fine

		fine:
	}
	printf("Il maggiore +%d", c);*/

	/*int a[10] = { 1,2,3};
	int* p;
	p = &a[0];
	int c = 0;
	__asm {
		mov ebx, p
		mov ecx,0
		mov esi, 0;
	block1: cmp esi,3
			je fine
			add ecx,dword ptr[ebx+(esi*4)]
			inc esi
			jmp block1
	fine:	mov c,ecx
	}
	printf("somma di tutti gli elementi del vettore %d", c);*/

	char s[256] = { "la parola cringe non esiste dc brutto" };
	int c;
	char* p;
	p = &s[0];
	__asm {
	mov eax,p
	mov esi, 0;
	block1: cmp byte ptr[eax + esi],0
			je fine
			inc esi
			jmp block1
	fine:	mov c, esi
	}
	printf("%d", c);
}