.586
.model flat 
.code 

_togli_dispari proc 
push ebp
mov ebp,esp
push edx
push edi 
push esi

mov eax,0
mov edx,0
mov esi,0
mov ecx,2
mov ebx,dword ptr[ebp+8]
mov edi,dword ptr[ebp+12]

ciclo1:
cmp esi,edi
je fine
mov al,byte ptr[ebx+esi]
mov edx,0
div ecx
cmp edx,1
je sostituiamo
ritorno:
inc esi
jmp ciclo1

sostituiamo:
call _sostituiamo
jmp ritorno

fine:
pop esi
pop edi 
pop edx
mov esp,ebp
pop ebp
ret
_togli_dispari endp

_sostituiamo proc
push edx
push edi
push esi 

dec esi 
mov al,byte ptr[ebx+esi]
div ecx
cmp edx,1
je fine
add esi,2
mov eax,0
mov al,byte ptr[ebx+esi]
div ecx
cmp edx,1
je fine

mov eax,0
mov edx,0
sub esi,2
mov al,byte ptr[ebx+esi]
add esi,2
mov dl,byte ptr[ebx+esi]

add al,dl
mov edx,0
div ecx

mov edx,0
mov edi,eax
div ecx

cmp edx,1
je aggiungi
jmp fine

aggiungi:
add edi,1

fine:
mov eax,edi
dec esi
mov [ebx+esi],al

pop esi
pop edi
pop edx
ret
_sostituiamo endp
end 