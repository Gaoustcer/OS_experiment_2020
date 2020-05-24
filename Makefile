#
# Students' Makefile for the Malloc Lab
#

CC = gcc -g
CFLAGS = -Wall



OBJS_mmdirver = memlib.o mmdriver.o mm.o
OBJS_ep_mmdriver = memlib.o ep_mmdriver.o ep_mm.o
OBJS_target_file = memlib.o mmdriver.o ep_mmdriver.o mm.o ep_mm.o
all : mmdriver ep_mmdriver
mmdriver : $(OBJS_mmdirver)
cc -o mmdriver $(OBJS_mmdirver)
ep_mmdriver : $(OBJS_ep_mmdriver)
cc -o ep_mmdriver $(OBJS_ep_mmdriver)
memlib.o : memlib.h config.h
mm_o : mm.h memlib.h
ep_mm.o : ep_mm.h memlib.h
mmdriver.o : mm.h memlib.h
ep_mmdriver.o : ep_mm.h memlib.h
.PHONY : clean
clean:
-rm mmdriver ep_mmdriver $(OBJS_target_file)
