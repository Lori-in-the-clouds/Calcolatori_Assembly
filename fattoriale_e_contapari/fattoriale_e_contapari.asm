.586
.model flat 
.code 

_fattoriale proc
push ebp
mov ebp,esp
push esi 
push edi 
push ebx

mov esi,dword ptr[ebp+8]
mov eax,dword ptr[ebp+8]

ciclo1:
cmp esi,1
je fine
dec esi
mul esi
jmp ciclo1
fine:
pop ebx
pop edi
pop edi 
mov esp,ebp
pop ebp
ret
_fattoriale endp



_contapari proc
push ebp
mov ebp,esp
push esi
push edi
push ebx

mov ebx,dword ptr[ebp + 8]
mov ecx,dword ptr[ebp + 12]
mov esi,0
mov edi,0


;mov eax,dword ptr[ebx]
mov edx,0

ciclo1:
cmp esi,dword ptr[ebp + 16]
je fine
mov eax,dword ptr[ebx+(4*esi)]
inc  esi
cdq

push ecx
mov ecx,2
idiv ecx
pop ecx

cmp edx,0
je trovatopari
jmp ciclo1

trovatopari:
push ebx
dec esi 
mov ebx,dword ptr[ebx+(4*esi)]
inc esi

mov [ecx+(edi*4)],ebx
inc edi
pop ebx

jmp ciclo1



fine:
mov eax,edi
pop ebx
pop edi 
pop esi 
mov esp,ebp
pop ebp
ret
_contapari endp

end