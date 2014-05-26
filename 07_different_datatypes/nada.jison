/*

  Jison is based on Bison is based on YACC

  View the Makefile to see the commands
  $ make

*/


%start pgm

%%

pgm 
    :           /* enjoy the silence */
    | pgm num_block  { ary.push($2); }
    | pgm text_block  { ary.push($2); }
    | pgm eof    { console.log(ary.join("\n")); }
    ;
text_block
    : begin text end    { $$ = $2 }
    ;
begin
    : BEGIN             
    ;
num_block
    : add num end    { $$ = $2 }
    ;
add 
    : ADD
    ;
end
    : END         
    ;
eof
    : EOF
    ;
num
    : NUM         { $$ = Number($1); }
    | num NUM     { $$ = $1 + Number($2) }
    ;
text
    : TEXT
    | text TEXT { $$ = $1 + ' ' + $2 }
    ;
%%

/* What do we have here? */
ary = []
