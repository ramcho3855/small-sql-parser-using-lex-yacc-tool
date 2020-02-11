/* author@rama*/
/* date Tue Jan 28,2020*/

/*constants*/

alpha [A-Za-z]
digit [0-9]

%%

[ \t\n]                                     /*ignore whitespaces*/
not		                return NOT;
select                  return SELECT;
distinct                return DISTINCT;
from                    return FROM;
where                   return WHERE;
like                    return LIKE;
desc                    return DESC;
asc                     return ASC;
"group by"              return GROUP;
having                  return HAVING;
"order by"              return ORDER;
or                      return OR;
and                     return AND;
{digit}+                return NUM;
"<"		                return '<';
">"		                return '>';
"="		                return '=';
"("		                return '(';
")"		                return ')';
"*"		                return '*';
","		                return ',';
"<="                    return LE;
">="                    return GE;
"=="                    return EQ;
"!="                    return NE;
limit		            return LIMIT;
min		                return MINI;
max		                return MAXI;
sum		                return SUM;
count		            return COUNT;
avg		                return AVG;
between		            return BETWEEN;
innerjoin	            return INNERJOIN;
leftjoin 	            return LEFTJOIN;
rightjoin 	            return RIGHTJOIN;
fullouterjoin 	        return FULLOUTERJOIN;
on 	                    return ON;
exists	                return EXISTS;
all	                    return ALL;
any  	                return ANY;
table  	                return TABLE;
drop  	                return DROP;
create  	            return CREATE;
delete  	            return DELETE;
insert	                return INSERT;
into	                return INTO;
values	                return VALUES;
operator	            return OPERATOR;
update                  return UPDATE;
set                     return SET;
{alpha}({alpha}|{digit})* return ID;
.                       return yytext[0];   /*anything else*/

%%