
/*English to American*/
%%
"colour" { printf("color"); }
"flavour" { printf("flavor"); }
"clever" { printf("smart"); }
"smart" { printf("elegant"); }
"conservative" { printf("liberal"); }
"angry" { printf("mad"); }
"cookie" { printf("biscuit"); }
"chips" { printf("french fries"); }
"flat" {printf ("apartment"); }


. { printf("%s", yytext); }
%%
