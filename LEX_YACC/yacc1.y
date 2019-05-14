%{
#include<stdio.h>
%}
%token ID
%left '+' '-'
%left '*' '/'
%%
E:	E'+'E|
	E'-'E|
	E'*'E|
	E'/'E|
	ID;
%%
void main(){
	printf("Enter an expression: ");
	yyparse();
	printf("valid\n");
}
void yyerror(){
	printf("Invalid\n");
	exit(0);
}
