lexer grammar miniAWKTokens; // note "lexer grammar"

// keywords
BEGIN : 'BEGIN' | 'begin' ;
END   : 'END'   | 'end'   ; 


string
    : STRING_LITERAL
    ;

number
    : INTEGER   
    ;

id
    : ID
    ;

field 
    : '$' POS_INTS
    ; 


WS : [ \t\r\n]+ -> skip ;  

COMMENT :        '#' ~[\r\n]* '\r'? '\n' -> skip ;

STRING_LITERAL   : '"' ~ ["\r\n]* '"' ; 

INTEGER          :  '-'? [0-9]+ ;  

POS_INTS         : [1-9] [0-9]* ; 

ID              :   [a-zA-Z_] [a-zA-Z_0-9]+ ;  

EOL             :   [\r?\n] ; 


