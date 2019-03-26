#include <stdio.h>

int main()
{
	double n; // nombre d'itération et controle
	double pi = 4;
	int p;

	printf("Approximation de Pi\n");
	printf("\nEntrer le nombre d'itérations : ");
	scanf("%lf", &n);
	printf("\nEntrer la précision souhaitée : ");
	scanf("%u", &p);
	printf("\nCalcul en cours...\n");

	for (double i = 3; i <= (n + 2); i += 2)
		pi *= ((i - 1) / i) * ((i + 1) / i);

	printf("\nAppriximation de pi = %.*f\n", p, pi);
	return 0;
}
