.586
.model flat
.code 

_somma_modulo proc
push ebp
mov ebp,esp
push esi 
push edi 
push ebx

;edi = somma vettore 
mov eax,0
mov edi,0
mov ebx,dword ptr[ebp+8]
mov esi,0

ciclo1:
cmp esi,dword ptr[ebp+12]
je fine 
call _divisione
inc esi 
jmp ciclo1

fine:
mov eax,edi
call _controllo1
call _controllo2

pop ebx
pop edi 
pop esi 
mov esp,ebp
pop ebp
ret
_somma_modulo endp 

_divisione proc
push ecx
push ebx

mov edx,0
mov eax,dword ptr[ebx+(esi*4)]
mov ecx,dword ptr[ebp+20]
cdq 
idiv ecx
add edi,edx
mov ebx,dword ptr[ebp+16]
mov dword ptr[ebx+(esi*4)],edx

pop ebx
pop ecx
ret
_divisione endp

_controllo1 proc 
push esi 
push ebx
push ecx

mov esi,0
mov ebx,dword ptr[ebp+8]
mov ecx,dword ptr[ebp+20]
ciclo1:
mov edx,0
cmp esi,dword ptr[ebp+12]
je finitomale
mov eax,dword ptr[ebx+(esi*4)]
cdq
idiv ecx
cmp edx,0
je fine
inc esi


jmp ciclo1

finitomale:
mov eax,-2
jmp finefine
fine:
mov eax,edi
finefine:
pop ecx
pop ebx
pop esi
ret
_controllo1 endp 


_controllo2 proc 
push esi 
push ebx
push ecx

mov edi,eax
mov esi,0
mov ebx,dword ptr[ebp+8]
mov ecx,dword ptr[ebp+20]
ciclo1:
mov edx,0
cmp esi,dword ptr[ebp+12]
je finitomale
mov eax,dword ptr[ebx+(esi*4)]
cdq
idiv ecx
cmp edx,0
jne fine
inc esi
jmp ciclo1

finitomale:
mov eax,-1
jmp finefine
fine:
mov eax,edi
finefine:
pop ecx
pop ebx
pop esi
ret
_controllo2 endp 

end