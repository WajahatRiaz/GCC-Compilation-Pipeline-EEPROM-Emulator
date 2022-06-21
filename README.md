
# Compilation Pipeline
When we convert a humand readable source code into a machine understandable binary code it goes through various stages which are given below:

1) Preprocessor
2) Compiler
3) Assembler
4) Linker

![image](https://user-images.githubusercontent.com/61377755/174866211-bfecf402-0fe6-43e9-a1f2-b8d42855c4d7.png)

## Preprocessor 
**Step 1**: generating the translation unit
```
gcc -E other.c 
```

## Compiler
**Step 2** : generate an assembly file
```
gcc -S other.c
```

## Assembler
**Step 3**: to create a relocatable object file
``` 
as other.s -o other.o
```
**Step 4**: you can directly create the relocatable object file 
```
gcc -c main.c -o main.o 
```

## Linker
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
