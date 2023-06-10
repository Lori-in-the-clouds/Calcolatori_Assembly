.586
.model flat 
.code 

_gauss proc
push ebp
mov ebp,esp
push edx
push esi 
push edi 

mov ebx,dword ptr[ebp+8] ;puntatore al vettore
call _media1
mov ecx,eax
call _media2
sub ecx,eax
mov eax,ecx
pop edi 
pop esi 
pop edx
mov esp,ebp
pop ebp
ret
_gauss endp 


_media1 proc 
push edi 
push esi 
push ecx
 
 mov edi,0
 mov eax,0
 mov esi,0
 ciclo1:
 cmp esi,dword ptr[ebp + 12]
 je divisione
 mov ax,word ptr[ebx+(2*esi)]
 mov cx,ax
 imul cx
 add edi,eax
 inc esi
 jmp ciclo1

 divisione:
 mov eax,edi
 mov ecx,dword ptr[ebp + 12]
 cdq
 idiv ecx

 pop ecx
 pop esi 
 pop edi
 ret
_media1 endp 


_media2 proc 
push edi 
push esi 
push ecx
 
 mov edi,0
 mov eax,0
 mov esi,0
 ciclo1:
 cmp esi,dword ptr[ebp + 12]
 je divisione
 mov ax,word ptr[ebx+(2*esi)]
 add edi,eax
 inc esi
 jmp ciclo1

 divisione:
 mov eax,edi
 mov ecx,dword ptr[ebp + 12]
 cdq
 idiv ecx

 mov ecx,eax
 imul ecx
 pop ecx
 pop esi 
 pop edi
 ret
_media2 endp 
end 