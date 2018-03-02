grammar miniAWK;
import miniAWKExpression, miniAWKTokens;

prog: (block)+ EOF;

block
    :  begin_block 
    |  stmt_block
    |  end_block 
    |  /* empty */ 
;

begin_block 
    :  BEGIN '{' (stmt)+  '}' 
;

stmt_block
    :  '{'  (stmt)+  '}' 
;

stmt
    :  if_stmt 
    |  while_stmt
    |  for_stmt 
    |  for_array_stmt 
    |  break_stmt
    |  continue_stmt 
    |  assignment 
    |  comment 
    |  func_call 
    |  func_defn
    |  print_stmt 
    |  printf_stmt 
    |  next_stmt 
    |  exit_stmt 
;    

end_block 
    :  END '{' (statement)+  '}' 



