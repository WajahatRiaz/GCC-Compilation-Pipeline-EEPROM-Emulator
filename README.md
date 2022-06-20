

**Step 1**: generating the translation unit
```
gcc -E other.c 
```
**Step 2** : generate an assembly file
```
gcc -S other.c
```
**Step 3**: to create a relocatable object file
``` 
as other.s -o other.o
```
**Step 4**: you can directly create the relocatable object file 
```
gcc -c main.c -o main.o 
```
**Step 5**: linking the relocatable object files to create a binary executable
```
ld other.o main.o
```
**Step 6**: generating the executable file
```
gcc other.o main.o
```
**Step 7**: running the executable file
```
./a.exe
```
