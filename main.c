#include "header.h"

#define SIZE 4


int main(){

    uint8_t table [SIZE];
    uint8_t rx_buffer[SIZE];
    uint8_t tx_buffer[SIZE]={3,6,7,8};
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


