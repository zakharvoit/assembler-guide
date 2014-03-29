;;; Calculates sum of all numbers from [0 .. rdx]
;;; 	returns rax
sum:	
		;; Save rcx
		push rcx

		;; Standart way to assign zero
		xor rcx, rcx
		xor rax, rax
		.loop:
		add rax, rcx

		inc rcx
		cmp rcx, rdx
		jne .loop
		
		pop rcx
		ret
