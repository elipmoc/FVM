grammar FIrInterpreter;

/*
 * Parser Rules
 */

@header{
	using System;
}

entry
	:	a=INT{Console.WriteLine($a);}
	;

/*
 * Lexer Rules
 */

INT:[0-9]+;
REAL:[0-9]+;
WS
	:	' ' -> channel(HIDDEN)
	;
