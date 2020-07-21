; msx_bas.asm - MSX BASIC template

BAS_AREA: equ 0x8000  ; Startup address
RAM_AREA: equ 0xc000  ; RAM area address

org BAS_AREA - 0x7

db 0xfe               ; MSX BASIC header
dw BAS_AREA           ; Program BEGIN address
dw END                ; Program END address
dw BAS_AREA           ; Function "main()" address

incbin 'main.bin'     ; Function "main()"

END:

; sdcc -mz80 --no-std-crt0 --data-loc 0xc000 --code-loc 0x8000 app.c
; sdobjcopy -S -I ihex -O binary app.ihx main.bin
; z80asm -i bas.asm -o app.bin
; - OR -
; pasmo bas.asm app.bin
