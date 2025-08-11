%{
#include "fb1-5.tab.h"
%}

%%

[0-9]+         { yylval = atoi(yytext); return NUMBER; }
"+"            { return ADD; }
"-"            { return SUB; }
"*"            { return MUL; }
"/"            { return DIV; }
"|"            { return ABS; }
\n             { return EOL; }
[ \t]+         { /* ignorar espacios y tabulaciones */ }
.              { printf("Caracter no reconocido: %s\n", yytext); }

%%

