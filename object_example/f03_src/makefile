SRCS = crectangle_module.f03
FC := gfortran

OFILES = $(SRCS:.f03=.o)
MODFILES = $(SRCS:.f03=.mod)

NAME = libfrectangle.a

FCFLAGS = -L../c++_src -lcrectangle -lstdc++

default:
	$(MAKE) -C ../c++_src
	$(MAKE) self

self: $(NAME)

$(NAME): $(OFILES)
	$(AR) $(FLFLAGS) -r $@ $?

%.mod %.o : %.f03
	$(FC) -c $(FCFLAGS)  $< -o $@

clean:
	$(MAKE) -C ../c++_src clean
	rm -f $(OFILES)
	rm -f $(MODFILES)
	rm -f $(NAME)
