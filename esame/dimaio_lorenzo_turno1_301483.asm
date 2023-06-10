.586
.model flat 
.code 

_contaconsonanti proc
push ebp
mov ebp,esp
push esi
push edi 
push ebx

mov esi,0
mov ebx,dword ptr[ebp+8]
call _conta_ascii
mov eax,0
mov esi,0

;prima le minuscole
ciclo1:
cmp byte ptr[ebx+esi],0
je fine1
cmp byte ptr[ebx+esi],'a'
jl incrementa
cmp byte ptr[ebx+esi],'z'
ja incrementa
cmp byte ptr[ebx+esi],'a'
je incrementa
cmp byte ptr[ebx+esi],'e'
je incrementa
cmp byte ptr[ebx+esi],'i'
je incrementa
cmp byte ptr[ebx+esi],'o'
je incrementa
cmp byte ptr[ebx+esi],'u'
je incrementa
inc eax
inc esi
jmp ciclo1

incrementa:
inc esi
jmp ciclo1

;dopo le maiuscole
fine1:
mov esi,0
ciclo2:
cmp byte ptr[ebx+esi],0
je fine
cmp byte ptr[ebx+esi],'A'
jl incrementa2
cmp byte ptr[ebx+esi],'Z'
ja incrementa2
cmp byte ptr[ebx+esi],'A'
je incrementa2
cmp byte ptr[ebx+esi],'E'
je incrementa2
cmp byte ptr[ebx+esi],'I'
je incrementa2
cmp byte ptr[ebx+esi],'O'
je incrementa2
cmp byte ptr[ebx+esi],'U'
je incrementa2
inc eax
inc esi
jmp ciclo2

incrementa2:
inc esi
jmp ciclo2

fine:
pop ebx
pop edi 
pop esi
mov esp,ebp
pop ebp
ret
_contaconsonanti endp

_conta_ascii proc
push esi 
push ecx
mov esi,0
mov ecx,dword ptr[ebp+12]
mov dword ptr[ecx],0
ciclo1:
cmp byte ptr[ebx+esi],0
je fine
cmp byte ptr[ebx+esi],'a'
jl incrementa
cmp byte ptr[ebx+esi],'z'
ja incrementa
cmp byte ptr[ebx+esi],'a'
je incrementa
cmp byte ptr[ebx+esi],'e'
je incrementa
cmp byte ptr[ebx+esi],'i'
je incrementa
cmp byte ptr[ebx+esi],'o'
je incrementa
cmp byte ptr[ebx+esi],'u'
je incrementa

mov eax,0
mov al,byte ptr[ebx+esi]
add dword ptr[ecx],eax

inc esi
jmp ciclo1

incrementa:
inc esi
jmp ciclo1


fine:
pop ecx
pop esi
ret
_conta_ascii endp
end