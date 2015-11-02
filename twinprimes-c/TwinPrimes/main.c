//
#include <stdio.h>
#include <stdlib.h>

void printTwinPrimesToN(unsigned long);

int main(int argc, const char * argv[]) {
    printTwinPrimesToN(1000000);
    return 0;
}

void printTwinPrimesToN(unsigned long n){
    
    unsigned long *pointer;
    unsigned long length = 1;
    pointer = malloc(length * sizeof(unsigned long));
    if(pointer==NULL){ printf("Error allocating memory"); return; }
    
    pointer[0] = 2;
    for(unsigned long x = 3; x < n; x = x + 2){
    //for(unsigned long x = 3; x < n; x++){
        int isPrime = 1;
        for(unsigned long i = 0; i < length; i++){
            if(isPrime == 1 && x % pointer[i] == 0)
            {
                isPrime = 0;
            }
        }
        if(isPrime){
            unsigned long *temp = realloc(pointer, (++length * sizeof(unsigned long)));
            if(temp != NULL) { pointer = temp; } else { return; }
            pointer[length - 1] = x;
            if(pointer[length - 1] - pointer[length - 2] == 2){
                printf("<%lu,%lu>\n",pointer[length - 2],(pointer[length - 1]));
            }
        }
    }
    free(pointer);
}