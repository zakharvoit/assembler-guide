_start:	
		;; Allocate array on stack
		sub rsp, 128
		mov rdi, rsp
		mov rdx, 128
		call array
		
;;; Fills array by numbers [0 . n - 1]
;;; 	rdi -- array to fill
;;; 	rdx -- array size
array:	
		push rcx

		.loop:
		;; This command moves rcx to
		;; address rdi + rcx. Brackets
		;; means that operand is memory
		;; on this address. Expression in
		;; brackets can be [reg1 + x * reg2],
		;; where x = {1, 2, 4, 8}
		mov [rdi + rcx], rcx

		inc rcx
		cmp rcx, rdx
		jne .loop
		
		pop rcx
		ret
