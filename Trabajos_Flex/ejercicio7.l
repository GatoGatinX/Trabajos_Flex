/*esto es un comentario*/
%option noyywrap
%{
#include <stdio.h>
%}

%%
[\n\t]
go|if|play|it|window|jump|think|learn|study|to|at|the|link {printf("palabra clave identificada\n");printf("%s",yylex());}
[a-zA-Z]+ {printf("Otra palabra\n");printf("%s",yylex());}
[0-9]+ {printf("numero encontrado\n");printf("%s",yylex());}
%%

int main(){
    yylex();
    return 1;
}