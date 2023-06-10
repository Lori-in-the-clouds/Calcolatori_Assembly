.586
.model flat
.code 

_fattoriale proc 
push ebp
mov ebp,esp
push esi 
push edi 
push ebx

mov ebx,dword ptr[ebp+8]
mov eax,1
mov esi,2

ciclo1:
cmp esi,ebx
ja fine
imul esi
inc esi
jmp ciclo1

fine:
pop ebx
pop edi 
pop esi 
mov esp,ebp
pop ebp
ret
_fattoriale endp

_conta_pari proc 
push ebp
mov ebp,esp
push esi 
push edi 
push ebx
;su edi ci mettiamo il risultato
mov ebx,dword ptr[ebp+8]
mov ecx,2
mov esi,0
mov edi,0

ciclo1:
mov edx,0
cmp esi,dword ptr[ebp+12]
je fine
mov eax,dword ptr[ebx+(esi*4)]
idiv ecx
cmp edx,0
je incrementa
ritorno:
inc esi
jmp ciclo1

incrementa:
push ecx
push eax

mov eax,dword ptr[ebx+(esi*4)]
mov ecx,dword ptr[ebp+16]
mov dword ptr[ecx+(edi*4)],eax
pop eax
pop ecx
inc edi 
jmp ritorno

fine:
mov eax,edi
pop ebx
pop edi 
pop esi 
mov esp,ebp
pop ebp
ret
_conta_pari endp 
end 