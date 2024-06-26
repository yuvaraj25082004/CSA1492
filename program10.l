%{
#include <stdio.h>
%}

%option noyywrap

%%
"+"     { printf("Plus\n"); }
"-"     { printf("Minus\n"); }
"*"     { printf("Multiplication\n"); }
"/"     { printf("Division\n"); }
.       { printf("Unknown operator\n"); }
%%

int main() {
    yylex();
    return 0;
}
