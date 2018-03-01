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
    | func                                      # FuncExpr
    | id                                        # IdExpr
    | field                                     # FieldReference
    | builtin                                   # BuiltInReference 
    | arith_expr                                # ArithmeticExpr
    | compar_expr                               # ComparisonExpr
    ;


#  Lots more to go here.... 


string
    : STRINGLITERAL
    ;

number
    : NUMBER
    ;

id
    : ID
    ;



