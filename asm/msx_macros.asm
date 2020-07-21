; msx_macros.asm

__gets:
  call INLIN
  ld (BUF - 0x2), hl
  ret

__puts:
  ld a, (hl)
  and a
  ret z
  call CHPUT
  inc hl
  jr __puts


macro color, fg, bg, bd
  ld a, fg
  ld (FORCLR), a
  ld a, bg
  ld (BAKCLR), a
  ld a, bd
  ld (BDRCLR), a
  call CHGCLR
endm

macro echo, string
  ld hl, string
  call __puts
endm

macro read
  call __gets
endm

macro width, ln
  ld a, ln
  ld (LINL40), a
  xor a
  call CHGMOD
endm
