%{
#include<stdio.h>
%}
%token OKAY
%%
S: OKAY S|OKAY;
%%
void main(){
	printf("Enter a number\n");
	yyparse();
	printf("Accepted\n");
}
void yyerror(){
	printf("Not accepted\n");
	exit(0);
}
