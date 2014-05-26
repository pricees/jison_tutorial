/*

  Jison is based on Bison is based on YACC

  View the Makefile to see the commands
  $ make

*/


%start pgm

%%

pgm 
    :           /* enjoy the silence */
    | pgm block  { ary.push($2); }
    | pgm eof    { console.log(ary.join("\n")); }
    ;
block
    : begin text end    { $$ = $2 }
    ;
begin
    : BEGIN             
    ;
end
    : END         
    ;
eof
    : EOF
    ;
text
    : TEXT
    | text TEXT { $$ = $1 + ' ' + $2 }
    ;
%%

/* What do we have here? */
ary = []
