.586
.model flat
.code 

_inverti_stringa proc
push ebp
mov ebp,esp
push esi
push edi 
push ebx

mov ebx,dword ptr[ebp+8]
mov esi,0
call _calcola_lunghezza
mov edi,eax ;edi = lunghezza parola
dec edi
ciclo1:
cmp esi,edi
jae fine
mov al,byte ptr[ebx+esi]
mov cl,byte ptr[ebx+edi]
mov byte ptr[ebx+esi],cl
mov byte ptr[ebx+edi],al
inc esi
dec edi
jmp ciclo1

fine:
pop ebx
pop edi 
pop esi
mov esp,ebp
pop ebp
ret
_inverti_stringa endp


_calcola_lunghezza proc
mov eax,0
mov esi,0
ciclo1:
mov esi,dword ptr[ebx+eax]
cmp esi,0
je fine
inc eax
jmp ciclo1

fine:
ret
_calcola_lunghezza endp

end