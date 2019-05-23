program : main.o loadShader.o
	g++ $? -o $@ -lglfw -lGLEW -lGL

loadShader.o : loadShader.cpp loadShader.hpp
	g++ $< -c -I./

main.o : main.cpp
	g++ $< -c 

.PHONY : clean
clean :
	rm main.o