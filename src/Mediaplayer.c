#include <stdlib.h>
#include <stdio.h>

int main(int argc, char const *argv[])
{
    // on appelle le visionneur d'image par défaut du systeme
    system("xdg-open ananas.png");
    printf("salut\n\n");
    return 0;
}
