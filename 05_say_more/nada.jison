/*

  Jison is based on Bison is based on YACC

  View the Makefile to see the commands
  $ make

*/

%%

pgm 
    :           /* enjoy the silence */
    | begin     { console.log("We have only just begun."); }
    | pgm text  { console.log($2); }
    | pgm end   { console.log("Leaving so soon?"); }
    | pgm eof
    ;
text
    : TEXT
    ;
begin
    : BEGIN 
    ;
end
    : END 
    ;
newline
    : NEWLINE
    ;
eof
    : EOF
    ;
