" Vim syntax file
" Language: CRBasic
" Filenames: *.cr1

if exists("b:current_syntax")
            finish
    endif

    syn keyword     crbasicKeyword      Const Public Alias Units
    syn keyword     crbasicStatement    DataInterval Sample Include SlowSequence Scan NextScan
    syn keyword     crbasicStatement    GetRecord TCPOpen SendVariables NetworkTimeProtocal
    syn keyword     crbasicRepeat       DataTable EndTable BeginProg EndProg
    syn keyword     crbasicMath         Minimum Maximum Average StdDev Sample Totalize WindVector
    syn keyword     crbasicConditional  If Then Else EndIf
    syn keyword     crbasicConstants    True False
    syn region      crbasicComment      start="'" end="$" 

    hi def link     crbasicKeyword      Keyword 
    hi def link     crbasicStatement    Statement
    hi def link     crbasicRepeat       Repeat
    hi def link     crbasicMath         Function
    hi def link     crbasicConditional  Conditional
    hi def link     crbasicConstants    Keyword
    hi def link     crbasicComment      Comment

    let b:current_syntax = "crbasic"
