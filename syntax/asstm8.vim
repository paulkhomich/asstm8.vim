" Vim syntax file
" Language:    ASSTM8
" Maintainer:  Pavel Khomich <paulkhomich@outlook.com>
" Last Change: 2020 11 12

if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

" Non case sensitive
syn case ignore

" Comments
syn keyword asstm8Todo		TODO FIXME NOTE contained
syn keyword asstm8Error		ERROR contained
syn region asstm8Comment	start=";" end="\n" contains=asstm8Todo,asstm8Error

" Strings
syn match asstm8Escape		"\\[nrtbfv0\"\']" contained
syn region asstm8String		start="\"" end="\"" contains=asstm8Escape

" Keywords
syn keyword asstm8Keyword	LDF LDW LD CLRW MOV EXGW CLR EXG PUSHW POPW PUSH POP INCW DECW INC DEC CPW TNZW BCPL BCP CP TNZ AND OR XOR CPLW CPL BSET BRES BCCM BTJT BTJF NEGW ADC ADDW SUBW SBC MUL DIVW DIV NEG ADD SUB SLLW SRLW SRAW RLCW RRCW SWAP SLL SRL SRA RLC RRC SWAP RLWA RRWA CALLR CALLF CALL RETF RET NOP JRUGT JRUGE JRSGT JRSGE JRULE JRULT JRSLE JRSLT JRNC JRNE JRNV JRPL JRNH JRNM JRIL JRIH JREQ JRMI JRA JRT JRF JRC JRV JRH JPF JRM JP WFE TRAP WFI HALT IRET SIM RIM SCF RCF CCF RVF BREAK INT

" Numerical
syn match asstm8Number		"#\?\(0x\|0X\|0h\|0H\)[0-9a-fA-F]\+"
syn match asstm8Number		"#\?\(0o\|0O\|0q\|0Q\)[0-7]\+"
syn match asstm8Number		"#\?\(0d\|0D\)[0-9]\+"
syn match asstm8Number		"#\?\(0b\|0B\)[01]\+"

" Registers
syn match asstm8Registers	"\<\(a\|z\|x\|xl\|xh\|y\|yl\|yh\|sp\|cc\)\>"

" Labels
syn match asstm8Labels		"[a-zA-Z_][a-zA-Z0-9_]*\(:\|::\)\@="

" Directives
syn match asstm8Directives	"\.[a-zA-Z0-9_]*"

" Operators
syn match   asstm8Operators	"=:"
syn match   asstm8Operators	"=="
syn match   asstm8Operators	"="
syn match   asstm8Operators	"<<"
syn match   asstm8Operators	">>"
syn match   asstm8Operators	"<"
syn match   asstm8Operators	">"
syn match   asstm8Operators	"+"
syn match   asstm8Operators	"-"
syn match   asstm8Operators	"*"
syn match   asstm8Operators	"/"
syn match   asstm8Operators	"%"
syn match   asstm8Operators	"\~"
syn match   asstm8Operators	"&"
syn match   asstm8Operators	"|"
syn match   asstm8Operators	"\^"



hi def link asstm8Todo		Todo
hi def link asstm8Error		Error
hi def link asstm8Comment	Comment
hi def link asstm8Escape	Character
hi def link asstm8String	String
hi def link asstm8Keyword	Special
hi def link asstm8Number	Number
hi def link asstm8Registers	Type
hi def link asstm8Labels        Identifier
hi def link asstm8Directives	Statement
hi def link asstm8Operators	Operator

let b:current_syntax = "asstm8"


