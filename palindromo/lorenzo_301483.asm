.586
.model flat 
.code 


_palindromo proc
push ebp 
mov ebp,esp
push esi 
push edi 
push ebx
mov ecx,0
mov esi,0
mov edx,0
mov ebx,dword ptr[ebp+8]
call _convertimaiuscolo
mov edi,eax
dec edi
ciclo1:
cmp esi,edi
je fine
ja fine
;facciamolo
mov cl,byte ptr[ebx+esi]
mov dl,byte ptr[ebx+edi]
cmp cl,dl
jne finitomale
inc esi 
dec edi
jmp ciclo1

finitomale:
mov eax,0
jmp finefine

fine:
mov eax,1
finefine:

pop ebx
pop edi 
pop esi 
mov esp,ebp
pop ebp
ret
_palindromo endp 



_convertimaiuscolo proc
push esi 

mov esi,0

ciclo1:
mov eax,0
mov al,byte ptr[ebx+esi]
cmp eax,0
je fine

;facciamolo
cmp al,97
jl incrementa
cmp al,122
ja incrementa
sub al,32
mov [ebx+esi],al
inc esi 
jmp ciclo1

incrementa:
inc esi
jmp ciclo1

fine:
mov eax,esi
pop esi 
ret
_convertimaiuscolo endp 

end 