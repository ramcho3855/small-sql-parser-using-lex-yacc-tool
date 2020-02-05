/* author@rama*/
/* date Tue Jan 28,2020*/

/*constants*/

/*All alphabets*/
alpha [A-Za-z]
/*digits like 0,1,2...,9*/
digit [0-9]

%%

[ \t\n]                                             /*ignore whitespaces*/
(?i:select)                 return SELECT;
(?i:distinct)               return DISTINCT;
(?i:from)                   return FROM;
(?i:where)                  return WHERE;
(?i:like)                   return LIKE;
(?i:desc)                   return DESC;
(?i:asc)                    return ASC;
"group by"                  return GROUP;
(?i:having)                 return HAVING;
"order by"                  return ORDER;
or                          return OR;
and                         return AND;
{digit}+                    return NUM;
{alpha}({alpha}|{digit})*   return ID;
"<="                        return LE;
">="                        return GE;
"=="                        return EQ;
"!="                        return NE;
.                           return yytext[0];       /*anything else*/

%%
