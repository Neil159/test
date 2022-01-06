##
## EPITECH PROJECT, 2021
## Makefile
## File description:
## My own Makefile
##

LIB    =    ./lib/str_to_long.c \
			./lib/my_put_numbers.c \
			./lib/my_str_funct.c \
			./lib/str_to_int.c \
			./lib/my_put_funct.c \
			./lib/nbrs_cmp.c \
			./src/declare_p.c \
			./src/runner.c \
			./src/set_p1.c \
			./src/set_p2.c \
			./src/man.c \
			./src/action.c \
			./src/man2.c \
			./src/menu.c \
			./src/set_window.c \
			./src/text.c \
			./src/map.c \
			./src/liste.c

OBJ    =    $(LIB:.c=.o)

NAME    =    myrunner

CFLAGS    =    -I./include -g3
LDFLAGS += -l csfml-graphics -l csfml-window -l csfml-system -l csfml-audio

all:    $(NAME)

$(NAME):    $(OBJ)
		gcc -o $(NAME) $(OBJ) -g3 $(CFLAGS) $(LDFLAGS)

clean:
	rm -f $(OBJ)
	rm -f *~

fclean:    clean
	rm -f $(NAME)

re:	fclean all

.PHONY: all    clean    fclean    re