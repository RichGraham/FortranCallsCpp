CFILES = crectangle_class.cpp

OFILES = $(CFILES:.cpp=.o)

CC = g++
CFLAGS = -Wall -Wextra -Werror

NAME = libcrectangle.a

all: $(NAME)

$(NAME): $(OFILES)
	ar rcs $(NAME) $(OFILES)

clean:
	rm -f $(OFILES)
	rm $(NAME)

fclean:
	clean rm -f $(NAME)

re: fclean $(NAME)

.PHONY:  all clean fclean re