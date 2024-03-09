%{
#include <stdio.h>
#include <stdlib.h>
#include "y.tab.h"
void yyerror(char *);
%}
start start
condition condition
else else
left_par "("
right_par ")"
coma ","
dot "."
colon ":"
comment  \*
exit >>
non_zero_digit [1-9]
digit [0-9]
sign [+-]
number {non_zero_digit}{digit}*
assign -->
identifier [A-Za-z][A-Za-z0-9]*
loop "while"
for "for"
function "func"
multiplication ".*"
division "./"
addition ".+"
subtraction ".-"
equal ".="
not_equal ".!"
greater_or_equal ".>="
lower_or_equal ".<="
greater ".>"
lower ".<"
or "\\"
and "^^"
int {sign}?{number}
end_st end_st

%option yylineno
%%
 /*Return the tokens*/
{start} return START;
{condition} return CONDITION;
{else} return ELSE;
{left_par}  return LP;
{right_par}  return RP;
{coma}           return COMMA;
{dot}             return DOT;
{colon}           return COLON;
{comment}    		return COMMENT;
{exit}				return EXIT;
{assign}       		return ASSIGN;
{loop}              return LOOP;
{for}               return FOR;
{function}          return FUNCTION;
{multiplication}	return MULT;
{division}			return DIV;
{addition}			return PLUS;
{subtraction}		return MINUS;
{equal}             return EQUAL;
{not_equal}         return NOT_EQUAL;
{greater_or_equal}   return GREATER_OR_EQUAL;
{lower_or_equal}     return LOWER_OR_EQUAL;
{greater}            return GREATER;
{lower}              return LOWER;
{or}                 return OR;
{and}                return AND;
{identifier}         return IDENTIFIER;
{int}				return INTEGER;
{end_st}			return END;
%%

int yywrap(void){
	return 1;
}
