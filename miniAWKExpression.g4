grammar miniAWKExpression;
import miniAWKTokens;

prog: stmt+;

stmt
    : expression NEWLINE
    | NEWLINE
    ;

expression
    : string                                    # StringExpr
    | number                                    # NumberExpr   
    | id                                        # IdExpr
    | field                                     # FieldReference
    | builtin                                   # BuiltInVariables 
    | func                                      # FuncExpr
    | comment                                   # Comment 
    | if_expr                                   # IfExpr
    | while_expr                                # WhileExpr
    | for_expr                                  # ForExpr 
    | for_array_expr                            # ForArrayExpr 
    | break_expr                                # Break 
    | continue                                  # Continue 
    | assignment                                # Assignment (Ordinary and augmented)
    | print_expr                                # Print and printf 
    | output_expr                               # Output -  >, >>, | 
    | next_expr                                 # Next 
    | exit                                      # Exit   
    | arith_expr                                # ArithmeticExpr
    | compar_expr                               # ComparisonExpr
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

    
    


