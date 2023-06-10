.586
.model flat 
.code 

_assitoa proc 
push ebp
mov ebp,esp
push esi 
push edi 
push ebx

mov ecx,dword ptr[ebp+8]
mov ebx,dword ptr[ebp+16]
mov edx,dword ptr[ebp+12]

push esi 
controllo1:
cmp ecx,0
jne inizio
cmp edx,1
jne inizio
jmp fine2
pop esi



inizio:
call _calcololunghezza
mov eax,ecx
mov edi,esi
mov esi,0
mov ecx,10
;eax ha il numero 
;edi la lunghezza 
;ecx ha 10
;esi 0 o 1???
controllonegativo:
cmp edx,1
je segno
jne decrementa
jmp ciclo1

decrementa:
mov byte ptr[ebx+edi],0
dec edi
dec esi
jmp ciclo1

segno:
inc edi
mov byte ptr[ebx+edi],0
dec edi
mov byte ptr[ebx],45

ciclo1:
mov edx,0
cmp edi,esi
je fine
div ecx
mov byte ptr[ebx+edi],dl
dec edi
jmp ciclo1

fine:
mov eax,0
jmp finefine
fine2:
mov eax,-2
finefine:
pop ebx
pop edi 
pop esi 
mov esp,ebp
pop ebp
ret
_assitoa endp

_calcololunghezza proc
push ecx
push edi 
push edx
mov edi,10
mov eax,ecx
mov esi,0

ciclo1:
mov edx,0
inc esi 
div edi
cmp eax,0
je fine
jmp ciclo1

fine:
pop edx
pop edi 
pop ecx
ret
_calcololunghezza endp
end
