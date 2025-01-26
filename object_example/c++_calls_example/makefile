CFILES = c++_calls.cpp

OFILES = $(CFILES:.cpp=.o)

CC = g++
CFLAGS = -L../c++_src -lcrectangle

NAME = calls.out

all :
	$(MAKE) -C ../c++_src
	$(MAKE) self

self : $(NAME)

$(NAME): $(OFILES)
	$(CC) -o $(NAME) $(OFILES) $(CFLAGS)

clean:
	$(MAKE) -C ../c++_src clean
	rm -f $(OFILES)
	rm $(NAME)

fclean:
	clean rm -f $(NAME)

re: fclean $(NAME)

.PHONY:  all clean fclean re