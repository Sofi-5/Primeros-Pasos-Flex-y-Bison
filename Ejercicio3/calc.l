
%{
#include "calc.tab.h"
#include <stdlib.h>
%}

%%

0[xX][a-fA-F0-9]+     { yylval = strtol(yytext, NULL, 16); return NUMBER; }
[0-9]+                { yylval = strtol(yytext, NULL, 10); return NUMBER; }

"+"                   { return ADD; }
"-"                   { return SUB; }
"*"                   { return MUL; }
"/"                   { return DIV; }

"&"                   { return '&'; }
"|"                   { return '|'; }

\n                    { return EOL; }
[ \t]+                { /* ignorar espacios */ }
.                     { printf("Caracter no reconocido: %s\n", yytext); }

%%

