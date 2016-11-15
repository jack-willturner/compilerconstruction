#include <stdio.h>
#include <stdlib.h>

void print(int x)
{
  printf("%d\n", x);
  exit(0);
}

int main ()
{
    int myInt;
    scanf("%d", &myInt);
    if(myInt <= 5) {
        print(3);
    } else {
        print(5);
    }
  return 1;
}
