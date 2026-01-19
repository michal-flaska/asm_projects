; https://youtu.be/xyCQ8O9bRXU

; original code:

; global _main
; extern _printf
; section .text
;
; _main:
;         push message
;         call _printf
;         add esp,4
;         ret
;
; message:
;         db 'Hello World', 0

; --------------------------------------------------------------------

; building for x64:
; ```powershell
; nasm -f win64 main.asm -o main.obj
; link main.obj /subsystem:console /entry:main /defaultlib:msvcrt.lib
; ```

; ---

; building for x32:
; ```powershell
; nasm -f win32 main.asm -o main.obj
; link main.obj /subsystem:console /entry:_main /defaultlib:msvcrt.lib
; ```

; --------------------------------------------------------------------

; 32bit win11 - my version

global _main
extern _printf

section .data
        message: db 'Hello World', 0

section .text
_main:
        push message
        call _printf
        add esp, 4
        xor eax, eax
        ret

; --------------------------------------------------------------------

; 64bit win11 -my version

; global main
; extern printf
;
; section .data
;     message: db 'Hello World', 0
;
; section .text
; main:
;     sub rsp, 28h        ; shadow space
;     lea rcx, [message]  ; first arg in RCX
;     call printf
;     add rsp, 28h
;     xor eax, eax        ; return 0
;     ret