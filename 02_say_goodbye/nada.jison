/*

  Jison is based on Bison is based on YACC

  View the Makefile to see the commands
  $ make

*/
%%

pgm 
    : EOF            { console.log("*Goodbye*"); }
    ;
