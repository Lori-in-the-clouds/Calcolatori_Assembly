#include <stdio.h>
int sommastringa(char* t);
_declspec(naked) void sommastringa2(char* t,int *ris) {
	__asm {
		//parte iniziale
		push ebp
		mov ebp,esp
		push esi
		push edi
		push ebx
		push ecx
		//corpo della funzione 
		mov ebx,dword ptr[ebp+8]
		mov eax,dword ptr[ebp+12] //eax è il nuovo punatore 
		mov esi,0
		ciclo:
		cmp [ebx+esi],0
		je fine
		inc esi
		jmp ciclo

		fine:
		mov [eax],esi


		//parte finale 
		pop ecx
		pop ebx
		pop edi
		pop esi 
		mov esp,ebp
		pop ebp
		ret
	}
}
_declspec(naked) int sommastringa(char *t) {
	__asm {
		//parte iniziale
		push ebp
		mov ebp,esp
		push esi
		push edi
		push ebx
		//corpo della funzione 
		mov esi,0
		mov ebx,dword ptr[ebp+8] //ebx è il mio nuovo puntatore ad char *t

		ciclo:
		mov cl,byte ptr[ebx+esi]
		cmp cl,0
		je fine
		inc esi
		jmp ciclo

		fine:
		mov eax,esi
		//parte finale
		pop ebx
		pop edi
		pop esi
		mov esp,ebp
		pop ebp
		ret
	}
}

int main(void) {
	char str[255] = { "ciao" };
	int ris = 0;
	sommastringa2(str, &ris);
	//printf("%d",sommastringa(str));
	return 0;
}

