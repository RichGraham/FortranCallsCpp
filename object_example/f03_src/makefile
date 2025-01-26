SRCS = crectangle_module.f03
FC := gfortran

OFILES = $(SRCS:.f03=.o)
MODFILES = $(SRCS:.f03=.mod)

NAME = libfrectangle.a

FCFLAGS = -L../c++_src -lcrectangle -lstdc++

all: $(NAME)

$(NAME): $(OFILES)
	$(AR) $(FLFLAGS) -r $@ $?
# $(FC) -o $(NAME) $(OFILES) -L../c++_src -lcrectangle -lstdc++

%.mod %.o : %.f03
	$(FC) -c $(FCFLAGS)  $< -o $@

clean:
	rm -f $(OFILES)
	rm -f $(MODFILES)
	rm -f $(NAME)

