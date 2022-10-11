

FILES = teste mcombeau fractol novo frac2

all:
	clang fractol.c -lX11 -lXext -lmlx -Imlx -lXext -o fractol
	valgrind ./fractol

$(FILES):
	clang $@.c -lX11 -lXext -lmlx -Imlx -lXext -o fractol
#	valgrind --track-origins=yes --leak-check=full -s ./fractol
	./fractol

rm:
	rm -f fractol vgcore*
