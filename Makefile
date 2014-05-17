CC=$(CROSS_COMPILE)gcc
CFLAGS=-Ofast 
LDFLAGS=-static -s

ALL:
	$(CC) $(CFLAGS) -c libmincrypt/sha.c
	$(CC) $(CFLAGS) -c libmincrypt/rsa.c
	$(CC) $(CFLAGS) -c unpackbootimg.c
	$(CC) $(CFLAGS) -c mkbootimg.c
	$(CC) $(LDFLAGS) -o mkbootimg mkbootimg.o rsa.o sha.o
	$(CC) $(LDFLAGS) -o unpackbootimg unpackbootimg.o rsa.o sha.o

clean:
	rm *.o mkbootimg unpackbootimg
	
