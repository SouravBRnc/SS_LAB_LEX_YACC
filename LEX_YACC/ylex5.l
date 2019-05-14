%{
#include<stdio.h>
#include"y.tab.h"
%}
%%
[0-9][0-9][0-9]+	{return OKAY;}
.	{return yytext[0];}
%%
