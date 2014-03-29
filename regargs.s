;;; Multiply number by 2
;;; args: rax - number to multiply
foo:
		add rax, rax
		ret
    
bar:
		mov rcx, 10
		mov rax, rcx
		call foo 
		mov rcx, rax ; Now rcx = 20
