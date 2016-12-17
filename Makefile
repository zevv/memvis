
BIN   	= memvis
SRC 	= main.c

CFLAGS  += -Wall -O3 -g `pkg-config --cflags sdl`
LDFLAGS += -g `pkg-config --libs sdl` -lm

CROSS	=
OBJS    = $(subst .c,.o, $(SRC))
CC 	= $(CROSS)gcc
LD 	= $(CROSS)gcc

.c.o:
	$(CC) $(CFLAGS) -c $<

$(BIN):	$(OBJS)
	$(LD) $(LDFLAGS) -o $@ $(OBJS)

clean:	
	rm -f $(OBJS) $(BIN) core
	
