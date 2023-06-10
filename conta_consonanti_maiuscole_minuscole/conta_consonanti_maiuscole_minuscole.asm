.586
.model flat
.code 

_conta_consonanti_maiuscole_minuscole proc
push ebp
mov ebp,esp
push esi 
push edi 
push ebx

mov ecx,dword ptr[ebp+12]
mov edx,dword ptr[ebp+16]
mov dword ptr[ecx],0
mov dword ptr[edx],0
mov ebx,dword ptr[ebp+8]
mov esi,0

ciclo1:
cmp byte ptr[ebx+esi],0
je fine

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
cmp byte ptr[ebx+esi],'A'
je incrementa 
cmp byte ptr[ebx+esi],'E'
je incrementa 
cmp byte ptr[ebx+esi],'I'
je incrementa 
cmp byte ptr[ebx+esi],'O'
je incrementa 
cmp byte ptr[ebx+esi],'U'
je incrementa 

cmp byte ptr[ebx+esi],'a'
jna ritorno
cmp byte ptr[ebx+esi],'z'
jnl ritorno
jmp minuscola
ritorno:

cmp byte ptr[ebx+esi],'A'
jna ritorno1
cmp byte ptr[ebx+esi],'Z'
jnl ritorno1
jmp maiuscola

ritorno1:
inc esi
jmp ciclo1

incrementa:
inc esi 
jmp ciclo1

minuscola:
mov edi,dword ptr[edx]
inc edi
mov dword ptr[edx],edi
jmp ritorno1

maiuscola:
mov edi,dword ptr[ecx]
inc edi
mov dword ptr[ecx],edi
jmp ritorno1

fine:
mov eax,0
pop ebx
pop edi 
pop esi 
mov esp,ebp
pop ebp
ret
_conta_consonanti_maiuscole_minuscole endp
end