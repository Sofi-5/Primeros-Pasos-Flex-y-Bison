# 3. Operadores bit a bit
Tokens agregados:

"&"   { return BITAND; }
"|"   { return BITOR; }

Gramática modificada para manejar:

expr : expr BITAND expr   { $$ = $1 & $3; }
     | expr BITOR  expr   { $$ = $1 | $3; }

Diferencia entre | de valor absoluto y OR binario:
El parser distingue | expr | (ABS) de expr | expr (OR).
