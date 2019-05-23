program : main.o
	g++ $? -o $@ -lglfw -lGLEW -lGL

main.o : main.cpp
	g++ $? -c 

.PHONY : clean
clean :
	rm main.o