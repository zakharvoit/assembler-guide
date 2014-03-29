;;; Puts string to stdout
;;; 	rsi -- string
;;; 	rdx -- string size
putstr:
		push rax
		push rdi

		;; Rax should contain number of system
		;; function. 1 - system function sys_write
		mov rax, 1

		;; Function sys_write receives number of
		;; file stream to write.
		;; 0 -- stdin
		;; 1 -- stdout
		;; 2 -- stderr
		mov rdi, 1
		syscall

		pop rdi
		pop rax
		ret
