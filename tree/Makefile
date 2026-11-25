CFLAGS   = -Wall -Wextra -g
CPPFLAGS = -Iglad/include
LDLIBS   = -lglfw
SRCS     = main.c glad/src/gl.c
OBJS     = $(SRCS:.c=.o)
BIN      = app

.PHONY: all clean

all: $(BIN)

$(BIN): $(OBJS)
	$(CC) $^ -o $@ $(LDLIBS)

clean:
	rm -f $(BIN) $(OBJS)

