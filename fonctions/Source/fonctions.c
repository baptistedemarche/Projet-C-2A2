#include "fonctions.h"

//on retire \n de la chaine de caractère et on le remplace par \0
void withoutN(char *pwdType){
    if(pwdType[strlen(pwdType) - 1 ] == '\n'){
        pwdType[strlen(pwdType) - 1 ] = '\0';
    }
}


