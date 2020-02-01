APP = project-opengl
CC = g++
DCFLAGS = -std=c++11 -Wall -Wextra -Wconversion -Wshadow -Wno-sign-conversion -D_GLIBCXX_DEBUG
RCFLAGS = -std=c++11 -O3

BINDIR = bin
INCDIR = inc
SRCDIR = src

debug:
	$(CC) $(SRCDIR)/*.cpp -I $(INC) $(DCFLAGS) -o $(BINDIR)/debug/$(APP)
	./$(BINDIR)/debug/$(APP)

release:
	$(CC) $(SRCDIR)/*.cpp -I $(INC) $(RCFLAGS) -o $(BINDIR)/release/$(APP)
	./$(BINDIR)/release/$(APP)

clean:
	rm $(BINDIR)/debug/*
	rm $(BINDIR)/release/*