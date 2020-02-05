%{
#include <stdio.h>
#include <stdlib.h>
int yylex();
void yyerror(const char *s);
%}

%token ID NUM SELECT DISTINCT FROM WHERE LE GE EQ NE OR AND LIKE GROUP HAVING ORDER ASC DESC
%right '='
%left AND OR
%left '<' '>' LE GE EQ NE

%%

    S		: S1';' { printf("\nPassed \n\n");exit(0); };
   
    S1     	: SELECT attbts FROM tables S2
           	| SELECT DISTINCT attbts FROM tables S2
               	;
    S2     	: WHERE COND S3
               	| S3
               	;
    S3     	: GROUP attbts S4
               	| S4
               	;
    S4     	: HAVING COND S5
               	| S5
               	;
    S5     	: ORDER attbts S6
               	|
               	;
    S6     	: DESC
               	| ASC
               	|
               	;
    attbts 	: ID','attbts
               	| '*'
               	| ID
               	;
    tables    	: ID',' tables
               	| ID
               	;
    COND    	: COND OR COND
               	| COND AND COND
               	| E
               	;
    E         	: F '=' F
               	| F '<' F
              	| F '>' F
               	| F LE F
               	| F GE F
               	| F EQ F
               	| F NE F
               	| F OR F
               	| F AND F
               	| F LIKE F
               	;
    F         	: ID
              	| NUM
               	;

%%

#include"lex.yy.c"
#include<ctype.h>

int main()
{
    printf("\nEnter SQL Query:\n\n");
    yyparse();
    return 0;
} 
