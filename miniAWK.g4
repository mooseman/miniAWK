grammar miniAWK;
import miniAWKTokens;


prog 
    :  ( begin_block )* ( stmt_block )* ( end_block )*  
;

begin_block 
    :  BEGIN  block 
;

stmt_block
    :  block 
;

end_block 
    :  END  block 
; 

block 
    :  '{'  (stmt)+  ';'  '}'   
;

stmt
    : (string) 
    | (field)
    | (number) 
    | (id)  
;    


BEGIN :  'begin' ; 

END   :  'end'   ; 







