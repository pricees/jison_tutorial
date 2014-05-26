/*

  Jison is based on Bison is based on YACC

  View the Makefile to see the commands
  $ make

*/
%%

pgm 
    :           /* enjoy the silence */
    | pgm eof
    ;
eof
    : EOF
    ;
