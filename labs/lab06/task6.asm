%include 'in_out.asm'
SECTION .data
msg: DB 'Выражение для вычисления (x^3)/2+1: ',0
msg2: DB 'Введите x: ',0
SECTION .bss
x: RESB 80
SECTION .text
GLOBAL _start
_start:
mov eax, msg
call sprintLF
mov eax, msg2
call sprintLF
mov ecx, x
mov edx, 80
call sread
mov eax, x
call atoi
push eax
mov ebx, eax
mul ebx
mov ebx, eax
pop eax
mul ebx
mov ebx, 2
div ebx
add eax, 1
call iprintLF
call quit
