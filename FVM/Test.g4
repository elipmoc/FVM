grammar Test;

@header{
	using System;
}

prog : expr {Console.WriteLine($expr.value);};

expr returns [int value]: additive_expr {$value=$additive_expr.value;};

//�����Z
additive_expr returns [int value]:
	a=multiplicative_expr{$value=$a.value;} ((c=ADD|c=SUB) b=multiplicative_expr{
		if($c.text=="+")
			$value+=$b.value;
		else
			$value-=$b.value;

	})* ;

//�|���Z
multiplicative_expr returns [int value]: 
	a=division_expr{$value=$a.value;} (MUL b=division_expr {$value*=$b.value;})* ; 

//����Z
division_expr returns [int value]:
	factor{$value=$factor.value;} (DIV factor {$value/=$factor.value;})* ;

//����
factor returns [int value]: 
	NUM {$value=int.Parse($NUM.text);}
	| '(' expr ')'{$value=$expr.value;} ;

NUM :[0-9]+ ; //����
MUL : '*' ; //�|���Z�L��
DIV : '/' ; //����Z�L��
ADD : '+' ; //�����Z�L��
SUB : '-' ; //�����Z�L��

WS : [ \t\r\n]+ -> skip ; //�X�L�b�v
