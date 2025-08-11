
/* calculadora con operadores bitwise y hexadecimales */
%{
#include <stdio.h>
#include <stdlib.h>
int yylex();
void yyerror(char *s);
%}

%token NUMBER
%token ADD SUB MUL DIV
%token EOL

%%

calclist:
        /* vacío */
      | calclist exp EOL { printf("= %d (0x%X)\n", $2, $2); }
;

exp:
        or_expr
;

or_expr:
        and_expr
      | or_expr '|' and_expr { $$ = $1 | $3; }
;

and_expr:
        factor
      | and_expr '&' factor { $$ = $1 & $3; }
;

factor:
        term
      | factor MUL term { $$ = $1 * $3; }
      | factor DIV term { $$ = $1 / $3; }
;

term:
        NUMBER
      | '|' exp '|' { $$ = $2 >= 0 ? $2 : -$2; }  // ABS usando |expr|
;

%%

int main(int argc, char **argv)
{
    yyparse();
    return 0;
}

void yyerror(char *s)
{
    fprintf(stderr, "error: %s\n", s);
}


