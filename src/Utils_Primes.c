#include <stdio.h>
#include <math.h>

int isPrime(int value)
{
    if (value <= 2)
        return (value < 2) ? 0 : 1;
    if (value % 2 == 0)
        return 0; // si notre valeur est paire elle n'est pas première
    int n = sqrt(value);
    for (int i = 3; i <= n; i += 2)
        if (value % i == 0)
            return 0;
    return 1;
}

int main()
{
    printf("Ce programme permet d'afficher toutes les valeurs premières dans un intervalle donnée.\nVeuillez saisir la borne maximale de cet intervalle:\n");
    int borneMax = 50; // on donne une valeur par défaut
    scanf("%u", &borneMax);

    printf("Voici les nombres premiers compris dans l'intervalle [3-%u]: \n", borneMax);
    for (int i = 3; i < borneMax; i++)
    {
        if (isPrime(i))
            printf("%u\n", i);
    }

    return 0;
}
