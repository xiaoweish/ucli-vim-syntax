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

hi def link ucliOperator 	Operator

let b:current_syntax = "ucli"

" vim: ts=8
