%{
#include<stdio.h>
int iden=0,oper=0,comm=0,keys=0;
%}
%%
"/*".+"*/"|"//".+"\n"	{comm++;}
"+"|"-"|"*"|"/"	{ oper++;}
"switch"|"for"|"while"|"if"|"case" {keys++;}
[_a-zA-Z]+[_a-zA-Z0-9]*	{iden++;}
%%
void main(){
yyin = fopen("input_lex2.txt","r");
yylex();
printf("comments: %d\n",comm);
printf("operators: %d\n",oper);
printf("identifiers: %d\n",iden);
}
