#include <stdio.h>
#include <stdlib.h>
//CALCOLARE IL PRODOTTO TRA DUE NUMERI SIGNED 
//int main(void) {
//	int a = -5;
//	int b = 3;
//	int c = 0;
//	__asm {
//		mov esi, 0
//		mov edx, 0
//		mov ecx, 0
//		mov eax, a
//		cmp eax, 0
//		jge continua1
//		neg eax
//		inc edx
//		continua1:
//		mov ebx, b
//		cmp ebx, 0
//		jge continua2
//		neg ebx
//		inc edx
//		continua2:
//		cmp esi,ebx
//		je negazione
//		add ecx,eax
//		inc esi
//		jmp continua2
//		negazione: 
//		cmp edx,1
//		jne fine 
//		neg ecx
//		fine: 
//		mov c,ecx
//	}
//}


//CALCOLARE LA SOMMA DEGLI ELEMENTI DI UN VETTORE(SIGNED/UNSIGNED)
//int main(void) {
//	int a[] = { 1,-2,3,4,5 };
//	int* p;
//	int c = 0;
//	p = &a[0];
//	__asm{
//		mov eax,p
//		mov esi,0
//		mov ecx,c
//		blocco1:
//		cmp esi,5
//		je fine
//		add ecx,dword ptr [eax+(4*esi)]
//		inc esi
//		jmp blocco1
//		fine: 
//		mov c,ecx
//	}

//CALCOLARE LA SOMMA DEGLI ELEMENTI DI UN VETTORE SIGNED TALI PER CUI OGNI ELEMENTO SIA MINORE DELLA SOMMA DI TUTTI GLI ELEMENTI DEL VETTORE 
//int main(void) {
//
//	int a[] = { 12,-2,-3,-4,5 };
//	int* p;
//	int c = 0;
//	p = &a[0];
//	__asm {
//		mov eax, p
//		mov esi, 0
//		mov ecx, 0
//		mov ebx, 0
//		mov edx,0
//		blocco1 :
//		cmp esi, 5
//		je finesomma
//		add ecx, dword ptr[eax + (4 * esi)]
//		inc esi
//		jmp blocco1
//		
//		finesomma: cmp esi,0
//		je controllo
//		dec esi
//		jmp finesomma
//
//		controllo: cmp esi, 5
//		je fine 
//		cmp [eax + (4 * esi)],ecx
//		jle facciamolo
//		inc esi
//		jmp controllo
//		facciamolo:
//    	add edx,dword ptr[eax + (4 * esi)]
//		inc esi
//		jmp controllo
//		
//		fine: 
//		mov c,edx
//	}
//}

//CALCOLARE MIN E MAX DEGLI ELEMENTI DI UN VETTORE UNSIGNED 
//int main(void) {
//	int a[] = { 2,4,5,3,6 };
//	int* p;
//	p = &a[0];
//	int max = 0;
//	int min = 0;
//	__asm{
//		mov ebx,p
//		mov ecx,[ebx]
//		mov edx,[ebx]
//
//		mov esi,0
//		blocco1: cmp esi,5
//		je fine
//		cmp [ebx+(esi*4)],ecx
//		jg inseriscimax
//		cmp [ebx+(esi*4)],edx
//		jl inseriscimin
//		inc esi
//		jmp blocco1
//
//		inseriscimax: mov ecx,[ebx+(esi*4)]
//		jmp blocco1
//		inseriscimin: mov edx,[ebx + (esi*4)]
//		jmp blocco1
//		fine:
//		mov max,ecx
//		mov min,edx
//	}
//}

//CONTARE IL NUMERO DI VOCALI DI UNA STRINGA 
//int main(void) {
//	char v[] = "Aca";
//	char* p;
//	p = &v[0];
//	int c = 0;
//	__asm {
//		mov eax, 0
//		mov ebx,p
//		mov esi,0
//		mov ecx,0
//		blocco1: cmp byte ptr[ebx+(esi)],0
//		je fine
//		cmp byte ptr[ebx+(esi)],97
//		je aggiungi
//		cmp byte ptr[ebx + (esi)], 101
//		je aggiungi
//		cmp byte ptr[ebx + (esi)], 105
//		je aggiungi
//		cmp byte ptr[ebx + (esi)], 111
//		je aggiungi
//		cmp byte ptr[ebx + (esi)], 117
//		je aggiungi
//		cmp byte ptr[ebx + (esi)], 65
//		je aggiungi
//		cmp byte ptr[ebx + (esi)], 69
//		je aggiungi
//		cmp byte ptr[ebx + (esi)], 73
//		je aggiungi
//		cmp byte ptr[ebx + (esi)], 79
//		je aggiungi
//		cmp byte ptr[ebx + (esi)], 85
//		je aggiungi
//		inc esi
//		jmp blocco1
//		
//		aggiungi: inc ecx
//		inc esi
//		jmp blocco1
//
//		fine: 
//		mov c,ecx
//	}
//}

//CONTARE IL NUMERO DI CONSONANTI DI UNA STRINGA 
//int main(void) {
//	char v[] = "ciao";
//	char* p;
//	p = &v[0];
//	int c = 0;
//	__asm {
//		mov eax, 0
//		mov ebx,p
//		mov esi,0
//		mov ecx,0
//		mov edx,0
//		//contiamo quanti caratteri ci sono 
//		blocco0: cmp byte ptr[ebx+ecx],0
//		je parte2
//		inc ecx
//		jmp blocco0
//
//		parte2:
//		blocco1: cmp byte ptr[ebx+(esi)],0
//		je fine
//		cmp byte ptr[ebx+(esi)],97
//		je aggiungi
//		cmp byte ptr[ebx + (esi)], 101
//		je aggiungi
//		cmp byte ptr[ebx + (esi)], 105
//		je aggiungi
//		cmp byte ptr[ebx + (esi)], 111
//		je aggiungi
//		cmp byte ptr[ebx + (esi)], 117
//		je aggiungi
//		cmp byte ptr[ebx + (esi)], 65
//		je aggiungi
//		cmp byte ptr[ebx + (esi)], 69
//		je aggiungi
//		cmp byte ptr[ebx + (esi)], 73
//		je aggiungi
//		cmp byte ptr[ebx + (esi)], 79
//		je aggiungi
//		cmp byte ptr[ebx + (esi)], 85
//		je aggiungi
//		inc esi
//		jmp blocco1
//		
//		aggiungi: dec ecx
//		inc esi
//		jmp blocco1
//		
//		fine:
//		mov c,ecx
//	}
//}

//CONVERTIRE LA STRINGA DA MINUSCOLA A MAIUSCOLA/VICEVERSA
//int main(void) {
//	char v[] = { "ciao MAMMA" };
//	char* p;
//	p = &v[0];
//	__asm {
//		mov esi,0
//		mov ebx,p
//		blocco1: cmp byte ptr[ebx+esi],0
//		je fine
//		cmp byte ptr[ebx + esi],32
//		je spazio
//		cmp byte ptr[ebx + esi],97
//		jge maiuscola
//		cmp byte ptr[ebx + esi],90
//		jle minuscola
//		inc esi
//		jmp blocco1
//
//		maiuscola: add byte ptr[ebx+esi],-32
//		inc esi
//		jmp blocco1
//
//		minuscola: add byte ptr[ebx+esi],32
//		inc esi
//		jmp blocco1
//		
//		spazio: inc esi
//		jmp blocco1
//		fine:
//	}
//}

//CERCARE UNA PAROLA IN UNA STRINGA E RESTITUIRE GLI INDICI DELLA PAROLA 
//int main(void) {
//	char v[] = { "mamma ciao" };
//	char str[] = { "ciao" };
//	char* p1;
//	char* p2;
//	int c = 0;
//	p1 = &v[0];
//	p2 = &str[0];
//	__asm {
//	 mov ecx,p1
//	 mov edx,p2
//	 mov ah, byte ptr[edx]	//prima lettera della parola 
//	 mov bh, byte ptr[ecx] // prima lettera della frase 
//	 mov esi,0
//	 mov edi,0
//
//	 find:
//	 cmp bh,0
//	 je fine
//	 cmp bh,ah
//	 je ciclo0
//
//	 inc esi
//	 mov bh,byte ptr[ecx + esi]
//	 jmp find
//		 
//	 ciclo0:
//	 mov c,esi
//	 jmp ciclo1
//
//	 ciclo1:
//	 cmp ah, 0
//	 je fine
//	 cmp bh,ah
//	 jne find
//	 
//
//	 inc esi
//	 inc edi 
//	 mov bh,byte ptr[ecx+esi]
//	 mov ah, byte ptr[edx + edi]
//	 jmp ciclo1
//
//	fine:
//	
//	}
//}

//STACK 
//int somma(int a,int b);
//int main(void) {
//	int a, b;
//	a = 5;
//	b = 7;
//	printf("la somma � %d,somma(a,b)",a);
//	getchar();
//}
//
//__declspec(naked) int somma(int a, int b) {//dici al compilatore che non deve fare nulla in questa funzione 
//	__asm {
//		push ebp
//		mov ebp, esp
//		push ebx
//		push esi
//		push edi
//		//faccio la somma 
//		mov eax, dword ptr[ebp + 8]
//		add eax, dword ptr[ebp + 12]
//
//		//conclusione 
//		pop edi
//		pop esi
//		pop edx
//		mov esp, ebp
//		ret
//	}
//}

//SCAMBIARE DUE VARIABILI
//void swap(int* a, int * b);
//int main(void) {
//	int a = 5;
//	int b = 10;
//	swap(a, b);
//}
//__declspec(naked) void swap(int* a, int* b) {
//	__asm {
//		push ebp
//		mov ebp, esp
//		push ebx
//		push esi
//		push edi
//		
//		mov ebx,dword ptr[ebp+8]		//leggo la prima variabile
//		mov eax, dword ptr[ebx]			//valore di a
//		mov ebx,dword ptr[ebp +12]		//leggo la seconda variabile
//		mov ecx, dword ptr[ebx]			//valore di b
//
//		mov ebx,dword ptr[ebp +8]		//prendo l'indirizzo di dove erano state salvate a/b
//		mov dword ptr[ebx],ecx			//salvo il valore dal registro nella memoria(b)
//		mov ebx,dword ptr[ebp+12]
//		mov dword ptr[ebx],eax			//salvo il valore dal registro nella memoria(a)
//
//		pop edi
//		pop esi
//		pop edx
//		mov esp, ebp
//		ret
//	}
//}

//LUNGHEZZA DELLA STRINGA 
__declspec(naked) int strlun(char* s) {
	__asm {
		push ebp
		mov ebp, esp
		push ebx
		push esi
		push edi
		
		mov eax,0
		mov ebx,dword ptr[ebp +8]
		ciclo:
		cmp byte ptr[ebx+eax],0
		je fine
		inc eax
		jmp ciclo

		fine:

		
		//ctrl+k+d
		pop edi					//vanno disposti nell'ordine inverito, come se fossero dentro le pile 
		pop esi
		pop ebx
		pop edx
		mov esp, ebp
		pop ebp
		ret
	}
}
__declspec(naked) void toUpper(char* s) {
	__asm {
		push ebp
		mov ebp, esp
		push ebx
		push esi
		push edi
		
		//corpo
		mov eax, dword ptr[ebp + 8]
		mov esi,0
		ciclo:
		cmp byte ptr[eax + esi],0
		je fine

		cmp byte ptr[eax + esi], 'a'
		jae modifico
		inc esi
		jmp ciclo
	
		modifico: 
		add byte ptr[eax+esi],-32
		jmp ciclo

		fine:
		mov dword ptr[ebp+8],eax

		//parte finale
		pop edi					//vanno disposti nell'ordine inverito, come se fossero dentro le pile 
		pop esi
		pop ebx
		pop edx
		mov esp, ebp
		pop ebp
		ret
	}
}
int main(void) {
	char s[255] = "ciao";
	 toUpper(s);
}






