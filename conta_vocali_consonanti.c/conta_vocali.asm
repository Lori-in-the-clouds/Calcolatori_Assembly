.586
.model flat 
.code 

_conta_vocali_consonanti proc
push ebp
mov ebp,esp 
push esi 
push edi 
push ebx


mov ebx,dword ptr[ebp+8]
mov ecx,dword ptr[ebp+12]
mov dword ptr[ecx],0
mov edx,dword ptr[ebp+16]
mov dword ptr[edx],0
call _rendimaiuscolo
mov esi,0

ciclo1:
mov al,byte ptr[ebx+esi]
cmp al,0
je fine
cmp al,65
je incrementa_vocali
cmp al,69
je incrementa_vocali
cmp al,73
je incrementa_vocali
cmp al,79
je incrementa_vocali
cmp al,85
je incrementa_vocali

cmp al,65
jl andiamovia
cmp al,90
ja andiamovia

jmp incrementa_consonanti
inc esi
jmp ciclo1

andiamovia:
inc esi 
jmp ciclo1

incrementa_consonanti:
push ebx
mov ebx,dword ptr[edx]
inc ebx
mov dword ptr[edx],ebx
pop ebx
inc esi 
jmp ciclo1


incrementa_vocali:
push ebx
mov ebx,dword ptr[ecx]
inc bl
mov dword ptr[ecx],ebx
pop ebx
inc esi
jmp ciclo1

fine:
pop ebx
pop edi 
pop esi 
mov esp,esp 
pop ebp
ret
_conta_vocali_consonanti endp



_rendimaiuscolo proc
push esi
mov esi,0
ciclo1:
mov al,byte ptr[ebx+esi]
cmp al,0
je fine

cmp al,96
jna incrementa
cmp al,123
jnl incrementa
sub al,32
mov byte ptr[ebx+esi],al
inc esi
jmp ciclo1

incrementa:
inc esi
jmp ciclo1
fine:
pop esi
ret
_rendimaiuscolo endp 
end