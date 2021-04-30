" Vim syntax file
" Language:     Ren
" Maintainer:   Trymunx <trymunx@gmail.com>
" Last Change:  2021-04-30
" Remark:       Still a work in progress.

if !exists("main_syntax")
	if version < 600
		syntax clear
	elseif exists("b:current_syntax")
		finish
	endif
	let main_syntax = 'ren'
endif

syntax region  renString           start=+"+  skip=+\\\\\|\\"+  end=+"\|$+
syntax region  renString           start=+'+  skip=+\\\\\|\\'+  end=+'\|$+
syntax match   renNumber           "-\=\<\d\+L\=\>\|0[xX][0-9a-fA-F]\+\>"
syntax match   renFloat            /\<-\=\%(\d\+\.\d\+\|\d\+\.\|\.\d\+\)\%([eE][+-]\=\d\+\)\=\>/

syntax match   renBraces           "[{}\[\]]"
syntax match   renParens           "[()]"
syntax match   renOpSymbols        "=\|!=\|<\|>\|>=\|<=\|++\|+=\|--\|-=\|::\|++\|%\|^"
syntax match   renEndColons        "[,]"
syntax match   renLogicSymbols     "\(&&\)\|\(||\)\|\(==\)"
syntax match   renFunctionSymbols  "\(|>\)\|\(>>\)\|\(=>\)"

syntax keyword renCommentTodo      TODO FIXME XXX TBD OPTIMIZE HACK REVIEW contained
syntax match   renComment          "\/\/.*" contains=renCommentTodo

syntax keyword renVisibility       import as exposing pub
syntax keyword renIdentifier       let where and fun
syntax keyword renOperator         delete new instanceof typeof
syntax keyword renBoolean          true false
syntax keyword renConditional      if else then

hi link renCommentTodo      Todo
hi link renComment          Comment

hi link renVisibility       Special
hi link renIdentifier       Identifier
hi link renOperator         Operator
hi link renBoolean          Boolean
hi link renConditional      Conditional

hi link renString           String
hi link renString           String
hi link renNumber           Number
hi link renFloat            Number

hi link renFuncKeyword      Function
hi link renFuncExp          Title
hi link renFuncArg          Special
hi link renFuncComma        Operator
hi link renFuncEq           Operator
hi link renFuncDef          Function
hi link renFunctionKey      Function

hi link renBraces           Function
hi link renParens           Operator
hi link renOpSymbols        Operator
hi link renEndColons        Operator
hi link renLogicSymbols     Boolean
hi link renFunctionSymbols  Function

let b:current_syntax = "ren"
if main_syntax == 'ren'
	unlet main_syntax
endif
