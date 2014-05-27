/* Tokens go here */

// OMG our first token!

num          [0-9]+("."[0-9]+)?\b

%%
\n        return 'END';
\s+           /* ignore whitespace, VERY IMPORTANT */
"("           return 'LPAREN';
")"           return 'RPAREN';
"-"           return '-';
"+"           return '+';
"*"           return '*';
"Pie"          return 'PI';
"begin"       return 'BEGIN';
"math"         return 'MATHBLOCK';
{num}         return 'NUM';
<<EOF>>       return 'EOF';

