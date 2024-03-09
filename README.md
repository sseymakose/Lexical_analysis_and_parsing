This program language was created by Şeyma Köse using Lex and Yacc. 
I have added the necessary explanations to the file. You can use the following commands to test the program. 
> lex language.l 
> yacc -d language.y 
> gcc -o run lex.yy.c y.tab.c -ll 
> ./run<example.language
