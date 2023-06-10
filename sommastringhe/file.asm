.586
.model flat 
.code 
_sommastringhe proc
push ebp
mov ebp,esp 
push esi
push edi 
push ebx
push ecx
mov ebx,dword ptr[ebp+8]
call _ciao
mov edx,eax

mov ebx,dword ptr[ebp+12]
call _ciao
add edx,eax
mov eax,edx

pop ecx
pop ebx
pop edi
pop esi
mov esp,ebp
pop ebp
ret
_sommastringhe endp


_ciao proc
mov esi,0
ciclo:
cmp byte ptr[ebx+esi],0
je fine
inc esi
jmp ciclo
fine:
mov eax,esi
ret
_ciao endp
end



