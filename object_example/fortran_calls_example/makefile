VPATH = ./
# Find all source files, create a list of corresponding object files
SRCS= fortran_calls.f03
OBJS=$(patsubst %.f03,%.o,$(SRCS))

# Ditto for mods (They will be in both lists)
MODS=$(wildcard mod*.f03)
MOD_OBJS=$(patsubst %.f03,%.o,$(MODS))

# Compiler/Linker settings
FC = gfortran
FCFLAGS =  -I../f03_src -O2 -c -cpp
#FCFLAGS = -O2  -c -cpp    -fcheck=bounds #-fmax-errors=5
FLFLAGS =  -L../f03_src -lfrectangle -L../c++_src -lcrectangle -lstdc++
PROGRAM = fortran.out
PRG_OBJ = $(PROGRAM).o

# make without parameters will make first target found.

default:
	$(MAKE) programme

programme :$(PROGRAM)

all:
	$(MAKE)



# Compiler steps for all objects
$(OBJS) : %.o : %.f03
	$(FC) $(FCFLAGS) -o $@ $<

# Linker
$(PROGRAM) : $(OBJS)
	$(FC) $(FLFLAGS) -o $@ $^

# If something doesn't work right, have a 'make debug' to
# show what each variable contains.
debug:
	@echo "SRCS = $(SRCS)"
	@echo "OBJS = $(OBJS)"
	@echo "MODS = $(MODS)"
	@echo "MOD_OBJS = $(MOD_OBJS)"
	@echo "PROGRAM = $(PROGRAM)"
	@echo "PRG_OBJ = $(PRG_OBJ)"

clean:
	$(RM) *.o *.mod *.a  *.inc
	$(RM) $(PROGRAM)
	$(MAKE) -C ../f03_src clean

.PHONY: debug default clean

# Main program depends on all modules
$(PRG_OBJ) : $(MOD_OBJS)

# Blocks and allocations depends on shared
mod_blocks.o mod_allocations.o : mod_shared.o
