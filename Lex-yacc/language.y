%{
#include <stdio.h>
#include <stdlib.h>
int yylex(void);
void yyerror(char* s);
%}

// ---Do the Token assignments below----
%token START
%token CONDITION
%token ELSE 
%token LP
%token RP
%token COMMA
%token DOT
%token INTEGER
%token FLOAT
%token COLON
%token SEMICOLON
%token COMMENT
%token ASSIGN
%token EXIT
%token LOOP
%token FOR
%token FUNCTION
%token EQUAL
%token NOT_EQUAL
%token GREATER_OR_EQUAL
%token LOWER_OR_EQUAL
%token GREATER
%token LOWER
%token PLUS
%token MINUS
%token DIV
%token MULT
%token OR
%token AND
%token IDENTIFIER
%token END

//%start program
%start program
%left ASSIGN
%left OR AND
%left EQUAL NOT_EQUAL
%left GREATER_OR_EQUAL LOWER_OR_EQUAL
%left GREATER LOWER
%left PLUS MINUS
%left MULT DIV

%%

//Start Rule

//Program
program:
    START LP RP statements END LP RP
    ;


statements:
    statement
   	| statement COLON statements
	;
	
statement:
	COMMENT 
	|assignment
	|expr
	|loops 
	|conditional_stmt
	;
	
assignment:
	IDENTIFIER ASSIGN args_type;
	
expr:
	INTEGER LOWER INTEGER
	|INTEGER GREATER INTEGER 
	|INTEGER LOWER_OR_EQUAL INTEGER 
	|INTEGER GREATER_OR_EQUAL INTEGER 
	|IDENTIFIER LOWER IDENTIFIER
	|IDENTIFIER GREATER IDENTIFIER
	|IDENTIFIER LOWER_OR_EQUAL IDENTIFIER
	|IDENTIFIER GREATER_OR_EQUAL IDENTIFIER
	|IDENTIFIER AND IDENTIFIER
	|IDENTIFIER OR IDENTIFIER
	|IDENTIFIER EQUAL IDENTIFIER
	|IDENTIFIER NOT_EQUAL IDENTIFIER
    |IDENTIFIER PLUS IDENTIFIER
    |IDENTIFIER MINUS IDENTIFIER
    |IDENTIFIER MULT IDENTIFIER
    |IDENTIFIER DIV IDENTIFIER
    |INTEGER PLUS INTEGER
    |INTEGER MINUS INTEGER
    |INTEGER MULT INTEGER
    |INTEGER DIV INTEGER
    |FLOAT PLUS FLOAT
    |FLOAT MINUS FLOAT
    |FLOAT MULT FLOAT
    |FLOAT DIV FLOAT
    ;
	



// ******* LOOPS *********
loops:
	loop_stmt
	|for_stmt
	;

loop_stmt: 
	LOOP COLON funct_call EXIT;
	
funct_call:
	IDENTIFIER COLON args EXIT;
	
args:
	composite_args;
composite_args:
	args_type COMMA composite_args
	|args_type
	;

args_type:
	INTEGER
	|FLOAT
	;


for_stmt: 
	FOR COLON expr EXIT; 

 
//********* Conditional Statement ******//
conditional_stmt: 
	CONDITION COLON funct_call EXIT
	|ELSE COLON statement EXIT
	;


	
%%

void yyerror(char *s) {
	fprintf(stdout, "line: %s\n",s);
}
int main(void){
	yyparse();
	if(yynerrs < 1){
		printf("Parsing: SUCCESSFUL!\n");
	}
 	return 0;
}



