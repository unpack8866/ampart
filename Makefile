GIT_VERSION := "$(shell git log --format="%H" -n 1)"

all: ampart
ampart: ampart.c
	$(CC) -DVERSION=\"git-$(GIT_VERSION)\" $(CFLAGS) $(LDFLAGS) -Wall -Wextra ampart.c -lz -o ampart