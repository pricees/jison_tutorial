/* Tokens go here */

// OMG our first token!

num          [0-9]+("."[0-9]+)?\b
ws           \s+

%%
\n            return 'END';
"//".*        return 'COMMENT';
{ws}          /* ignore whitespace */
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

