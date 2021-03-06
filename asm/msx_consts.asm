; msx_consts.asm

; MSX BIOS calls
; References:
;   map.grauw.nl/resources/msxbios.php
;   github.com/theNestruo/msx-msxlib
; Almost all constants are in alphabetical order

ASCII_BEL:     equ 0x7
ASCII_BS:      equ 0x8
ASCII_CR:      equ 0xd
ASCII_DEL:     equ 0x7f
ASCII_EOF:     equ 0x1a
ASCII_EOT:     equ 0x4
ASCII_ESC:     equ 0x1b
ASCII_HT:      equ 0x9
ASCII_LF:      equ 0xa
ASCII_NUL:     equ 0
ASCII_SUB:     equ 0x1a
ASCII_SYN:     equ 0x16
BAKCLR:        equ 0xf3ea
BDRCLR:        equ 0xf3eb
BEEP:          equ 0xc0
BIGFIL:        equ 0x16b
BOTTOM:        equ 0xfc48
BREAKX:        equ 0xb7
BUF:           equ 0xf55e
CALATR:        equ 0x87
CALBAS:        equ 0x159
CALLF:         equ 0x30
CALPAT:        equ 0x84
CALSLT:        equ 0x1c
CGTABL:        equ 0x4
CHGCAP:        equ 0x132
CHGCLR:        equ 0x62
CHGCPU:        equ 0x180
CHGET:         equ 0x9f
CHGMOD:        equ 0x5f
CHGSND:        equ 0x135
CHKNEW:        equ 0x165
CHKRAM:        equ 0
CHKSLZ:        equ 0x162
CHPUT:         equ 0xa2
CHRGTR:        equ 0x10
CHRTBL:        equ 0
CHRTBL_SIZE:   equ 0x800
CHSNS:         equ 0x9c
CKCNTC:        equ 0xbd
CLIKSW:        equ 0xf3db
CLRSPR:        equ 0x69
CLRTBL:        equ 0x2000
CLRTBL_SIZE:   equ 0x800
CLS:           equ 0xc3
CNVCHR:        equ 0xab
DCOMPR:        equ 0x20
DISSCR:        equ 0x41
DOWNC:         equ 0x108
DSPFNK:        equ 0xcf
ENASCR:        equ 0x44
ENASLT:        equ 0x24
EOL:           equ 0x168
ERAFNK:        equ 0xcc
EXPTBL:        equ 0xfcc1
EXTROM:        equ 0x15f
FETCHC:        equ 0x114
FILVRM:        equ 0x56
FNKSB:         equ 0xc9
FORCLR:        equ 0xf3e9
FORMAT:        equ 0x147
GETCPU:        equ 0x183
GETVC2:        equ 0x153
GETVCP:        equ 0x150
GETYPR:        equ 0x28
GICINI:        equ 0x90
GRPPRT:        equ 0x8d
GSPSIZ:        equ 0x8a
GTASPC:        equ 0x126
GTPAD:         equ 0xdb
GTPDL:         equ 0xde
GTSTCK:        equ 0xd5
GTTRIG:        equ 0xd8
HIMEM:         equ 0xfc4a
HTIMI:         equ 0xfd9f
HKEYI:         equ 0xfd9a
HOOK_SIZE:     equ HTIMI - HKEYI
INIFNK:        equ 0x3e
INIGRP:        equ 0x72
INIMLT:        equ 0x75
INIT32:        equ 0x6f
INITIO:        equ 0x3b
INITXT:        equ 0x6c
INLIN:         equ 0xb1
INTCNT:        equ 0xfca2
INTFLG:        equ 0xfc9b
ISCNTC:        equ 0xba
ISFLIO:        equ 0x14a
JIFFY:         equ 0xfc9e
KEYINT:        equ 0x38
KILBUF:        equ 0x156
LDIRMV:        equ 0x59
LDIRVM:        equ 0x5c
LEFTC:         equ 0xff
LFTQ:          equ 0xf6
LINL32:        equ 0xf3af
LINL40:        equ 0xf3ae
LINLEN:        equ 0xf3b0
LPTOUT:        equ 0xa5
LPTSTT:        equ 0xa8
MAPXYC:        equ 0x111
MNROM:         equ 0xfcc1
MSXID1:        equ 0x2b
MSXID2:        equ 0x2c
MSXID3:        equ 0x2d
MSXID4:        equ 0x2e
MSXID5:        equ 0x2f
NAMTBL:        equ 0x1800
NAMTBL_SIZE:   equ 0x300
NEWKEY:        equ 0xfbe5
NMI:           equ 0x66
NRDVRM:        equ 0x174
NSETCX:        equ 0x123
NSETRD:        equ 0x16e
NSTWRT:        equ 0x171
NWRVRM:        equ 0x177
OLDKEY:        equ 0xfbda
OUTDLP:        equ 0x14d
OUTDO:         equ 0x18
PCMPLY:        equ 0x186
PCMREC:        equ 0x189
PHYDIO:        equ 0x144
PINLIN:        equ 0xae
PNTINI:        equ 0x129
POSIT:         equ 0xc6
PPI.A:         equ 0xa8
PPI.B:         equ 0xa9
PPI.C:         equ 0xaa
PPI.R:         equ 0xab
PUTQ:          equ 0xf9
QINLIN:        equ 0xb4
RDBTST:        equ 0x17a
RDPSG:         equ 0x96
RDSLT:         equ 0xc
RDVDP:         equ 0x13e
RDVRM:         equ 0x4a
READC:         equ 0x11d
RG0SAV:        equ 0xf3df
RG1SAV:        equ 0xf3e0
RG2SAV:        equ 0xf3e1
RG3SAV:        equ 0xf3e2
RG4SAV:        equ 0xf3e3
RG5SAV:        equ 0xf3e4
RG6SAV:        equ 0xf3e5
RG7SAV:        equ 0xf3e6
RIGHTC:        equ 0xfc
RSLREG:        equ 0x138
SCALXY:        equ 0x10e
SCANL:         equ 0x12f
SCANR:         equ 0x12c
SCNCNT:        equ 0xf3f6
SCR_HEIGHT:    equ 0x18
SCRMOD:        equ 0xfcaf
SCR_WIDTH:     equ 0x20
SETATR:        equ 0x11a
SETC:          equ 0x120
SETGRP:        equ 0x7e
SETMLT:        equ 0x81
SETRD:         equ 0x50
SETT32:        equ 0x7b
SETTXT:        equ 0x78
SETWRT:        equ 0x53
SLTTBL:        equ 0xfcc5
SNSMAT:        equ 0x141
SPAT_EC:       equ 0x80
SPAT_END:      equ 0xd0
SPAT_OB:       equ 0xd1
SPRATR:        equ 0x1b00
SPRATR_SIZE:   equ 0x80
SPRITE_HEIGHT: equ 0x10
SPRITE_WIDTH:  equ 0x10
SPRTBL:        equ 0x3800
SPRTBL_SIZE:   equ 0x800
STATFL:        equ 0xf3e7
STMOTR:        equ 0xf3
STOREC:        equ 0x117
STRTMS:        equ 0x99
SUBROM:        equ 0x15c
SYNCHR:        equ 0x8
TAPIN:         equ 0xe4
TAPIOF:        equ 0xe7
TAPION:        equ 0xe1
TAPOOF:        equ 0xf0
TAPOON:        equ 0xea
TAPOUT:        equ 0xed
TDOWNC:        equ 0x10b
TOTEXT:        equ 0xd2
TRGFLG:        equ 0xf3e8
TUPC:          equ 0x105
UPC:           equ 0x102
VDP_DR:        equ 0x6
VDP_DW:        equ 0x7
WRBTST:        equ 0x17d
WRSLT:         equ 0x14
WRTPSG:        equ 0x93
WRTVDP:        equ 0x47
WRTVRM:        equ 0x4d
WSLREG:        equ 0x13b
