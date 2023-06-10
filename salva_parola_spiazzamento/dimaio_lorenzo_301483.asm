.586
.model flat 
.code 

_salavaparolaspiazzamento proc 
push ebp
mov ebp,esp
push esi
push edi 
push ebx

mov ebx,dword ptr[ebp+8]
mov esi,0

ciclo1:
cmp byte ptr[ebx+esi],0
je fine
call _controlla_parola
cmp eax,0
je inseriscivuoto
jmp inserisciparola
ritorno:
inc esi
jmp ciclo1

inseriscivuoto:
push ebx
mov ebx,dword ptr[ebp+12]
mov dword ptr[ebx+esi],' '
pop ebx
jmp ritorno

inserisciparola:
push ebx
push ecx
push edi
mov ebx,dword ptr[ebp+12]
mov ecx,dword ptr[ebp+16]
mov edi,0
ciclo3:
mov dl,byte ptr[ecx+edi]
cmp dl,0
je return
mov byte ptr[ebx+esi],dl
inc esi
inc edi
jmp ciclo3

return:
pop edi
pop ecx
pop ebx
jmp ciclo1

fine:
mov eax,0
pop ebx
pop edi 
pop esi
mov esp,ebp
pop ebp
ret
_salavaparolaspiazzamento endp

_controlla_parola proc 
push esi 
push edi
mov edi,0
mov ecx,dword ptr[ebp+16]
ciclo1:
mov dl,byte ptr[ecx+edi]
cmp dl,0
je finitobene
cmp dl,byte ptr[ebx+esi]
jne finitomale
inc esi
inc edi
jmp ciclo1

finitobene:
mov dl,32
cmp byte ptr[ebx+esi],dl
ja finitomale

mov eax,1
jmp fine1
finitomale:
mov eax,0
jmp fine1

fine1:
pop edi
pop esi
ret
_controlla_parola endp
end

