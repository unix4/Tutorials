#include <stdio.h>

int main(){
    char name[30];
    int age;
    printf("What's your name and age?\n");
    scanf("%s %d", name, &age);
    printf("Hello %s, nice to meet you!\n", name);

    return 0;
}
