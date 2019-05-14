%{
#include<stdio.h>
%}
%token A B
%left A B
%%
S: A S|S B|;
%%
void main(){
	printf("Enter expression: ");
	yyparse();
	printf("Valid expression\n");
}
void yyerror(){
	printf("Invalid expression\n");
	exit(0);
}
