lexer grammar miniAWKTokens; // note "lexer grammar"

// operators
MUL : '*' ;
DIV : '/' ;
ADD : '+' ;
SUB : '-' ;
EXP : '^' ;
MOD : 'MOD' ;

// logical
NEQ : '<>' ;
GTE : '>=' ;
LTE : '<=' ;
GT  : '>' ;
LT  : '<' ;
EQ  : '=' ;

// relational
AND : 'AND' | 'and' ;
OR  : 'OR' | 'or' ;
NOT : 'NOT' | 'not' ;

// other
COMMA  : ',' ;
LPAREN : '(' ;
RPAREN : ')' ;

// functions
LEN : 'LEN' | 'len' ;
VAL : 'VAL' | 'val' ;
ISNAN   : 'ISNAN' | 'isnan' ;

// keywords
BEGIN   : 'BEGIN' | 'begin' ;
CASE    : 'CASE'  | 'case'  ; 
CONTINUE  : 'CONTINUE' | 'continue' ;
DEFAULT : 'DEFAULT' | 'default' ;   
DELETE :  'DELETE'  | 'delete' ;  
DO      : 'DO' | 'do' ;
ELSE    : 'ELSE' | 'else' ; 
END     : 'END'   | 'end' ; 
EXIT    : 'EXIT' | 'exit' ;  
FOR     : 'FOR' | 'for' ;
FUNCTION : 'FUNCTION' | 'function' ; 
FUNC     : 'FUNC'     | 'func' ;  
IF      : 'IF' | 'if' ;
IN      : 'IN' | 'in' ;
NEXT    : 'NEXT' | 'next' ; 
PRINT   : 'PRINT' | 'print' ;
SWITCH  : 'SWITCH' | 'switch' ; 
WHILE   : 'WHILE' | 'while' ;

// comments
COMMENT : # ~[\r\n]* ;

// literals
ID              : [a-zA-Z]+ ;  // match identifiers
NUMBER          : [0-9]+ ('.' [0-9]+)?;   // match integers
STRINGLITERAL   : '"' ~ ["\r\n]* '"' ;
DOLLAR          : '$' ;
NEWLINE         :'\r'? '\n' ;  // return newlines to parser (end-statement signal)
WS              : [ \t]+ -> skip ; // toss out whitespace
//NUMBER
//    : ('0' .. '9') + (('e' | 'E') NUMBER)*
//    ; 


