/*

  Jison is based on Bison is based on YACC

  View the Makefile to see the commands
  $ make

*/
%%

pgm 
    :           /* enjoy the silence */
    | BEGIN     { console.log("We have only just begun."); }
    | pgm END   { console.log("Leaving so soon?"); }
    | pgm eof
    ;
eof
    : EOF
    ;
