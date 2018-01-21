grammar FIrInterpreter;

/*
 * Parser Rules
 */

@header{
	using System;
}

entry:	
	literal{Console.WriteLine($literal.value);}
;

literal returns [string value]:
	(a=INT|a=REAL){$value=$a.text;}
;

/*
 * Lexer Rules
 */

INT:[0-9]+;
REAL:[0-9]+'.'[0-9]+;
WS
	:	' ' -> channel(HIDDEN)
	;
