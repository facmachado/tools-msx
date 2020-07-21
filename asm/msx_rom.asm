; msx_rom.asm - MSX ROM template

ROM_SIZE: equ 0x2000                ; 0x2000 = 8 KB
ROM_AREA: equ 0x4000                ; Startup address
RAM_AREA: equ 0xc000                ; RAM area address

org ROM_AREA

dw 0x4241                           ; MSX ROM header "AB"
dw 0x4010                           ; Function "main()" address
ds 0xc, 0                           ; Fill up to 16 bytes with "0"s

incbin 'main.bin'                   ; Function "main()"

ds ROM_SIZE - ($ - ROM_AREA), 0xff  ; Fill up to ROM_SIZE with "1"s

; sdcc -mz80 --no-std-crt0 --data-loc 0xc000 --code-loc 0x4010 app.c
; sdobjcopy -S -I ihex -O binary app.ihx main.bin
; z80asm -i rom.asm -o app.rom
; - OR -
; pasmo rom.asm app.rom
