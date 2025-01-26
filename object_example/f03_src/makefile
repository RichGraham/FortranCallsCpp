SRCS = crectangle_module.f03

OFILES = $(SRCS:.f03=.o)

FC = gfortran

NAME = test.out

all: $(NAME)

$(NAME): $(OFILES)
	$(FC) -o $(NAME) $(OFILES) -L../c++_src -lcrectangle -lstdc++

%.mod %.o : %.f03
	$(FC) -c   $< -o $@

clean:
	rm -f $(OFILES)
	rm $(NAME)

