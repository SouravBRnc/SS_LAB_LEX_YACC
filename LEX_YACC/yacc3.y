%{
#include<ctype.h>
#include<stdio.h>
%}
%token NAME NUMBER
%left '+' '-'
%left '*' '/'
%%
statement: NAME'='E
|E	{printf("=%d\n",$1);return 0;};
E:	E'+'E {$$=$1+$3;}|
	E'-'E {$$=$1-$3;}|
	E'*'E {$$=$1*$3;}|
	E'/'E
		{if($3==0){
			yyerror("Divide by zero error\n");
		}
		else{
			$$=$1/$3;
		}
		}
	|
	NUMBER	{$$=$1;};
%%
void main(){
	printf("Enter an expression: ");
	yyparse();
//	printf("valid\n");
}
void yyerror(char s[]){
	printf(s);
	exit(0);
}
