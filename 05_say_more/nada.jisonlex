/* Tokens go here */

// OMG our first token!

text    [a-zA-Z]*

%%

\s+           /* ignore whitespace, VERY IMPORTANT */
\n            return 'NEWLINE';
"begin"       return 'BEGIN';
"end"         return 'END';
{text}        return 'TEXT';
<<EOF>>       return 'EOF';
