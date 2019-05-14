%{
#include<stdio.h>
int chars=0, words=0, spaces=0, lines=0, sc=0;
%}
%%
"\n"	{words++; lines++;}
" "	{words++; spaces++;}
[a-zA-Z0-9]	{chars++;}
.	{sc++;}
%%
void main(){
yyin = fopen("input_lex1.txt", "r");
yylex();
printf("Characters: %d\n",chars);
printf("Words: %d\n",words);
printf("Spaces: %d\n",spaces);
printf("Lines: %d\n",lines);
printf("Special Characters: %d\n",sc);
}
