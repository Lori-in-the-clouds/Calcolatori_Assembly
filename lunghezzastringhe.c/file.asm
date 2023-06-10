.586
.model flat
.code

_sommastringa proc
;parte iniziale
		push ebp
		mov ebp,esp
		push esi
		push edi
		push ebx
		
		;voglio la lunghezza della stringa
		mov ebx, dword ptr[ebp + 8]
		call _lung
		mov edi, eax

		pop ebx
		pop edi
		pop esi
		mov esp,ebp
		pop ebp
		ret
_sommastringa endp

_lung proc
mov eax, 0

ciclo:	cmp byte ptr[ebx + eax], 0
		je fine
		inc esi
		jmp ciclo
fine:	;il risultato della stringa è già in eax
ret
_lung endp
end