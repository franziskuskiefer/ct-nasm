; Div timings
; Reading list for this:
;  * https://www-ssl.intel.com/content/dam/www/public/us/en/documents/white-papers/ia-32-ia-64-benchmark-code-execution-paper.pdf
;  * http://cs.lmu.edu/~ray/notes/nasmtutorial/
;  * http://www.nasm.us/doc/nasmdocb.html
;  * https://en.wikibooks.org/wiki/X86_Assembly/Other_Instructions

        global  main
        extern  strtoul
        extern  printf
        default rel

        section .text
main:
        push    rbx                     ; We have to align the stack.
        cmp     rdi, 4                  ; rdi holds number of command line arguments.
        jne     showUsage               ; Print an error message if we didn't get
                                        ; 3 arguments.
        dec     rdi                     ; Decrease counter.
        mov     r15, rdi                ; Store the number of real arguments
argHandle:
        push    rdi                     ; Calling a function will destroy our arguments
        push    rsi                     ; so let's store them.
        mov     rdi, [rsi+r15*8]        ; Set rdi to the i-th cmd line argument.
        xor     rsi, rsi
        xor     rdx, rdx
        call    strtoul                 ; Get the integer from the argument.
        mov     [it], rax               ; Store the first value.
        pop     rsi                     ; Restore registers.
        pop     rdi
        dec     r15                     ; Decrease counter.
        mov     rdi, [rsi+r15*8]        ; Set rdi to the i-th cmd line argument.
        push    rdi                     ; Calling a function will destroy our arguments
        push    rsi                     ; so let's store them.
        xor     rsi, rsi
        xor     rdx, rdx
        call    strtoul                 ; Get the integer from the argument.
        mov     [b], rax                ; Store the first value.
        pop     rsi                     ; Restore registers.
        pop     rdi
        dec     r15                     ; Decrease counter.
        mov     rdi, [rsi+r15*8]        ; Set rdi to the i-th cmd line argument.
        xor     rsi, rsi
        xor     rdx, rdx
        call    strtoul                 ; Get the integer from the argument.
        mov     [a], rax                ; Store the first value.
        push    rdi                     ; Calling a function will destroy our arguments
        push    rsi                     ; so let's store them.

        mov     rsi, [a]                ; print debug info
        mov     rdx, [b]
        mov     rcx, [it]
        lea     rdi, [debug]
        call    printf

        pop     rsi                     ; Restore registers.
        pop     rdi
        mov     r13d, [it]              ; The loop counter.
divide:
        cpuid                           ; Force serial execution of the following commands.
        rdtsc                           ; get cycles and store them
        mov     [cycleLow], eax
        mov     [cycleHigh], edx
        mov     rdx, 0                  ; The remainder has to be 0 for div to work.
        mov     rax, [a]
        mov     rcx, [b]
        div     rcx                     ; eax is now a/b
        mov     [result], rax           ; Store the result. We ignore rdx (remainder).
        cpuid
        rdtsc
        sub     eax, [cycleLow]         ; Compute used cycles, high and low
        sbb     edx, [cycleHigh]
        add     [low], eax              ; Sum up the used time.
        add     [high], edx

        dec     r13d
        jnz     divide                  ; Jump to divide as long as it is not 0
print:
        mov     rsi, [result]           ; Prepare for printf
        mov     rcx, rax
        lea     rdi, [format]
        call    printf
        jmp     done

showUsage:
        lea     rdi, [error]
        xor     rax, rax
        call    printf

done:
        pop     rbx
        ret

        section  .data
high:   dq      0
low:    dq      0
format: db      "%llu (high: %llu, low: %llu)", 10, 0
debug:  db      "Debug: %llu/%llu (%llux times)", 10, 0
error:  db      "Three arguments are required to compute a/b x times", 10, 0

        section .bss
cycleLow:       resd 1
cycleHigh:      resd 1
a:              resb 8
b:              resb 8
it:             resb 8
result:         resb 8