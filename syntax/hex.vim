" Vim syntax file
" Language: H-Expression (.hex)
" Maintainer: statusfailed

if exists("b:current_syntax")
  finish
endif

" Comments
syn match hexComment "#.*$" contains=@Spell
hi def link hexComment Comment

" Delimiters for different expression types
syn match hexComposition "[()]"
syn match hexTensor "[{}]"
syn match hexFrobenius "[\[\]]"
syn match hexDot "\."

hi def link hexComposition Delimiter
hi def link hexTensor Special
hi def link hexFrobenius Type
hi def link hexDot Operator

" Variables - alphanumeric with hyphens and underscores
syn match hexVariable "\<[a-zA-Z0-9_-]\+\>" contained

" Operations - complex pattern including various symbols
syn match hexOperation "\<[a-zA-Z0-9\-_.*+/|>:=!?]\+\>" contains=hexOperationSymbols

" Operation symbols
syn match hexOperationSymbols "[.*+/|>:=!?-]" contained
hi def link hexOperationSymbols Operator

" Keywords for structure (implicit from grammar)
syn region hexCompositionRegion start="(" end=")" contains=ALL fold transparent
syn region hexTensorRegion start="{" end="}" contains=ALL fold transparent
syn region hexFrobeniusRegion start="\[" end="\]" contains=hexVariable,hexDot fold transparent

hi def link hexVariable Identifier
hi def link hexOperation Function

" Set the current syntax
let b:current_syntax = "hex"
