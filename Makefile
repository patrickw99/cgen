OBJS	= main.o cgen.o dice.o 
SOURCE	= main.bas cgen.bas dice.bas 
HEADER	= cgen.bi dice.bi tables.bi
OUT	= 
CC	 = fbc
FLAGS	 = -exx -g 
LFLAGS	 = 

all: $(SOURCE)
	$(CC) $(FLAGS)  $(SOURCE)  $(LFLAGS)

#main.o: main.bas
#	$(CC) $(FLAGS) main.bas

#cgen.o: cgen.bas
#	$(CC) $(FLAGS) cgen.bas

#dice.o: dice.bas
#	$(CC) $(FLAGS) dice.bas 



clean:
	rm -f $(OBJS) $(OUT)
