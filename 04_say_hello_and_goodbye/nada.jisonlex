/* Tokens go here */

// No tokens for this example

%%

\s+           /* ignore whitespace, VERY IMPORTANT */

"begin"       return 'BEGIN';
"end"         return "END";
<<EOF>>       return 'EOF';
