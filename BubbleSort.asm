dosseg
.model small
.stack 100h
.data

listarray dw 1,4,3,2,9,8,7,6,0,5


.code
main proc

mov ax, @data
mov ds, ax
xor ax, ax

mov cx, 10

outerDigit:
mov bx, 0

innerComp:
mov ax, listarray + bx
cmp ax, listarray + bx + 2

jbe notequal

    mov dx, listarray + bx + 2
    mov listarray + bx + 2, ax
    mov listarray + bx, dx

notequal:
add bx, 2
cmp bx, 18
jne innerComp

loop outerDigit



mov cx, 10
mov bx, -2     ; using do while


print:
add bx, 2

mov dx, listarray + bx

add dx, 48
mov ah, 2
int 21h 

loop print


mov ah, 4ch
int 21h
main endp
end main