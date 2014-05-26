/* Tokens go here */

// OMG our first token!

text [a-zA-Z][a-zA-Z0-9]*    //%{ console.log("text: " + yytext); %};
num  [0-9]+

%%

\s+           /* ignore whitespace, VERY IMPORTANT */
"begin"       return 'BEGIN';
"add"         return 'ADD';
"end"         return 'END';
{text}        return 'TEXT';
{num}         return 'NUM';
<<EOF>>       return 'EOF';
