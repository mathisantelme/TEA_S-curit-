#include <stdio.h>
#include <math.h>

int main()
{
   printf("Soit une équation du second degré sous la forme suivante:\n\t ax² + bx + c\n");
   double a, b, c;

   // on récupère les valeurs
   printf("a: ?");
   scanf("%lf", &a);
   printf("b: ?");
   scanf("%lf", &b);
   printf("c: ?");
   scanf("%lf", &c);

   // on affiche l'équation saisie
   printf("\nOn utilise l'équation suivante: %lfx² + %lfx + %lf\n", a, b, c);

   // on calcule le discriminant
   double delta = b * b - 4 * a * c;
   printf("On obtient la valeur suivante pour le discriminant: %lf\n", delta);

   // on calcule les racines correspondantes
   if (delta > 0)
   {
      printf("Il existe deux racines réelles de l'équation telles que r1= %lf et r2= %lf\n", (-b - sqrt(delta)) / 2 * a, (-b + sqrt(delta)) / 2 * a);
   }
   else if (delta == 0)
   {
      printf("Il existe qu'une seule racine réelle de l'équation telle que r= %lf\n", -b / 2 * a);
   }
   else
   {
      printf("Il n'existe aucune racines réelles pour l'équation spécifiée\n");
   }

   return 0;
}
