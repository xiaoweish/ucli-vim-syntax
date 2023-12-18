if exists("b:current_syntax")
  finish
endif

runtime! syntax/tcl.vim

" UCLI Commands
syn keyword ucliOperator	abort ace alias call cbug checkpoint config constraints coverage do drivers
syn keyword ucliOperator	dump find_forces find_identifier finish force get help initreg listing loaddl
syn keyword ucliOperator	loads lp_show memory msglog next onbreak onerror onfail pause power release
syn keyword ucliOperator	report_timing report_violations restart restore resume run saif save scope
syn keyword ucliOperator	search show senv sexpr sn stack start start_verdi status step stop tcheck tcl
syn keyword ucliOperator	thread unalias virtual xprop

" FSDB Dumping Commands
syn keyword ucliOperator	fsdbAutoSwitchDumpfile fsdbDumpfile fsdbDumpflush fsdbDumpon fsdbDumpoff
syn keyword ucliOperator	fsdbDumpvars fsdbDumpvarsByFile fsdbDumpFinish fsdbDumpMDA fsdbDumpMDAByFile
syn keyword ucliOperator	fsdbDumpPSL fsdbDumpSVA fsdbLog fsdbSuppress fsdbSwitchDumpfile

syn match   ucliNumber "\(\<\d\+\|\)'[sS]\?[bB]\s*[0-1_xXzZ?]\+\>"
syn match   ucliNumber "\(\<\d\+\|\)'[sS]\?[oO]\s*[0-7_xXzZ?]\+\>"
syn match   ucliNumber "\(\<\d\+\|\)'[sS]\?[dD]\s*[0-9_xXzZ?]\+\>"
syn match   ucliNumber "\(\<\d\+\|\)'[sS]\?[hH]\s*[0-9a-fA-F_xXzZ?]\+\>"
syn match   ucliNumber "\<[+-]\=[0-9_]\+\(\.[0-9_]*\|\)\(e[0-9_]*\|\)\>"

" Command flags highlighting
syn match ucliFlags  "[[:space:]]-[[:alpha:]]*\>"

hi def link ucliOperator 	Operator
hi def link ucliNumber    Number
hi def link ucliFlags     Special

let b:current_syntax = "ucli"

" vim: ts=8
