.586
.model flat
.code 

_cerca_stringa proc
push ebp
mov ebp,esp
push edi
push esi 
push ebx

mov eax,0
mov edx,dword ptr[ebp+8] ;puntatore alla stringa
mov ebx,dword ptr[ebp+12] ;puntatore alla parola
mov cl,byte ptr[ebx] ;prima lettera della parola 
mov esi,0

ciclo1:
cmp byte ptr[edx+esi],0
je fine

cmp byte ptr[edx+esi],cl
je trovatalettera

inc esi 
jmp ciclo1

trovatalettera:
call _verifica
jmp ciclo1

fine:
mov ecx,eax ;3
call _lunghezza_parola
mov ebx,dword ptr[ebp+16]
mov esi,0

ciclo2:
cmp ecx,esi
je finefine
mov edx,dword ptr[ebx+esi*4]
sub edx,eax
mov dword ptr[ebx+esi*4],edx
inc esi 
jmp ciclo2

finefine:
mov eax,ecx

pop ebx
pop esi 
pop edi 
mov esp,ebp
pop ebp
ret
_cerca_stringa endp


_verifica proc 
push edi 
push ecx
mov edi,0
ciclo1:
mov cl,byte ptr[edx+esi]
cmp byte ptr[ebx+edi],0

je finitobene
cmp cl,0
je finitomale

cmp byte ptr[ebx+edi],cl
jne finitomale
inc esi
inc edi
jmp ciclo1

finitobene:
push ebx

mov ebx,dword ptr[ebp+16]
mov dword ptr[ebx+(eax*4)],esi

pop ebx
inc eax

finitomale:
pop ecx
pop edi 
ret
_verifica endp

_lunghezza_parola proc 
mov ebx,dword ptr[ebp+12]
mov esi,0
ciclo1:
cmp byte ptr[ebx+esi],0
je fine
inc esi 
jmp ciclo1

fine:
mov eax,esi
ret
_lunghezza_parola endp
end