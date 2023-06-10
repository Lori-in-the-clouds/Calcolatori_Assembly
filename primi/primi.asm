.586
.model flat
.code 
_numeri_primi proc 
push ebp
mov ebp,esp
push edx
push esi 
push edi

mov esi,0
mov edx,0 ;tiene traccia della posizione nel vettore 
mov ebx,dword ptr[ebp+8]
mov edi,dword ptr[ebp+16]

ciclo1:
cmp esi,edi
je fine
call _controllaprimo
cmp eax,1
je aggiungi
ritorno:
inc esi
jmp ciclo1

aggiungi:
call _aggiungi
jmp ritorno

fine2:
mov eax,-3
jmp arrivo

fine3:
mov eax,-2
jmp arrivo

fine:
mov eax,edx
cmp edx,edi
je fine2
cmp edx,0
je fine3
arrivo:


pop edi 
pop esi 
pop edx 
mov esp,ebp
pop ebp
ret
_numeri_primi endp

_aggiungi proc
push ecx
push edi
push ebx

mov eax,0
mov al,byte ptr[ebx+esi]
mov ebx,dword ptr[ebp+12]
mov [ebx+edx],al
inc edx

pop ebx
pop edi
pop ecx
ret
_aggiungi endp


_controllaprimo proc
push edi 
push ecx
push edx
push esi

mov edi,2

ciclo1:
mov eax,0
mov al,byte ptr[ebx+esi] ;attenzione 
;controlliamo se il numero è 1
cmp eax,1
je aggiungi

cmp edi,eax
je fine
cdq
div edi
cmp edx,0
je fine
inc edi
jmp ciclo1

aggiungi:
mov eax,1
jmp finefine

fine:
mov eax,0
mov al,byte ptr[ebx+esi] 
mov ecx,eax
mov eax,0
cmp ecx,edi
je  aggiungi

finefine:
pop esi
pop edx
pop ecx
pop edi 
ret
_controllaprimo endp
end