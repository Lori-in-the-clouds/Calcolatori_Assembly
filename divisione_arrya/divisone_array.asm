.586
.model flat 
.code 

_divisione_array proc 
push ebp
mov ebp,esp
push esi 
push edi 
push ebx

mov esi,0
mov edi,0
mov ebx,dword ptr[ebp+8]
mov ecx,dword ptr[ebp+12]
mov eax,0

ciclo1:
cmp esi,[ebp+16]
je fine
;facciamolo
mov eax,dword ptr[ebx+esi*4]
cdq
idiv ecx
mov dword ptr[ebx+esi*4],eax
mov edi,dword ptr[ebp+20]
mov dword ptr[edi+esi*4],edx
inc esi
jmp ciclo1

fine:
call _controllo1
pop ebx
pop edi
pop edi 
mov esp,ebp
pop ebp
ret
_divisione_array endp

_controllo1 proc
push ebx
push ecx
push esi

mov esi,0
mov ecx,dword ptr[ebp+16]
ciclo1:
cmp esi,ecx
je finebene
mov ebx,dword ptr[ebp+20]
mov edx,dword ptr[ebx+(esi*4)]
cmp edx,0
jne finitomale
inc esi
jmp ciclo1

finebene:
mov eax,-1
finitomale:


pop esi
pop ecx
pop ebx
ret
_controllo1 endp

end