#include <stdio.h>
#include "header.h"

#define SIZE 4


int main(){

    uint8_t table [SIZE];
    uint8_t rx_buffer[SIZE];
    uint8_t tx_buffer[SIZE]={0x3a,0x26,0x27,8};
    uint8_t *ptr= &table[0];
    int offset=0;
    
    
    for(int i=0;i<SIZE;i++){

        write(ptr, tx_buffer[i], offset);
        offset++;

    }

    offset=0;

    for(int i=0;i<SIZE;i++){

        read(ptr, rx_buffer[i], offset);
        offset++;

    }
    return 0;
}


