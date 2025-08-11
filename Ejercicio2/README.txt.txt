# 2. Calculadora hexadecimal
Patrón agregado:
0x[0-9a-fA-F]+   { yylval = strtol(yytext, NULL, 16); return NUMBER; }

Modificado printf para mostrar resultado decimal y hexadecimal:
printf("= %d (0x%X)\n", result, result);

Ejemplo:
0xA + 10
= 20 (0x14)
