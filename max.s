;;; Calculates maximum of rbx and rdx
;;; returns rax -- maximum
max:
		;; Command cmp compares two numbers
		cmp rbx, rdx			
		;; Command jl (Jump if Less) jumps to label
		;; if result of last command was "<"
		jl .less

		mov rax, rbx
		jmp .end

		;; It's definition of local label
		.less
		mov rax, rdx

		.end
		ret

