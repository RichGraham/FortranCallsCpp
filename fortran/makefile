SRCS = testF.f03

OFILES = $(SRCS:.f03=.o)

FC = gfortran

NAME = test.out

all: $(NAME)

$(NAME): $(OFILES)
	$(FC) -o $(NAME) $(OFILES) -L../c++ -lcfun

%.mod %.o : %.f03
	$(FC) -c   $< -o $@

clean:
	rm -f $(OFILES)
	rm $(NAME)

