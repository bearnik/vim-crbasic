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
    syn keyword     crbasicConstants    True False
    syn region      crbasicComment      start="'" end="$" 

    hi def link     crbasicKeyword      Keyword 
    hi def link     crbasicVarTypes     Statement
    hi def link     crbasicDataTypes    Statement 
    hi def link     crbasicStatement    Statement
    hi def link     crbasicRepeat       Repeat
    hi def link     crbasicMath         Function
    hi def link     crbasicConditional  Conditional
    hi def link     crbasicConstants    Keyword
    hi def link     crbasicComment      Comment

    let b:current_syntax = "crbasic"
