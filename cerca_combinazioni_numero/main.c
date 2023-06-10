int cerca_combinazioni_numero(char* src, int num, int* vettori_num);
int main(void) {
	char str[255] = { "1 11 1111 11 111 111 111 111 111 111111111111 ciao mama mmma11 11 11 111 11111111111 23445667 1" };
	int s[3];
	int ret = cerca_combinazioni_numero(str, 1, s);
}
//.586
//.model flat
//.code
//
//_cerca_combinazioni_numero proc
//push ebp
//mov ebp, esp
//push esi
//push edi
//push ebx
//
//
//mov ebx, dword ptr[ebp + 8]
//mov esi, 0
//
//ciclo1:
//cmp byte ptr[ebx + esi], 0
//je fine
//mov ecx, dword ptr[ebp + 12]
//add cl, 48
//cmp cl, byte ptr[ebx + esi]
//je controlla
//ritorno :
//inc esi
//jmp ciclo1
//
//controlla :
//call _controlla1
//call _controlla2
//call _controlla3
//jmp ritorno
//
//fine :
//pop ebx
//pop edi
//pop esi
//mov esp, ebp
//pop ebp
//ret
//_cerca_combinazioni_numero endp
//
//
//
//_controlla1 proc
//push ebx
//mov edx, 0
//
//ciclo1:
//inc esi
//cmp cl, byte ptr[ebx + esi]
//jne finitobene
//jmp fine
//
//
//finitobene :
//
//mov ebx, dword ptr[ebp + 16]
//mov edx, dword ptr[ebx]
//inc edx
//mov dword ptr[ebx], edx
//
//fine :
//dec esi
//pop ebx
//ret
//_controlla1 endp
//
//
//_controlla2 proc
//push ebx
//cmp cl, byte ptr[ebx + esi]
//jne fine0
//mov edx, 0
//
//ciclo1:
//inc esi
//cmp cl, byte ptr[ebx + esi]
//jne fine1
//inc esi
//cmp cl, byte ptr[ebx + esi]
//jne finitobene
//jmp fine2
//
//
//finitobene :
//push ebx
//mov ebx, dword ptr[ebp + 16]
//mov edx, dword ptr[ebx + 4]
//inc edx
//mov dword ptr[ebx + 4], edx
//pop ebx
//jmp fine0
//
//fine2 :
//sub esi, 2
//jmp fine0
//
//fine1 :
//dec esi
//jmp fine0
//fine0 :
//
//
//pop ebx
//ret
//_controlla2 endp
//
//
//
//_controlla3 proc
//push ebx
//cmp cl, byte ptr[ebx + esi]
//jne fine0
//mov edx, 0
//
//ciclo1:
//inc esi
//cmp cl, byte ptr[ebx + esi]
//jne fine1
//inc esi
//cmp cl, byte ptr[ebx + esi]
//jne fine2
//inc esi
//cmp cl, byte ptr[ebx + esi]
//je fine3
//jmp finitobene
//
//
//finitobene :
//mov ebx, dword ptr[ebp + 16]
//mov edx, dword ptr[ebx + 8]
//inc edx
//mov dword ptr[ebx + 8], edx
//jmp fine0
//
//fine1 :
//dec esi
//jmp fine0
//
//fine2 :
//sub esi, 2
//jmp fine0
//
//fine3 :
//ciclo3:
//cmp byte ptr[ebx + esi], cl
//jne fine0
//inc esi
//jmp ciclo3
//
//fine0 :
//pop ebx
//ret
//_controlla3 endp
//end