#include "header.h"
#include "stdio.h"


void write(uint8_t *address, uint8_t data, int offset){
    address+=offset;
    *address=data;
    printf("WRITE-> %p: %d \n",address,*address);
}

void read(uint8_t *address, uint8_t data,int offset ){
    address+=offset;
    data=*address;
    printf("READ-> %p: %d \n",address,*address);
}