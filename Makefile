##
## EPITECH PROJECT, 2022
## B-ASM-400-MAR-4-1-asmminilibc-mohamed.mansour
## File description:
## Makefile
##

SRCS	=	strlen.asm	\
			strchr.asm	\
			strrchr.asm	\
			memset.asm	\
			memcpy.asm	\
			strcmp.asm	\


OBJ	=	 $(SRCS:.asm=.o)

NAME	=	libasm.so

all: $(NAME)

$(NAME):	$(OBJ)
	@ld	-shared	-nostdlib	-fPIC	-o	$(NAME)	$(OBJ)
	gcc -fno-builtin	main.c	libasm.so	-o	minilib

%.o:	%.asm
	@nasm	-f	elf64	$<	-o	$@

clean:
	rm	-f	$(OBJ)

fclean:	clean
	rm	-f	$(NAME)

re:	fclean	all

.PHONY:	all	clean	fclean	re