.586
.model flat
.code 

_gaus proc
 push ebp
 mov ebp,esp
 push ebx
 push edi
 push esi 
 
 mov ecx, dword ptr[ebp+8]
 mov esi,0
 mov edx,0 ;somma qui 

	ciclo_somma:
	cmp esi,dword ptr[ebp+esi*4]
	je fineciclo
	add edx,dword ptr[ecx+esi*4]

	fineciclo:
	mov eax,edx
	mov ebx,10
	CDQ
	IDIV ebx

	mov edx, dword ptr[ebp+16]
	mov ecx, dword ptr[edx]


 pop esi
 pop edi 
 pop ebx
 mov esp, ebp
 pop ebp
 ret 

_gaus endp
end