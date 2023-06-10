.586
.model flat 
.code 

_cerca_combinazioni_numero proc
push ebp
mov ebp,esp
push esi 
push edi 
push ebx

mov edx,dword ptr[ebp+16]
mov dword ptr[edx],0
mov dword ptr[edx+4],0
mov dword ptr[edx+8],0

mov ecx,dword ptr[ebp+12]
add cl,48
mov ebx,dword ptr[ebp+8]
mov esi,0

ciclo1:
cmp byte ptr[ebx+esi],0
je fine
cmp cl,byte ptr[ebx+esi]
jne ritorno
inc esi
cmp cl,byte ptr[ebx+esi]
je continua2
jmp incrementa1
ritorno:
inc esi 
jmp ciclo1

continua2:
cmp byte ptr[ebx+esi],0
je fine
inc esi
cmp byte ptr[ebx+esi],cl
je continua3
jne incrementa2

continua3:
cmp byte ptr[ebx+esi],0
je fine
cmp byte ptr[ebx+esi],cl
je incrementa3
jne ciclo1

incrementa1:
push ebx
mov ebx,dword ptr[ebp+16]
mov eax,dword ptr[ebx]
inc eax
mov dword ptr[ebx],eax
pop ebx
jmp ciclo1

incrementa2:
push ebx
mov ebx,dword ptr[ebp+16]
mov eax,dword ptr[ebx+4]
inc eax
mov dword ptr[ebx+4],eax
pop ebx
jmp ciclo1

incrementa3:
push ebx
inc esi
cmp byte ptr[ebx+esi],cl
je continua4

mov ebx,dword ptr[ebp+16]
mov eax,dword ptr[ebx+8]
inc eax
mov dword ptr[ebx+8],eax
pop ebx
;inc esi
jmp ciclo1

continua4:
ciclo2:
cmp byte ptr[ebx+esi],cl
jne ciclo1
inc esi
jmp ciclo2

fine:
mov eax,0
pop ebx
pop edi 
pop esi 
mov esp,ebp
pop ebp
ret
_cerca_combinazioni_numero endp
end

