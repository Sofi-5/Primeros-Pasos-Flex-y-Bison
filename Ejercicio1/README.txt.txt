# 1. Manejo de comentarios
Problema: la calculadora no aceptaba línea con solo comentario.

Solución: en calc.l se agregó regla:

"//".*   { return NEWLINE; }

Ahora, si la línea solo tiene comentario, se interpreta como fin de línea y no produce error.
