;;; Multiply number by 2
foo:	
		pop rax
		add rax, rax
		ret
    
asd:	
		mov rcx, 2
		push rcx
		call foo
		mov rcx, rax ; now rcx = 4
