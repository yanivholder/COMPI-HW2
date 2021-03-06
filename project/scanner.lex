%{

/* Declarations section */
#include "output.hpp"
#include "parser.tab.hpp"
using namespace output;
%}

%option yylineno
%option noyywrap

digit           ([0-9])
nonzerodigit    ([1-9])
letter          ([a-zA-Z])
whitespace      ([\t\n ])

%%

void                        return VOID;
int                         return INT;
byte                        return BYTE;
b                           return B;
bool                        return BOOL;
and                         return AND;
or                          return OR;
not                         return NOT;
true                        return TRUE;
false                       return FALSE;
return                      return RETURN;
if                          return IF;
else                        return ELSE;
while                       return WHILE;
break                       return BREAK;
continue                    return CONTINUE;
switch                      return SWITCH;
case                        return CASE;
default                     return DEFAULT;
:                           return COLON;
;                           return SC;
,                           return COMMA;
\(                          return LPAREN;
\)                          return RPAREN;
\{                          return LBRACE;
\}                          return RBRACE;
=                           return ASSIGN;
==|!=                       return RELOP_EQ;
\<|\>|\<=|\>=                   return RELOP_REL;
\+|\-                       return BINOP_ADD;
\*|\/                       return BINOP_MUL;
{letter}({letter}|{digit})* return ID;
0|({nonzerodigit}{digit}*)  return NUM;
\"([^\n\r\"\\]|\\[rnt\"\\])+\"	return STRING;




[\t\r\n ]                ;
\/\/[^\r\n]*(\r|\n|\r\n)?  ;


.                           {errorLex(yylineno); exit(1);}

%%
