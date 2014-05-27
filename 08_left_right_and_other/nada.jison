/*

  Jison is based on Bison is based on YACC

  View the Makefile to see the commands
  $ make

*/


// Operator associativity
%left '-'
%left '*'
%left "+"

%start pgm

%%

pgm
    :                     /* enjoy the silence */
    | pgm block           { ary.push($2); }
    | pgm eof             { console.log(ary.join("\n")); }
    ;
block
    : MATHBLOCK e end     { $$ = $2 }
    ;
end
    : END         
    | end END
    ;
eof
    : EOF
    ;
e
    : NUM                 { $$ = Number($1); }
    | '-' e %prec UMINUS  { $$ = -$2; }
    | LPAREN e RPAREN     { $$ = Math.abs($2); }
    | e '*' e             { $$ = $1 * $3; }
    | '+' e e             { $$ = $2 + $3; }
    | PI                  { $$ = Math.PI; }
    ;
%%

/* What do we have here? */
ary = []
