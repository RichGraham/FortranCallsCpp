CFILES = c++_calls.cpp

OFILES = $(CFILES:.cpp=.o)

CC = g++
CFLAGS = -L../c++_src -lcrectangle

NAME = calls.out

all: $(NAME)

$(NAME): $(OFILES)
	$(CC) -o $(NAME) $(OFILES) $(CFLAGS)

clean:
	rm -f $(OFILES)
	rm $(NAME)

fclean:
	clean rm -f $(NAME)

re: fclean $(NAME)

.PHONY:  all clean fclean re