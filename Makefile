CC=$(CROSS_COMPILE)gcc
CFLAGS=-Ofast 
LDFLAGS=-static -s

ALL:
	$(CC) $(CFLAGS) -c unpackbootimg.c
	$(CC) $(CFLAGS) -c mkbootimg.c
	$(CC) $(LDFLAGS) -o mkbootimg mkbootimg.o
	$(CC) $(LDFLAGS) -o unpackbootimg unpackbootimg.o

clean:
	rm *.o mkbootimg unpackbootimg
	
