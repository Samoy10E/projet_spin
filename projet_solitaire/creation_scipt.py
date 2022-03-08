# -*- coding: utf-8 -*-

def creer_plateau(nomFichier):

    with open("plateau/{}.txt".format(nomFichier), "r") as fichierPlateau:
        plateauTXT = fichierPlateau.readlines()

    plateau = "bit plateau[][] = {\t"
    pions = "bit pion[][] = {\t"

    for j,ligne in enumerate(plateauTXT):
        if j!=0:
            plateau += "\t\t\t\t\t"
            pions += "\t\t\t\t\t"

        plateau += "{"
        pions += "{"

        for i,case in enumerate(ligne[:-1]):
            if case == "O":
                plateau += " 1"
                pions += " 1"
            elif case == "V":
                plateau += " 1"
                pions += " 0"
            elif case == "X":
                plateau += " 0"
                pions += " 0"


            if i<len(ligne)-1:
                plateau += ","
                pions += ","

        plateau += "}"
        pions += "}"
        if j<len(plateauTXT)-1:
            plateau += "\n"
            pions += "\n"

    plateau += "};\n"
    pions += "};\n"

    return plateau, pions



