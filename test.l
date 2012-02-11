%{
#include<stdio.h>
#include<string.h>
#include<stdlib.h>
extern int yylval;
%}

tabnl 		[ \t]
space 		{tabnl}+
comment1 	"//".*\n
comment2 	\{[^\}]*\}
comment3 	\(\*[^\*\)]*\*\)
letter 		[A-Za-z_]
digit 		[0-9]
id 			{letter}({letter}|{digit})*
number 		{digit}+(\.{digit}+)?(E[-+]?{digit}+)?

%%
{comment1} 	{/*no action*/}
{comment2} 	{/*no action*/}
{comment3} 	{/*no action*/}
{space}		{printf(" ");}
\n		{printf("\n");}
and 		{printf("AND");} 
array 		{printf("ARRAY");}
begin 		{printf("BEGIN");}
break		{printf("BREAK");}
case 		{printf("CASE");}
class 		{printf("CLASS");}
const 		{printf("CONST");}
continue	{printf("CONTINUE");}
div 		{printf("DIV");}
do 		{printf("DO");}
downto 		{printf("DOWNTO");}
else 		{printf("ELSE");}
end 		{printf("END");}
exit 		{printf("EXIT");}
export 		{printf("EXPORT");}
false 		{printf("FALSE");}
for 		{printf("FOR");}
function 	{printf("FUNCTION");}
goto 		{printf("GOTO");}
if 		{printf("IF");}
in 		{printf("IN");}
integer|INTEGER|Integer		{printf("INTEGER");}
is 		{printf("IS");}
label 		{printf("LABEL");}
mod 		{printf("MOD");}
not 		{printf("NOT");}
of 		{printf("OF");}
operator	{printf("OPERATOR");}
or 		{printf("OR");}
pow 		{printf("POW");}
private 	{printf("PRIVATE");}
procedure 	{printf("PROCEDURE");}
program 	{printf("PROGRAM");}
public 		{printf("PUBLIC");}
record 		{printf("RECORD");}
repeat 		{printf("REPEAT");}
string 		{printf("STRING");}
then 		{printf("THEN");}
to 			{printf("TO");}
true		{printf("TRUE");}
type|TYPE|Type 		{printf("TYPE");}
until 		{printf("UNTIL");}
var 		{printf("VAR");}
while 		{printf("WHILE");}
with 		{printf("WITH");}
xor 		{printf("XOR");}

"+"		{printf("ADD");}
"-"		{printf("SUB");}
"*"		{printf("MULT");}
"="		{printf("ISEQUAL");}
"<>"		{printf("NE");}
">"		{printf("GT");}
"<"		{printf("LT");}
">="		{printf("GTE");}
"<="		{printf("LTE");}
":="		{printf("ASSIGNMENT");}
"~"		{printf("BNOT");}
"&"		{printf("BAND");}
"\|" 		{printf("BOR");}
\(		{printf("(");}
\)		{printf(")");}
":"		{printf("COLON");}
";"		{printf("SCOLON");}
","		{printf("COMMA");}
"\.\."		{printf("RANGE");}
"\["		{printf("[");}
"\]"		{printf("]");}
"\."		{printf("DOT");}
{number} 	{/*yylval.int_val = atoi( yytext );*/
							printf("NUMBER");}
{id} 		{/*yylval.id_ptr=yytext;*/ printf("IDENTIFIER");} 
%%

int yywrap() {
return 1;
}

