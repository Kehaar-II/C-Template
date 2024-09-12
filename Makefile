MAKEFLAGS += --no-print-directory

NAME =	tmp.out

SRC = 	src/main.c \
		src/open.c \
# endSource

TEST_SRC = $(filter-out main.c, $(SRC))

INCLUDE_DIR = .

CFLAGS =  -I$(INCLUDE_DIR)

OBJ =	$(SRC:.c=.o)

OBJ_TEST =	$(TEST_SRC:.c=.o)

LIB_PATH =	./lib

all: $(OBJ)
	@echo -e -n "\033[0;33m"
	gcc -o $(NAME) $(OBJ) $(CFLAGS)
	@tput init

clean:
	@echo -e -n "\033[1;31m"
	rm -f $(OBJ) unit_tests*
	@tput init

fclean: clean
	@echo -e -n "\033[1;31m"
	rm -f $(NAME) vgcore* a.out .save
	@tput init

re: fclean all

.PHONY: all clean fclean re

debug: CFLAGS += -g
debug:
	@echo -e -n "\033[0;33m"
	gcc -o $(NAME) $(SRC) $(CFLAGS)
	@tput init

# replace
# @tput init
# with
# @echo -e -n "\033[0;37m"
# if it ever causes problems
