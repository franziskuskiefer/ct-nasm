; Cache timings
; essentially from https://cryptojedi.org/peter/data/chesrump-20130822.pdf

        global  memaccess

        section .text
memaccess:
        and     rsi, 7          ; Do something that crypto could do
        shl     rsi, 3          ; on the second argument (secret)
        add     rsi, 4096
        xor     rax, rax        ; 0 rax and rbx
        xor     rbx, rbx
        mov     rcx, 1000000    ; Init loop counter
loop:
        mov     eax, [rdi]      ; Store value at our memory address (first arg)
        mov     rdx, rdi        ; Get address of memory + secret
        add     rdx, rsi
        mov     [rdx], rbx      ; Store value at memory + secret
        dec     rcx
        jg      loop

        ret