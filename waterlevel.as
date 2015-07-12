opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 5239"

opt pagewidth 120

	opt lm

	processor	16F73
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 27 "C:\Users\jithin\Desktop\Projects\WaterLevel\main.c"
	psect config,class=CONFIG,delta=2 ;#
# 27 "C:\Users\jithin\Desktop\Projects\WaterLevel\main.c"
	dw 0x001 ;#
	FNCALL	_main,_Port_Init
	FNCALL	_main,_Timer_Init
	FNCALL	_main,_DoReset
	FNCALL	_main,_AutoMode
	FNCALL	_main,_ManualMode
	FNCALL	_main,__Delay
	FNCALL	_ManualMode,__Delay
	FNCALL	_DoReset,_Beep
	FNCALL	_Beep,__Delay
	FNROOT	_main
	FNCALL	intlevel1,__isr
	global	intlevel1
	FNROOT	intlevel1
	global	_BuzzerON_F
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\jithin\Desktop\Projects\WaterLevel\waterlevel.h"
	line	48

;initializer for _BuzzerON_F
	retlw	01h
	global	_BeepCnt
	global	_MOTOR_ON_F
	global	_ModeChange
	global	_count
	global	_BuzzerON
psect	nvBANK0,class=BANK0,space=1
global __pnvBANK0
__pnvBANK0:
_BuzzerON:
       ds      1

	global	_ERR_LED
_ERR_LED:
       ds      1

	global	_ONReset
_ONReset:
       ds      1

	global	_ADCON0
_ADCON0  equ     31
	global	_ADRES
_ADRES  equ     30
	global	_CCP1CON
_CCP1CON  equ     23
	global	_CCP2CON
_CCP2CON  equ     29
	global	_CCPR1H
_CCPR1H  equ     22
	global	_CCPR1L
_CCPR1L  equ     21
	global	_CCPR2H
_CCPR2H  equ     28
	global	_CCPR2L
_CCPR2L  equ     27
	global	_FSR
_FSR  equ     4
	global	_INDF
_INDF  equ     0
	global	_INTCON
_INTCON  equ     11
	global	_PCL
_PCL  equ     2
	global	_PCLATH
_PCLATH  equ     10
	global	_PIR1
_PIR1  equ     12
	global	_PIR2
_PIR2  equ     13
	global	_PORTA
_PORTA  equ     5
	global	_PORTB
_PORTB  equ     6
	global	_PORTC
_PORTC  equ     7
	global	_RCREG
_RCREG  equ     26
	global	_RCSTA
_RCSTA  equ     24
	global	_SSPBUF
_SSPBUF  equ     19
	global	_SSPCON
_SSPCON  equ     20
	global	_STATUS
_STATUS  equ     3
	global	_T1CON
_T1CON  equ     16
	global	_T2CON
_T2CON  equ     18
	global	_TMR0
_TMR0  equ     1
	global	_TMR1H
_TMR1H  equ     15
	global	_TMR1L
_TMR1L  equ     14
	global	_TMR2
_TMR2  equ     17
	global	_TXREG
_TXREG  equ     25
	global	_ADCS0
_ADCS0  equ     254
	global	_ADCS1
_ADCS1  equ     255
	global	_ADGO
_ADGO  equ     250
	global	_ADIF
_ADIF  equ     102
	global	_ADON
_ADON  equ     248
	global	_CARRY
_CARRY  equ     24
	global	_CCP1IF
_CCP1IF  equ     98
	global	_CCP1M0
_CCP1M0  equ     184
	global	_CCP1M1
_CCP1M1  equ     185
	global	_CCP1M2
_CCP1M2  equ     186
	global	_CCP1M3
_CCP1M3  equ     187
	global	_CCP1X
_CCP1X  equ     189
	global	_CCP1Y
_CCP1Y  equ     188
	global	_CCP2IF
_CCP2IF  equ     104
	global	_CCP2M0
_CCP2M0  equ     232
	global	_CCP2M1
_CCP2M1  equ     233
	global	_CCP2M2
_CCP2M2  equ     234
	global	_CCP2M3
_CCP2M3  equ     235
	global	_CCP2X
_CCP2X  equ     237
	global	_CCP2Y
_CCP2Y  equ     236
	global	_CHS0
_CHS0  equ     251
	global	_CHS1
_CHS1  equ     252
	global	_CHS2
_CHS2  equ     253
	global	_CKP
_CKP  equ     164
	global	_CREN
_CREN  equ     196
	global	_DC
_DC  equ     25
	global	_FERR
_FERR  equ     194
	global	_GIE
_GIE  equ     95
	global	_GODONE
_GODONE  equ     250
	global	_INTE
_INTE  equ     92
	global	_INTF
_INTF  equ     89
	global	_IRP
_IRP  equ     31
	global	_OERR
_OERR  equ     193
	global	_PD
_PD  equ     27
	global	_PEIE
_PEIE  equ     94
	global	_RA0
_RA0  equ     40
	global	_RA1
_RA1  equ     41
	global	_RA2
_RA2  equ     42
	global	_RA3
_RA3  equ     43
	global	_RA4
_RA4  equ     44
	global	_RA5
_RA5  equ     45
	global	_RB0
_RB0  equ     48
	global	_RB1
_RB1  equ     49
	global	_RB2
_RB2  equ     50
	global	_RB3
_RB3  equ     51
	global	_RB4
_RB4  equ     52
	global	_RB5
_RB5  equ     53
	global	_RB6
_RB6  equ     54
	global	_RB7
_RB7  equ     55
	global	_RBIE
_RBIE  equ     91
	global	_RBIF
_RBIF  equ     88
	global	_RC0
_RC0  equ     56
	global	_RC1
_RC1  equ     57
	global	_RC2
_RC2  equ     58
	global	_RC3
_RC3  equ     59
	global	_RC4
_RC4  equ     60
	global	_RC5
_RC5  equ     61
	global	_RC6
_RC6  equ     62
	global	_RC7
_RC7  equ     63
	global	_RCIF
_RCIF  equ     101
	global	_RP0
_RP0  equ     29
	global	_RP1
_RP1  equ     30
	global	_RX9
_RX9  equ     198
	global	_RX9D
_RX9D  equ     192
	global	_SPEN
_SPEN  equ     199
	global	_SREN
_SREN  equ     197
	global	_SSPEN
_SSPEN  equ     165
	global	_SSPIF
_SSPIF  equ     99
	global	_SSPM0
_SSPM0  equ     160
	global	_SSPM1
_SSPM1  equ     161
	global	_SSPM2
_SSPM2  equ     162
	global	_SSPM3
_SSPM3  equ     163
	global	_SSPOV
_SSPOV  equ     166
	global	_T0IE
_T0IE  equ     93
	global	_T0IF
_T0IF  equ     90
	global	_T1CKPS0
_T1CKPS0  equ     132
	global	_T1CKPS1
_T1CKPS1  equ     133
	global	_T1OSCEN
_T1OSCEN  equ     131
	global	_T1SYNC
_T1SYNC  equ     130
	global	_T2CKPS0
_T2CKPS0  equ     144
	global	_T2CKPS1
_T2CKPS1  equ     145
	global	_TMR0IE
_TMR0IE  equ     93
	global	_TMR0IF
_TMR0IF  equ     90
	global	_TMR1CS
_TMR1CS  equ     129
	global	_TMR1IF
_TMR1IF  equ     96
	global	_TMR1ON
_TMR1ON  equ     128
	global	_TMR2IF
_TMR2IF  equ     97
	global	_TMR2ON
_TMR2ON  equ     146
	global	_TO
_TO  equ     28
	global	_TOUTPS0
_TOUTPS0  equ     147
	global	_TOUTPS1
_TOUTPS1  equ     148
	global	_TOUTPS2
_TOUTPS2  equ     149
	global	_TOUTPS3
_TOUTPS3  equ     150
	global	_TXIF
_TXIF  equ     100
	global	_WCOL
_WCOL  equ     167
	global	_ZERO
_ZERO  equ     26
	global	_ADCON1
_ADCON1  equ     159
	global	_OPTION
_OPTION  equ     129
	global	_PCON
_PCON  equ     142
	global	_PIE1
_PIE1  equ     140
	global	_PIE2
_PIE2  equ     141
	global	_PR2
_PR2  equ     146
	global	_SPBRG
_SPBRG  equ     153
	global	_SSPADD
_SSPADD  equ     147
	global	_SSPSTAT
_SSPSTAT  equ     148
	global	_TRISA
_TRISA  equ     133
	global	_TRISB
_TRISB  equ     134
	global	_TRISC
_TRISC  equ     135
	global	_TXSTA
_TXSTA  equ     152
	global	_ADIE
_ADIE  equ     1126
	global	_BF
_BF  equ     1184
	global	_BOR
_BOR  equ     1136
	global	_BRGH
_BRGH  equ     1218
	global	_CCP1IE
_CCP1IE  equ     1122
	global	_CCP2IE
_CCP2IE  equ     1128
	global	_CKE
_CKE  equ     1190
	global	_CSRC
_CSRC  equ     1223
	global	_DA
_DA  equ     1189
	global	_INTEDG
_INTEDG  equ     1038
	global	_PCFG0
_PCFG0  equ     1272
	global	_PCFG1
_PCFG1  equ     1273
	global	_PCFG2
_PCFG2  equ     1274
	global	_POR
_POR  equ     1137
	global	_PS0
_PS0  equ     1032
	global	_PS1
_PS1  equ     1033
	global	_PS2
_PS2  equ     1034
	global	_PSA
_PSA  equ     1035
	global	_RBPU
_RBPU  equ     1039
	global	_RCIE
_RCIE  equ     1125
	global	_RW
_RW  equ     1186
	global	_SMP
_SMP  equ     1191
	global	_SSPIE
_SSPIE  equ     1123
	global	_START
_START  equ     1187
	global	_STOP
_STOP  equ     1188
	global	_SYNC
_SYNC  equ     1220
	global	_T0CS
_T0CS  equ     1037
	global	_T0SE
_T0SE  equ     1036
	global	_TMR1IE
_TMR1IE  equ     1120
	global	_TMR2IE
_TMR2IE  equ     1121
	global	_TRISA0
_TRISA0  equ     1064
	global	_TRISA1
_TRISA1  equ     1065
	global	_TRISA2
_TRISA2  equ     1066
	global	_TRISA3
_TRISA3  equ     1067
	global	_TRISA4
_TRISA4  equ     1068
	global	_TRISA5
_TRISA5  equ     1069
	global	_TRISB0
_TRISB0  equ     1072
	global	_TRISB1
_TRISB1  equ     1073
	global	_TRISB2
_TRISB2  equ     1074
	global	_TRISB3
_TRISB3  equ     1075
	global	_TRISB4
_TRISB4  equ     1076
	global	_TRISB5
_TRISB5  equ     1077
	global	_TRISB6
_TRISB6  equ     1078
	global	_TRISB7
_TRISB7  equ     1079
	global	_TRISC0
_TRISC0  equ     1080
	global	_TRISC1
_TRISC1  equ     1081
	global	_TRISC2
_TRISC2  equ     1082
	global	_TRISC3
_TRISC3  equ     1083
	global	_TRISC4
_TRISC4  equ     1084
	global	_TRISC5
_TRISC5  equ     1085
	global	_TRISC6
_TRISC6  equ     1086
	global	_TRISC7
_TRISC7  equ     1087
	global	_TRMT
_TRMT  equ     1217
	global	_TX9
_TX9  equ     1222
	global	_TX9D
_TX9D  equ     1216
	global	_TXEN
_TXEN  equ     1221
	global	_TXIE
_TXIE  equ     1124
	global	_UA
_UA  equ     1185
	global	_PMADR
_PMADR  equ     269
	global	_PMADRH
_PMADRH  equ     271
	global	_PMDATA
_PMDATA  equ     268
	global	_PMDATH
_PMDATH  equ     270
	global	_PMCON1
_PMCON1  equ     396
	global	_RD
_RD  equ     3168
	file	"waterlevel.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_BeepCnt:
       ds      1

_MOTOR_ON_F:
       ds      1

_ModeChange:
       ds      1

_count:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\jithin\Desktop\Projects\WaterLevel\waterlevel.h"
	line	48
_BuzzerON_F:
       ds      1

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initationation code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	??_DoReset
??_DoReset: ;@ 0x0
	global	??_ManualMode
??_ManualMode: ;@ 0x0
	global	??_Port_Init
??_Port_Init: ;@ 0x0
	global	??_Timer_Init
??_Timer_Init: ;@ 0x0
	global	??_main
??_main: ;@ 0x0
	global	??_AutoMode
??_AutoMode: ;@ 0x0
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_Timer_Init
?_Timer_Init: ;@ 0x0
	global	?_Port_Init
?_Port_Init: ;@ 0x0
	global	??__Delay
??__Delay: ;@ 0x0
	global	?_AutoMode
?_AutoMode: ;@ 0x0
	ds	1
	global	__Delay@i
__Delay@i:	; 2 bytes @ 0x1
	ds	2
	global	__Delay@j
__Delay@j:	; 2 bytes @ 0x3
	ds	2
	global	?__Delay
?__Delay: ;@ 0x5
	global	__Delay@delay_val
__Delay@delay_val:	; 2 bytes @ 0x5
	ds	2
	global	??_Beep
??_Beep: ;@ 0x7
	global	?_ManualMode
?_ManualMode: ;@ 0x7
	ds	1
	global	Beep@cnt
Beep@cnt:	; 1 bytes @ 0x8
	ds	1
	global	Beep@i
Beep@i:	; 1 bytes @ 0x9
	ds	1
	global	?_DoReset
?_DoReset: ;@ 0xA
	global	??__isr
??__isr: ;@ 0xA
	global	?_Beep
?_Beep: ;@ 0xA
	global	?_main
?_main: ;@ 0xA
	ds	5
	global	?__isr
?__isr: ;@ 0xF
;Data sizes: Strings 0, constant 0, data 1, bss 4, persistent 3 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON           0      0       0
; BANK0           94     15      23
; BANK1           94      0       0


;Pointer list with targets:



;Main: autosize = 0, tempsize = 0, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                0    0  140   0.00
;          _Port_Init
;         _Timer_Init
;            _DoReset
;           _AutoMode
;         _ManualMode
;             __Delay
;  _AutoMode                                          0    0    0   0.00
;  _ManualMode                                        0    0   40   0.00
;             __Delay
;  _DoReset                                           0    0   60   0.00
;               _Beep
;  _Timer_Init                                        0    0    0   0.00
;  _Port_Init                                         0    0    0   0.00
;    _Beep                                            3    0   60   0.00
;                                    7 BANK0    3
;             __Delay
;      __Delay                                        5    2   40   0.00
;                                    0 BANK0    7
; Estimated maximum call depth 3
;__isr                                                5    0    0   0.00
;                                   10 BANK0    5
; Estimated maximum call depth 0
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            0      0       0       0        0.0%
;CODE                 0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;COMMON               0      0       0       1        0.0%
;SFR0                 0      0       0       1        0.0%
;BITSFR0              0      0       0       1        0.0%
;BITSFR1              0      0       0       2        0.0%
;SFR1                 0      0       0       2        0.0%
;STACK                0      0       0       2        0.0%
;BITBANK0            5E      0       0       3        0.0%
;BANK0               5E      F      17       4       24.5%
;BITSFR3              0      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITBANK1            5E      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITSFR2              0      0       0       5        0.0%
;BANK1               5E      0       0       6        0.0%
;ABS                  0      0      17       7        0.0%
;DATA                 0      0      17       8        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 30 in file "C:\Users\jithin\Desktop\Projects\WaterLevel\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;                  2   10[BANK0 ] int 
; Registers used:
;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+0, btemp+1, btemp+2, btemp+3, pclath, cstack
; Tracked objects:
;		On entry : 17F/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_Port_Init
;		_Timer_Init
;		_DoReset
;		_AutoMode
;		_ManualMode
;		__Delay
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"C:\Users\jithin\Desktop\Projects\WaterLevel\main.c"
	line	30
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;main.c: 27: asm("\tpsect config,class=CONFIG,delta=2"); asm("\tdw ""0x001");
;main.c: 29: int main()
;main.c: 30: {
	
_main:	
	opt stack 7
; Regs used in _main: [allreg]
	line	32
	
l30000637:	
;main.c: 32: Port_Init();
	fcall	_Port_Init
	line	33
;main.c: 33: Timer_Init();
	fcall	_Timer_Init
	
l30000638:	
	line	34
;main.c: 34: DoReset();
	fcall	_DoReset
	
l30000639:	
	line	35
;main.c: 35: ModeChange = RC3;
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(59/8),(59)&7
	movlw	1
	movwf	(_ModeChange)
	
l30000640:	
	line	37
;main.c: 37: if (ModeChange != RC3) {
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(59/8),(59)&7
	movlw	1
	xorwf	(_ModeChange),w
	skipnz
	goto	u381
	goto	u380
u381:
	goto	l30000643
u380:
	
l30000641:	
	line	38
;main.c: 38: DoReset();
	fcall	_DoReset
	
l30000642:	
	line	39
;main.c: 39: ModeChange = RC3;
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(59/8),(59)&7
	movlw	1
	movwf	(_ModeChange)
	
l30000643:	
	line	41
;main.c: 40: }
;main.c: 41: if (RC3 = 1) {
	bsf	(59/8),(59)&7
	btfss	(59/8),(59)&7
	goto	u391
	goto	u390
u391:
	goto	l6
u390:
	
l30000644:	
	line	42
;main.c: 42: AutoMode();
	fcall	_AutoMode
	
l30000645:	
	line	43
;main.c: 43: MOTOR_ON_F = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_MOTOR_ON_F)
	goto	l7
	
l6:	
	line	44
	btfsc	(59/8),(59)&7
	goto	u401
	goto	u400
u401:
	goto	l7
u400:
	
l30000646:	
	line	45
;main.c: 45: ManualMode();
	fcall	_ManualMode
	
l7:	
	line	47
;main.c: 46: }
;main.c: 47: _Delay(5);
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?__Delay)
	movlw	high(05h)
	movwf	((?__Delay))+1
	fcall	__Delay
	goto	l30000640
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	50
	signat	_main,90
	global	_AutoMode
psect	text45,local,class=CODE,delta=2
global __ptext45
__ptext45:

; *************** function _AutoMode *****************
; Defined at:
;		line 75 in file "C:\Users\jithin\Desktop\Projects\WaterLevel\waterlevel.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		Nothing
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text45
	file	"C:\Users\jithin\Desktop\Projects\WaterLevel\waterlevel.c"
	line	75
	global	__size_of_AutoMode
	__size_of_AutoMode	equ	__end_of_AutoMode-_AutoMode
;waterlevel.c: 74: void AutoMode(void)
;waterlevel.c: 75: {
	
_AutoMode:	
	opt stack 6
; Regs used in _AutoMode: [wreg+status,2+status,0]
	line	77
	
l30000647:	
;waterlevel.c: 77: if (RC2 == 1) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(58/8),(58)&7
	goto	u411
	goto	u410
u411:
	goto	l28
u410:
	
l30000648:	
	line	78
;waterlevel.c: 78: ERR_LED = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_ERR_LED)
	line	79
;waterlevel.c: 79: BuzzerON = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_BuzzerON)
	
l30000649:	
	line	80
;waterlevel.c: 80: BuzzerON_F = 1;
	clrf	(_BuzzerON_F)
	bsf	status,0
	rlf	(_BuzzerON_F),f
	
l30000650:	
	line	81
;waterlevel.c: 81: if (RC0 == 0 && RC1 == 0) {
	btfsc	(56/8),(56)&7
	goto	u421
	goto	u420
u421:
	goto	l29
u420:
	
l30000651:	
	btfsc	(57/8),(57)&7
	goto	u431
	goto	u430
u431:
	goto	l29
u430:
	
l30000652:	
	line	82
;waterlevel.c: 82: RB4 = 1;
	bsf	(52/8),(52)&7
	line	83
;waterlevel.c: 83: RB0 = 1;
	bsf	(48/8),(48)&7
	goto	l27
	
l29:	
	line	84
	btfss	(56/8),(56)&7
	goto	u441
	goto	u440
u441:
	goto	l27
u440:
	
l30000653:	
	btfss	(57/8),(57)&7
	goto	u451
	goto	u450
u451:
	goto	l27
u450:
	
l30000654:	
	line	85
;waterlevel.c: 85: RB4 = 0;
	bcf	(52/8),(52)&7
	line	86
;waterlevel.c: 86: RB0 = 0;
	bcf	(48/8),(48)&7
	goto	l27
	
l28:	
	line	88
	btfsc	(58/8),(58)&7
	goto	u461
	goto	u460
u461:
	goto	l27
u460:
	
l30000655:	
	line	89
;waterlevel.c: 89: RB4 = 0;
	bcf	(52/8),(52)&7
	line	90
;waterlevel.c: 90: RB0 = 0;
	bcf	(48/8),(48)&7
	
l30000656:	
	line	91
;waterlevel.c: 91: ERR_LED = 1;
	clrf	(_ERR_LED)
	bsf	status,0
	rlf	(_ERR_LED),f
	goto	l30000658
	
l30000657:	
	line	94
;waterlevel.c: 94: BuzzerON_F = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_BuzzerON_F)
	
l30000658:	
	line	93
	btfsc	(60/8),(60)&7
	goto	u471
	goto	u470
u471:
	goto	l30000657
u470:
	
l30000659:	
	line	96
;waterlevel.c: 95: }
;waterlevel.c: 96: if(BuzzerON_F == 1)
	movf	(_BuzzerON_F),w
	xorlw	01h
	skipz
	goto	u481
	goto	u480
u481:
	goto	l30000661
u480:
	
l30000660:	
	line	97
;waterlevel.c: 97: BuzzerON = 1;
	clrf	(_BuzzerON)
	bsf	status,0
	rlf	(_BuzzerON),f
	goto	l27
	
l30000661:	
	line	99
;waterlevel.c: 98: else
;waterlevel.c: 99: BuzzerON = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_BuzzerON)
	
l27:	
	return
	opt stack 0
GLOBAL	__end_of_AutoMode
	__end_of_AutoMode:
; =============== function _AutoMode ends ============

psect	text46,local,class=CODE,delta=2
global __ptext46
__ptext46:
	line	101
	signat	_AutoMode,88
	global	_ManualMode

; *************** function _ManualMode *****************
; Defined at:
;		line 104 in file "C:\Users\jithin\Desktop\Projects\WaterLevel\waterlevel.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		__Delay
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text46
	file	"C:\Users\jithin\Desktop\Projects\WaterLevel\waterlevel.c"
	line	104
	global	__size_of_ManualMode
	__size_of_ManualMode	equ	__end_of_ManualMode-_ManualMode
;waterlevel.c: 103: void ManualMode(void)
;waterlevel.c: 104: {
	
_ManualMode:	
	opt stack 6
; Regs used in _ManualMode: [wreg+status,2+status,0+pclath+cstack]
	line	106
	
l30000612:	
;waterlevel.c: 106: if (RC2 == 1) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(58/8),(58)&7
	goto	u291
	goto	u290
u291:
	goto	l40
u290:
	
l30000613:	
	line	107
;waterlevel.c: 107: ERR_LED = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_ERR_LED)
	line	108
;waterlevel.c: 108: BuzzerON = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_BuzzerON)
	
l30000614:	
	line	109
;waterlevel.c: 109: BuzzerON_F = 1;
	clrf	(_BuzzerON_F)
	bsf	status,0
	rlf	(_BuzzerON_F),f
	goto	l30000619
	
l30000615:	
	line	111
;waterlevel.c: 111: BuzzerON = 1;
	clrf	(_BuzzerON)
	bsf	status,0
	rlf	(_BuzzerON),f
	
l30000616:	
	line	112
;waterlevel.c: 112: _Delay(15);
	movlw	low(0Fh)
	movwf	(?__Delay)
	movlw	high(0Fh)
	movwf	((?__Delay))+1
	fcall	__Delay
	
l30000617:	
	line	113
;waterlevel.c: 113: BuzzerON = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_BuzzerON)
	
l30000618:	
	line	114
;waterlevel.c: 114: MOTOR_ON_F = 1;
	clrf	(_MOTOR_ON_F)
	bsf	status,0
	rlf	(_MOTOR_ON_F),f
	
l30000619:	
	line	110
	btfsc	(60/8),(60)&7
	goto	u301
	goto	u300
u301:
	goto	l30000615
u300:
	
l30000620:	
	line	117
;waterlevel.c: 115: }
;waterlevel.c: 117: if (MOTOR_ON_F == 1 && RC1 == 0 ) {
	movf	(_MOTOR_ON_F),w
	xorlw	01h
	skipz
	goto	u311
	goto	u310
u311:
	goto	l30000623
u310:
	
l30000621:	
	btfsc	(57/8),(57)&7
	goto	u321
	goto	u320
u321:
	goto	l30000623
u320:
	
l30000622:	
	line	118
;waterlevel.c: 118: RB4 = 1;
	bsf	(52/8),(52)&7
	line	119
;waterlevel.c: 119: RB0 = 1;
	bsf	(48/8),(48)&7
	goto	l39
	
l30000623:	
	line	120
	movf	(_MOTOR_ON_F),w
	xorlw	01h
	skipz
	goto	u331
	goto	u330
u331:
	goto	l39
u330:
	
l30000624:	
	btfss	(57/8),(57)&7
	goto	u341
	goto	u340
u341:
	goto	l39
u340:
	
l30000625:	
	line	121
;waterlevel.c: 121: RB4 = 0;
	bcf	(52/8),(52)&7
	
l30000626:	
	line	122
;waterlevel.c: 122: MOTOR_ON_F = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_MOTOR_ON_F)
	
l30000627:	
	line	123
;waterlevel.c: 123: RB0 = 0;
	bcf	(48/8),(48)&7
	goto	l39
	
l40:	
	line	126
	btfsc	(58/8),(58)&7
	goto	u351
	goto	u350
u351:
	goto	l39
u350:
	
l30000628:	
	line	127
;waterlevel.c: 127: RB4 = 0;
	bcf	(52/8),(52)&7
	
l30000629:	
	line	128
;waterlevel.c: 128: MOTOR_ON_F = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_MOTOR_ON_F)
	
l30000630:	
	line	129
;waterlevel.c: 129: ERR_LED = 1;
	clrf	(_ERR_LED)
	bsf	status,0
	rlf	(_ERR_LED),f
	
l30000631:	
	line	130
;waterlevel.c: 130: RB0 = 0;
	bcf	(48/8),(48)&7
	goto	l30000633
	
l30000632:	
	line	133
;waterlevel.c: 133: BuzzerON_F = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_BuzzerON_F)
	
l30000633:	
	line	132
	btfsc	(60/8),(60)&7
	goto	u361
	goto	u360
u361:
	goto	l30000632
u360:
	
l30000634:	
	line	135
;waterlevel.c: 134: }
;waterlevel.c: 135: if(BuzzerON_F == 1)
	movf	(_BuzzerON_F),w
	xorlw	01h
	skipz
	goto	u371
	goto	u370
u371:
	goto	l30000636
u370:
	
l30000635:	
	line	136
;waterlevel.c: 136: BuzzerON = 1;
	clrf	(_BuzzerON)
	bsf	status,0
	rlf	(_BuzzerON),f
	goto	l39
	
l30000636:	
	line	138
;waterlevel.c: 137: else
;waterlevel.c: 138: BuzzerON = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_BuzzerON)
	
l39:	
	return
	opt stack 0
GLOBAL	__end_of_ManualMode
	__end_of_ManualMode:
; =============== function _ManualMode ends ============

psect	text47,local,class=CODE,delta=2
global __ptext47
__ptext47:
	line	140
	signat	_ManualMode,88
	global	_DoReset

; *************** function _DoReset *****************
; Defined at:
;		line 144 in file "C:\Users\jithin\Desktop\Projects\WaterLevel\waterlevel.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_Beep
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text47
	file	"C:\Users\jithin\Desktop\Projects\WaterLevel\waterlevel.c"
	line	144
	global	__size_of_DoReset
	__size_of_DoReset	equ	__end_of_DoReset-_DoReset
;waterlevel.c: 143: void DoReset(void)
;waterlevel.c: 144: { ONReset = 1;
	
_DoReset:	
	opt stack 6
; Regs used in _DoReset: [wreg+status,2+status,0+pclath+cstack]
	
l30000667:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_ONReset)
	bsf	status,0
	rlf	(_ONReset),f
	line	145
;waterlevel.c: 145: BuzzerON_F = 1;
	clrf	(_BuzzerON_F)
	bsf	status,0
	rlf	(_BuzzerON_F),f
	
l30000668:	
	line	146
;waterlevel.c: 146: RB4 = 0;
	bcf	(52/8),(52)&7
	
l30000669:	
	line	147
;waterlevel.c: 147: RB0 = 1;
	bsf	(48/8),(48)&7
	
l30000670:	
	line	148
;waterlevel.c: 148: RB1 = 1;
	bsf	(49/8),(49)&7
	line	149
;waterlevel.c: 149: ERR_LED = 1;
	clrf	(_ERR_LED)
	bsf	status,0
	rlf	(_ERR_LED),f
	
l30000671:	
	line	150
;waterlevel.c: 150: Beep(1);
	movlw	(01h)
	fcall	_Beep
	
l30000672:	
	line	151
;waterlevel.c: 151: RB0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	
l30000673:	
	line	152
;waterlevel.c: 152: RB1 = 0;
	bcf	(49/8),(49)&7
	
l30000674:	
	line	153
;waterlevel.c: 153: ERR_LED = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_ERR_LED)
	
l30000675:	
	line	154
;waterlevel.c: 154: BuzzerON_F = 1;
	clrf	(_BuzzerON_F)
	bsf	status,0
	rlf	(_BuzzerON_F),f
	
l30000676:	
	line	155
;waterlevel.c: 155: ONReset = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_ONReset)
	
l54:	
	return
	opt stack 0
GLOBAL	__end_of_DoReset
	__end_of_DoReset:
; =============== function _DoReset ends ============

psect	text48,local,class=CODE,delta=2
global __ptext48
__ptext48:
	line	157
	signat	_DoReset,88
	global	_Timer_Init

; *************** function _Timer_Init *****************
; Defined at:
;		line 54 in file "C:\Users\jithin\Desktop\Projects\WaterLevel\waterlevel.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		Nothing
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text48
	file	"C:\Users\jithin\Desktop\Projects\WaterLevel\waterlevel.c"
	line	54
	global	__size_of_Timer_Init
	__size_of_Timer_Init	equ	__end_of_Timer_Init-_Timer_Init
;waterlevel.c: 53: void Timer_Init()
;waterlevel.c: 54: {
	
_Timer_Init:	
	opt stack 6
; Regs used in _Timer_Init: [wreg]
	line	55
	
l30000664:	
;waterlevel.c: 55: OPTION = 0x05;
	movlw	(05h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h
	line	56
;waterlevel.c: 56: TMR0 = 6;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	
l30000665:	
	line	57
;waterlevel.c: 57: T0IE = 1;
	bsf	(93/8),(93)&7
	
l30000666:	
	line	58
;waterlevel.c: 58: GIE = 1;
	bsf	(95/8),(95)&7
	
l17:	
	return
	opt stack 0
GLOBAL	__end_of_Timer_Init
	__end_of_Timer_Init:
; =============== function _Timer_Init ends ============

psect	text49,local,class=CODE,delta=2
global __ptext49
__ptext49:
	line	59
	signat	_Timer_Init,88
	global	_Port_Init

; *************** function _Port_Init *****************
; Defined at:
;		line 69 in file "C:\Users\jithin\Desktop\Projects\WaterLevel\waterlevel.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		Nothing
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text49
	file	"C:\Users\jithin\Desktop\Projects\WaterLevel\waterlevel.c"
	line	69
	global	__size_of_Port_Init
	__size_of_Port_Init	equ	__end_of_Port_Init-_Port_Init
;waterlevel.c: 68: void Port_Init()
;waterlevel.c: 69: {
	
_Port_Init:	
	opt stack 6
; Regs used in _Port_Init: [wreg+status,2+status,0]
	line	70
	
l30000662:	
;waterlevel.c: 70: TRISB = 0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	
l30000663:	
	line	71
;waterlevel.c: 71: TRISC = 0x1F;
	movlw	(01Fh)
	movwf	(135)^080h	;volatile
	
l26:	
	return
	opt stack 0
GLOBAL	__end_of_Port_Init
	__end_of_Port_Init:
; =============== function _Port_Init ends ============

psect	text50,local,class=CODE,delta=2
global __ptext50
__ptext50:
	line	72
	signat	_Port_Init,88
	global	_Beep

; *************** function _Beep *****************
; Defined at:
;		line 160 in file "C:\Users\jithin\Desktop\Projects\WaterLevel\waterlevel.c"
; Parameters:    Size  Location     Type
;  cnt             1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  cnt             1    8[BANK0 ] unsigned char 
;  i               1    9[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       3       0
;      Temp:     1
;      Total:    3
; This function calls:
;		__Delay
; This function is called by:
;		_DoReset
; This function uses a non-reentrant model
; 
psect	text50
	file	"C:\Users\jithin\Desktop\Projects\WaterLevel\waterlevel.c"
	line	160
	global	__size_of_Beep
	__size_of_Beep	equ	__end_of_Beep-_Beep
;waterlevel.c: 159: void Beep(char cnt)
;waterlevel.c: 160: {
	
_Beep:	
	opt stack 5
; Regs used in _Beep: [wreg+status,2+status,0+pclath+cstack]
;Beep@cnt stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Beep@cnt)
	
l30000606:	
	line	161
;waterlevel.c: 161: char i = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(Beep@i)
	goto	l30000611
	
l30000607:	
	line	164
;waterlevel.c: 164: BuzzerON = 1;
	clrf	(_BuzzerON)
	bsf	status,0
	rlf	(_BuzzerON),f
	
l30000608:	
	line	165
;waterlevel.c: 165: _Delay(50);
	movlw	low(032h)
	movwf	(?__Delay)
	movlw	high(032h)
	movwf	((?__Delay))+1
	fcall	__Delay
	
l30000609:	
	line	166
;waterlevel.c: 166: BuzzerON = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_BuzzerON)
	
l30000610:	
	line	163
	movlw	(01h)
	movwf	(??_Beep+0+0)
	movf	(??_Beep+0+0),w
	addwf	(Beep@i),f
	
l30000611:	
	movf	(Beep@cnt),w
	subwf	(Beep@i),w
	skipc
	goto	u281
	goto	u280
u281:
	goto	l30000607
u280:
	
l55:	
	return
	opt stack 0
GLOBAL	__end_of_Beep
	__end_of_Beep:
; =============== function _Beep ends ============

psect	text51,local,class=CODE,delta=2
global __ptext51
__ptext51:
	line	168
	signat	_Beep,4216
	global	__Delay

; *************** function __Delay *****************
; Defined at:
;		line 62 in file "C:\Users\jithin\Desktop\Projects\WaterLevel\waterlevel.c"
; Parameters:    Size  Location     Type
;  delay_val       2    5[BANK0 ] int 
; Auto vars:     Size  Location     Type
;  j               2    3[BANK0 ] int 
;  i               2    1[BANK0 ] int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       7       0
;      Temp:     1
;      Total:    7
; This function calls:
;		Nothing
; This function is called by:
;		_main
;		_ManualMode
;		_Beep
; This function uses a non-reentrant model
; 
psect	text51
	file	"C:\Users\jithin\Desktop\Projects\WaterLevel\waterlevel.c"
	line	62
	global	__size_of__Delay
	__size_of__Delay	equ	__end_of__Delay-__Delay
;waterlevel.c: 61: void _Delay(int delay_val)
;waterlevel.c: 62: {
	
__Delay:	
	opt stack 4
; Regs used in __Delay: [wreg]
	line	64
	
l30000549:	
;waterlevel.c: 63: int i, j;
;waterlevel.c: 64: for(i = 0; i < delay_val; i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__Delay@i)
	movlw	high(0)
	movwf	((__Delay@i))+1
	goto	l22
	
l30000550:	
	line	65
;waterlevel.c: 65: for(j = 0;j < 1000; j++);
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__Delay@j)
	movlw	high(0)
	movwf	((__Delay@j))+1
	
l30000552:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(__Delay@j),f
	skipnc
	incf	(__Delay@j+1),f
	movlw	high(01h)
	addwf	(__Delay@j+1),f
	movf	(__Delay@j+1),w
	xorlw	80h
	movwf	(??__Delay+0+0)
	movlw	(high(03E8h))^80h
	subwf	(??__Delay+0+0),w
	skipz
	goto	u95
	movlw	low(03E8h)
	subwf	(__Delay@j),w
u95:

	skipc
	goto	u91
	goto	u90
u91:
	goto	l30000552
u90:
	
l30000553:	
	line	64
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(__Delay@i),f
	skipnc
	incf	(__Delay@i+1),f
	movlw	high(01h)
	addwf	(__Delay@i+1),f
	
l22:	
	movf	(__Delay@i+1),w
	xorlw	80h
	movwf	(??__Delay+0+0)
	movf	(__Delay@delay_val+1),w
	xorlw	80h
	subwf	(??__Delay+0+0),w
	skipz
	goto	u105
	movf	(__Delay@delay_val),w
	subwf	(__Delay@i),w
u105:

	skipc
	goto	u101
	goto	u100
u101:
	goto	l30000550
u100:
	
l18:	
	return
	opt stack 0
GLOBAL	__end_of__Delay
	__end_of__Delay:
; =============== function __Delay ends ============

psect	text52,local,class=CODE,delta=2
global __ptext52
__ptext52:
	line	66
	signat	__Delay,4216
	global	__isr

; *************** function __isr *****************
; Defined at:
;		line 28 in file "C:\Users\jithin\Desktop\Projects\WaterLevel\waterlevel.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       5       0
;      Temp:     5
;      Total:    5
; This function calls:
;		Nothing
; This function is called by:
;		Interrupt level 1
; This function uses a non-reentrant model
; 
psect	text52
	file	"C:\Users\jithin\Desktop\Projects\WaterLevel\waterlevel.c"
	line	28
	global	__size_of__isr
	__size_of__isr	equ	__end_of__isr-__isr
;waterlevel.c: 27: static void interrupt _isr(void)
;waterlevel.c: 28: {
	
__isr:	
	opt stack 5
; Regs used in __isr: [wreg+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+1
	movwf	saved_w
	movf	status,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__isr+1)
	movf	fsr0,w
	movwf	(??__isr+2)
	movf	pclath,w
	movwf	(??__isr+3)
	movf	btemp+0,w
	movwf	(??__isr+4)
	ljmp	__isr
psect	text52
	line	29
	
i1l30000534:	
;waterlevel.c: 29: if(count == 30) {
	movf	(_count),w
	xorlw	01Eh
	skipz
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l30000543
u4_20:
	
i1l30000535:	
	line	30
;waterlevel.c: 30: count = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_count)
	
i1l30000536:	
	line	31
;waterlevel.c: 31: if (RC3 && !ONReset)
	btfss	(59/8),(59)&7
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l11
u5_20:
	
i1l30000537:	
	movf	(_ONReset),f
	skipz
	goto	u6_21
	goto	u6_20
u6_21:
	goto	i1l11
u6_20:
	
i1l30000538:	
	line	32
;waterlevel.c: 32: RB1 = ~RB1;
	movlw	1<<((49)&7)
	xorwf	((49)/8),f
	goto	i1l30000539
	
i1l11:	
	line	34
;waterlevel.c: 33: else
;waterlevel.c: 34: RB1 = 1;
	bsf	(49/8),(49)&7
	
i1l30000539:	
	line	36
;waterlevel.c: 36: if (BuzzerON == 1)
	movf	(_BuzzerON),w
	xorlw	01h
	skipz
	goto	u7_21
	goto	u7_20
u7_21:
	goto	i1l13
u7_20:
	
i1l30000540:	
	line	37
;waterlevel.c: 37: RB3 = ~RB3;
	movlw	1<<((51)&7)
	xorwf	((51)/8),f
	goto	i1l30000541
	
i1l13:	
	line	39
;waterlevel.c: 38: else
;waterlevel.c: 39: RB3 = 0;
	bcf	(51/8),(51)&7
	
i1l30000541:	
	line	41
;waterlevel.c: 41: if (ERR_LED)
	movf	(_ERR_LED),w
	skipz
	goto	u8_20
	goto	i1l15
u8_20:
	
i1l30000542:	
	line	42
;waterlevel.c: 42: RB2 = ~RB2;
	movlw	1<<((50)&7)
	xorwf	((50)/8),f
	goto	i1l30000543
	
i1l15:	
	line	44
;waterlevel.c: 43: else
;waterlevel.c: 44: RB2 = 0;
	bcf	(50/8),(50)&7
	
i1l30000543:	
	line	48
;waterlevel.c: 45: }
;waterlevel.c: 48: count++;
	movlw	(01h)
	movwf	(??__isr+0+0)
	movf	(??__isr+0+0),w
	addwf	(_count),f
	
i1l30000544:	
	line	49
;waterlevel.c: 49: TMR0 = 6;
	movlw	(06h)
	movwf	(1)	;volatile
	
i1l30000545:	
	line	50
;waterlevel.c: 50: T0IF = 0;
	bcf	(90/8),(90)&7
	
i1l9:	
	movf	(??__isr+4),w
	movwf	btemp+0
	movf	(??__isr+3),w
	movwf	pclath
	movf	(??__isr+2),w
	movwf	fsr0
	movf	(??__isr+1),w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of__isr
	__end_of__isr:
; =============== function __isr ends ============

psect	text53,local,class=CODE,delta=2
global __ptext53
__ptext53:
	line	51
	signat	__isr,88
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	end
