/* Tokens go here */

// No tokens for this example

%%

\s+           /* ignore whitespace, VERY IMPORTANT */
<<EOF>>       return 'EOF';
