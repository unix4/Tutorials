#include <stdio.h>

int main(){

    int a = 10;

    if (a <= 0)
        goto less_eq_0;
    a++;

less_eq_0:
    a *= 2;

    return 0;
}
