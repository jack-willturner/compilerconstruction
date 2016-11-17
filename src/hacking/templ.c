#include <stdio.h>
#include <stdlib.h>

void print(int x)
{
  printf("%d\n", x);
  exit(0);
}

int plus5(int x)
{
    return (x + 5);
}

int main ()
{
    int myInt;
    scanf("%d", &myInt);
    plus5(myInt);
    return 1;
}

