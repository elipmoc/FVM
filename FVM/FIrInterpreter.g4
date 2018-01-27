grammar FIrInterpreter;

/*
 * Parser Rules
 */

@header{
	using System;
	using FVM.Interpreter;
}

entry:	
	output
;

output:
	'output'
	(
		(a=intConstantExpr{Order.output($a.expr);})
		|(b=doubleConstantExpr{Order.output($b.expr);})
	)
;

/*
 * Lexer Rules
 */

intConstantExpr returns[Expr<int> expr]:
	INT{$expr=new ConstantExpr<int>(int.Parse($INT.text));}
;

doubleConstantExpr returns[Expr<double> expr]:
	REAL{$expr=new ConstantExpr<double>(double.Parse($REAL.text));}
;

INT:[0-9]+;
REAL:[0-9]+'.'[0-9]+;
WS
	:	' ' -> channel(HIDDEN)
	;
