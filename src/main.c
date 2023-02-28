#include <stdio.h>

char string[] = "Hello World.";

void change_string();

int main()
{
    printf("String: %s\n", string);

    change_string();

    printf("String: %s\n", string);
}

