%{
#include<stdio.h>
int top=-1,v=1,i=0,j=0;
char a[20],opt[20][10],opnd[20][10];
%}
%%
"(" {a[++top]='(';}
"{" {a[++top]='{';}
"[" {a[++top]='[';}
")" {
	if(a[top]=='(')
		top--;
	else{
		v=0;
		return;
	}
}
"}" {
	if(a[top]=='{')
		top--;
	else{
		v=0;
		return;
	}
}
"]" {
	if(a[top]=='[')
		top--;
	else{
		v=0;
		return;
	}
}
"+"|"-"|"*"|"/" {strcpy(opt[i++],yytext);}
[0-9]+|[_a-zA-Z]+[_a-zA-Z0-9]*	{strcpy(opnd[j++],yytext);}
%%
void main(){
	printf("enter an arithmetic expression\n");
	yylex();
	if(v && j>1){
		printf("Valid\n");
	}
	else{
		printf("Invalid\n");
	}
}









