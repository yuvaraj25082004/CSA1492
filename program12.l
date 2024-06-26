%{
#include <stdio.h>
%}

%%

[a-zA-Z]+      { printf("Identifier: %s\n", yytext); }
[0-9]+         { printf("Constant: %s\n", yytext); }
[\+\-\*\=]     { printf("Operator: %s\n", yytext); }
[ \t\n]+       { /* Skip whitespace */ }
.              { printf("Unknown character: %s\n", yytext); }

%%

int main(int argc, char **argv) {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}