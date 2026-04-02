#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(){
    FILE *f1;
    f1=fopen("hello.txt","w");
    fprintf(f1,"%s","hello world...\n");
    fclose(f1);
    return 0;
}