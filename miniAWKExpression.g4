grammar miniAWKExpression;
import miniAWKTokens;

prog: stmt+;

stmt
    : expression NEWLINE
    | NEWLINE
    ;

expression
    : string                                    
    | number                                    
    | id                                        
    | field                                     
    | builtin                                   
    | func                                      
    | comment                                   
    | if_expr                                   
    | while_expr                                
    | for_expr                                  
    | for_array_expr                            
    | break_expr                                
    | continue                                  
    | assignment                                
    | print_expr                                
    | output_expr                               
    | next_expr                                 
    | exit                                      
    | arith_expr                                
    | compar_expr                               
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

builtin 
    :  ARGC 
    |  ARGV 
    |  FILENAME 
    |  FNR 
    |  FS 
    |  NF 
    |  NR
    |  OFMT 
    |  OFS 
    |  ORS 
    |  RLENGTH
    |  RS 
    |  RSTART 
    |  SUBSEP 
    ; 

func 
    :  builtin_func 
    |  user_def_func 
    ; 

builtin_func 
    :  log_func
    |  sqrt_func 
    |  sin_func 
    |  cos_func 
    |  int_func 
    |  index_func 
    |  length_func
    |  match_func 
    |  split_func 
    |  sub_func 
    |  substr_func
    ;  

log_func 
    :  LOG '(' number ')' 
    ; 

sqrt_func 
    :  SQRT '(' number ')' 
    ; 

sin_func 
    :  SIN '(' number ')' 
    ; 

cos_func 
    :  COS '(' number ')' 
    ; 

int_func 
    :  INT '(' number ')' 
    ; 

index_func 
    :  INDEX '(' string ',' string ')' 
    ; 

length_func 
    :  LENGTH '(' length_arg ')' 
    ; 

length_arg
    :  string 
    |  number 
    |  ID 
    |  field 
    ;  

match_func
    :  MATCH '(' string ',' ERE ')' 
    ; 

split_func 
    :  SPLIT '(' split_args ')' 
    ; 

split_args 
   :  string ',' array_elements 
   |  split_args ',' FS 
   ; 

sub_func 
   :  SUB '(' sub_args ')' 
   ; 

sub_args 
   :  ERE ',' repl 
   |  sub_args ',' in 
   ; 

substr_func 
   :  SUBSTR '(' substr_args ')' 
   ; 

substr_args 
   :  string ',' m 
   |  substr_args ',' n 
   ;   

user_def_func 
    :  FUNCTION ID '(' arg_list ')'  '{' stmt '}' 
    ; 

arg_list 
    :  arg 
    |  arg_list ',' arg 
    |  /* empty */ 
    ; 

comment 
    :  comment_start comment_rest EOL 
    ;  

comment_start
    :  '#'  
    ; 

comment_rest 
    :  ( ANY )*
    ; 

  
