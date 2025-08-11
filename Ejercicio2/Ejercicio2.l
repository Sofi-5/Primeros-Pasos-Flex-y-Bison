
%{
#include "Ejercicio2.tab.h"
#include <stdlib.h>
#include <string.h>
%}

%%

0[xX][a-fA-F0-9]+     { yylval = strtol(yytext, NULL, 16); return NUMBER; }
[0-9]+                { yylval = strtol(yytext, NULL, 10); return NUMBER; }
"+"                   { return ADD; }
"-"                   { return SUB; }
"*"                   { return MUL; }
"/"                   { return DIV; }
"|"                   { return ABS; }
\n                    { return EOL; }
[ \t]+                { /* ignorar espacios */ }
.                     { printf("Caracter no reconocido: %s\n", yytext); }

%%


