SRC = $(wildcard src/*.cr)

all :
	crystal run $(SRC)
