" Vim syntax file
" Language: CRBasic
" Filenames: *.cr1

if exists("b:current_syntax")
            finish
    endif
    
    syn keyword     crbasicKeyword      Const Public Alias Units Dim As
    syn keyword     crbasicVarTypes     Float Long String Boolean
    syn keyword     crbasicDataTypes    FP2 IEEE4 FLOAT LONG UINT2 UINT4 BOOLEAN BOOL8 NSEC STRING
    syn keyword     crbasicStatement    DataInterval Sample Include SlowSequence Scan NextScan
    syn keyword     crbasicStatement    GetRecord TCPOpen SendVariables NetworkTimeProtocal
    syn keyword     crbasicRepeat       DataTable EndTable BeginProg EndProg
    syn keyword     crbasicMath         Minimum Maximum Average StdDev Sample Totalize WindVector
    syn keyword     crbasicConditional  If Then Else EndIf Do Loop Until While Wend
    syn keyword     crbasicLoops        Do Loop Until While Wend For Next
    syn keyword     crbasicBools        True False
    syn keyword     crbasicTodo         contained TODO FIXME NOTE NOTES
    syn match       crbasicComment      "\v\'.*$" contains=crbasicTodo 
    "syn region      crbasicComment      start="'" end="'"
    syn region      crbasicStrings      start='"' end='"'   

" Matching Operators
    syn match       crbasicOperator     "\v\*"
    syn match       crbasicOperator     "\v\/"
    syn match       crbasicOperator     "\v\+"
    syn match       crbasicOperator     "\v-"
    syn match       crbasicOperator     "\v\^"
    syn match       crbasicOperator     "\v\&"
    syn match       crbasicOperator     "\v\\"

    syn match       crbasicOperator     "\v<"
    syn match       crbasicOperator     "\v>"
    syn match       crbasicOperator     "\v<>"
    syn match       crbasicOperator     "\v>>"
    syn match       crbasicOperator     "\v<<"
    syn match       crbasicOperator     "\v>\="
    syn match       crbasicOperator     "\v<\="

    syn match       crbasicOperator     "\v\="
    syn match       crbasicOperator     "\v\*\="
    syn match       crbasicOperator     "\v\+\="
    syn match       crbasicOperator     "\v-\="
    syn match       crbasicOperator     "\v\^\="
    syn match       crbasicOperator     "\v\\\="
    syn match       crbasicOperator     "\v\/\="
    syn match       crbasicOperator     "\v\&\="
    syn match       crbasicOperator     "\v\!"

    syn match       crbasicOperator     "\v(AND|IMP|INTDV|MOD|NOT|OR|XOR)"
" End Matching Operators



    hi def link     crbasicKeyword      Keyword 
    hi def link     crbasicVarTypes     Type 
    hi def link     crbasicDataTypes    Type 
    hi def link     crbasicStatement    Statement
    hi def link     crbasicRepeat       Repeat
    hi def link     crbasicMath         Function
    hi def link     crbasicConditional  Conditional
    hi def link     crbasicLoops        Repeat 
    hi def link     crbasicBools        Constant 
    hi def link     crbasicStrings      String 
    hi def link     crbasicOperator     Operator
    hi def link     crbasicComment      Comment
    hi def link     crbasicTodo         Todo

    let b:current_syntax = "crbasic"
