/* Tokens go here */

// OMG our first token!

text [a-zA-Z][a-zA-Z0-9]*    //%{ console.log("text: " + yytext); %};

%%

\s+           /* ignore whitespace, VERY IMPORTANT */
"begin"       return 'BEGIN';
"end"         return 'END';
{text}        return 'TEXT';
<<EOF>>       return 'EOF';
