/* A Bison parser, made by GNU Bison 3.5.1.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2020 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    START = 258,
    CONDITION = 259,
    ELSE = 260,
    LP = 261,
    RP = 262,
    COMMA = 263,
    DOT = 264,
    INTEGER = 265,
    FLOAT = 266,
    COLON = 267,
    SEMICOLON = 268,
    COMMENT = 269,
    ASSIGN = 270,
    EXIT = 271,
    LOOP = 272,
    FOR = 273,
    FUNCTION = 274,
    EQUAL = 275,
    NOT_EQUAL = 276,
    GREATER_OR_EQUAL = 277,
    LOWER_OR_EQUAL = 278,
    GREATER = 279,
    LOWER = 280,
    PLUS = 281,
    MINUS = 282,
    DIV = 283,
    MULT = 284,
    OR = 285,
    AND = 286,
    IDENTIFIER = 287,
    END = 288
  };
#endif
/* Tokens.  */
#define START 258
#define CONDITION 259
#define ELSE 260
#define LP 261
#define RP 262
#define COMMA 263
#define DOT 264
#define INTEGER 265
#define FLOAT 266
#define COLON 267
#define SEMICOLON 268
#define COMMENT 269
#define ASSIGN 270
#define EXIT 271
#define LOOP 272
#define FOR 273
#define FUNCTION 274
#define EQUAL 275
#define NOT_EQUAL 276
#define GREATER_OR_EQUAL 277
#define LOWER_OR_EQUAL 278
#define GREATER 279
#define LOWER 280
#define PLUS 281
#define MINUS 282
#define DIV 283
#define MULT 284
#define OR 285
#define AND 286
#define IDENTIFIER 287
#define END 288

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
