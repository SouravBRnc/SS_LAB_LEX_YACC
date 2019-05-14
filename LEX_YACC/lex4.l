%{
#include<stdio.h>
int vowels=0,consonants=0,numbers=0,sc=0,lines=0;
%}
%%
"a"|"e"|"i"|"o"|"u"|"A"|"I"|"O"|"E"|"U" {vowels++;}
[a-zA-Z]	{consonants++;}
"\n" {lines++;}
[0-9]+	{numbers++;}
" "	{;}
.	{sc++;}
%%
void main(){
	yyin=fopen("input_lex4.txt","r");
	yylex();
	printf("number of vowels: %d\n",vowels);
	printf("number of consonants: %d\n",consonants);
	printf("number of numbers: %d\n",numbers);
	printf("number of special characters: %d\n",sc);
	printf("number of lines: %d\n",lines);
}
