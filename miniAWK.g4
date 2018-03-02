grammar miniAWK;
import miniAWKTokens;

prog: (block)+ EOF;

block
    :  begin_block 
    |  stmt_block
    |  end_block   
;

begin_block 
    :  BEGIN '{' (stmt)+  '}' 
;

stmt_block
    :  '{'  (stmt)+  '}' 
;

stmt
    : string                                    
    | number                                    
    | id                                        
    | field     
;    

string
    : STRINGLITERAL
    ;

number
    : NUMBER
    ;

id
    : ID
    ;

field 
    : '$' number
    ; 

STRINGLITERAL   : '"' ~ ["\r\n]* '"' ;

NUMBER          : [0-9]+ ('.' [0-9]+)? ;   

ID              : [a-zA-Z_] [a-zA-Z_0-9]+ ;  


end_block 
    :  END '{' (stmt)+  '}' 
; 





