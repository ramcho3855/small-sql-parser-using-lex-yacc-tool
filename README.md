#### **statements covered by the parser**
1. Create table statemnt
2. Insert statement
3. Update table statement
4. Delete table statement
5. Drop table statement
6. Select statement


##
**This parser takes input(SQL query) from command line on at a time followed by a ';'.
Output will be success with parse tree or syntax error.**
##

####**Commands to run the parser**

`$ lex lex.l`

`$ yacc yacc.y`

`$ gcc y.tab.c -ll -ly`

`$ ./a.out`

