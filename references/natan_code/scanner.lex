%{

/* Declarations section */
#include "parser.tab.hpp"
#include "output.hpp"
using namespace output;

%}

%option yylineno
%option noyywrap
digit   		([0-9])
letter  		([a-zA-Z])
whitespace		([\t\n ])

%%

{whitespace}                    ;
void														return VOID;
int											  		  return INT;
byte											  		return BYTE;
b											  				return B;
bool										  			return BOOL;
set                             return SET;
and											  			return AND;
or															return OR;
not											  			return NOT;
true										  	  	return TRUE;
false										  			return FALSE;
return										  		return RETURN;
if										  				return IF;
else										  			return ELSE;
while										  			return WHILE;
break										  			return BREAK;
continue												return CONTINUE;
\;							 								return SC;
\,															return COMMA;
\(															return LPAREN;
\)															return RPAREN;
\{															return LBRACE;
\}															return RBRACE;
\[															return LBRACKET;
\]															return RBRACKET;
=											 					return ASSIGN;
==|!=				                    return RELOP_left;
\<|\>|\<=|\>=|in				        return RELOP_nonass;
\*|\/ 									        return BINOP_mul;
\+|\-								            return BINOP_add;
\.\.                            return DOTS;
[a-zA-Z][a-zA-Z0-9]*						return ID;
0|[1-9][0-9]*										return NUM;
\"([^\n\r\"\\]|\\[rnt"\\])+\"		return STRING;
\/\/[^\r\n]*[\r|\n|\r\n]?				;
.																{errorLex(yylineno); exit(1); }


%%

