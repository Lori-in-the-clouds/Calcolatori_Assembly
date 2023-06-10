.586
.model flat
.code 

_concatena_stringhe proc
push ebp
mov ebp,esp
push esi 
push edi 
push ebx

mov esi,0
mov eax,dword ptr[ebp+8]
mov ebx,dword ptr[ebp+12]
mov ecx,dword ptr[ebp+16]

ciclo1:
cmp byte ptr[eax+esi],0
je fase2
mov dl,byte ptr[eax+esi]
mov byte ptr[ecx+esi],dl
inc esi
jmp ciclo1

fase2:
mov edi,0
ciclo2:
cmp byte ptr[ebx+edi],0
je fine
mov dl,byte ptr[ebx+edi]
mov byte ptr[ecx+esi],dl
inc esi
inc edi
jmp ciclo2

fine:
mov byte ptr[ecx+esi],0
call _maiuscola_consonanti
mov eax,0
pop ebx
pop edi 
pop esi
mov esp,ebp
pop ebp
ret
_concatena_stringhe endp

_maiuscola_consonanti proc

mov esi,0
ciclo1:
cmp byte ptr[ecx+esi],0
je fine 
cmp byte ptr[ecx+esi],'a'
jl incrementa
cmp byte ptr[ecx+esi],'z'
ja incrementa
cmp byte ptr[ecx+esi],'a'
je incrementa
cmp byte ptr[ecx+esi],'e'
je incrementa
cmp byte ptr[ecx+esi],'i'
je incrementa
cmp byte ptr[ecx+esi],'o'
je incrementa
cmp byte ptr[ecx+esi],'u'
je incrementa
mov dl,byte ptr[ecx+esi]
sub dl,32
mov byte ptr[ecx+esi],dl
inc esi
jmp ciclo1

incrementa:
inc esi 
jmp ciclo1

fine:
ret
_maiuscola_consonanti endp
end