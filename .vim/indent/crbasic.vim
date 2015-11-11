" Vim indent file
" Language:     CRBasic
" Maintainer:   Nikolay Dinchev <bearnik@gmail.com>
" URL:          https://github.com/bearnik/vim-crbasic
" ------------------------------------------------------------

if exists("b:did_indent")
  finish
endif
let b:did_indent = 1

setlocal indentexpr=CRBasicIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,:,

function! CRBasicIndent()
        let line = getline(v:lnum)
        let prevNum = prevnoblank(v:lnum - 1)
        let prev = getline(prevNum)

        if prev =~ "{" && prev !~ "}" && line !~ "}" && line ":$"
                return indent(prevNum) + &tabstop
        endif
        " TODO make it work for if, else, for, while
        " TODO make it work with beginprog, table, scan
endfunction
