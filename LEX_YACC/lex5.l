%{
#include<stdio.h>
int pnums=0,nnums=0,pfracs=0,nfracs=0;
%}
%%
"-"[0-9]+"/"[0-9]+	{nfracs++;}
[0-9]+"/"[0-9]+	{pfracs++;}
"-"[0-9]+	{nnums++;}
[0-9]+	{pnums++;}
%%
void main(){
yyin=fopen("input_lex5.txt","r");
yylex();
printf("number of +ve numbers: %d\n",pnums);
printf("number of -ve numbers: %d\n",nnums);
printf("number of +ve fractions: %d\n",pfracs);
printf("number of -ve fractions: %d\n",nfracs);
}
