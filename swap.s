;;; Swaps rax and rbx registers
swap:	
		push rdx

		mov rdx, rax
		mov rax, rbx
		mov rbx, rdx

		pop rdx
		ret
