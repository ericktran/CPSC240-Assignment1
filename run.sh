rm *.o
rm *.out
echo "Assemble hello.asm"
nasm -f elf64 -l hello.lis -o hello.o hello.asm
echo "Compile welcome.c"
gcc -c -Wall -m64 -no-pie -o welcome.o welcome.c -std=c11
echo "Link the two 'O' files welcome.o and hello.o"
gcc -m64 -std=c11 -o welcome.out hello.o welcome.o -fno-pie -no-pie

echo "Next the program 'Hello' will run"
./welcome.out
