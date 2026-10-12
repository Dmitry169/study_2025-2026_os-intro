#include <stdio.h>
#include <stdlib.h>
int main(void) {
    int n;
    printf("Введите целое число: ");
    if (scanf("%d", &n) != 1) { exit(3); }
    if (n > 0) { exit(1); }
    else if (n < 0) { exit(2); }
    else { exit(0); }
}
