# -*- coding: utf-8 -*-
import os


def creer_plateau(nomFichier):
    with open("plateau/{}.txt".format(nomFichier), "r") as fichierPlateau:
        plateauTXT = fichierPlateau.readlines()

    plateau = ""
    pions = ""

    Nb_pion = 0
    placement_pion = []

    for i, ligne in enumerate(plateauTXT):
        for j, case in enumerate(ligne[:-1]):
            plateau += "plateau[{}] = ".format(i + j * len(plateauTXT))
            pions += "pions[{}] = ".format(i + j * len(plateauTXT))
            if case == "O":
                plateau += " 1"
                pions += " 1"
                Nb_pion += 1
                placement_pion.append((i, j))
            elif case == "V":
                plateau += " 1"
                pions += " 0"
                depart = [i, j]
            elif case == "X":
                plateau += " 0"
                pions += " 0"
            plateau += ";\n"
            pions += ";\n"

    dim = "int Imax = {};\n".format(len(plateauTXT[0]) - 1)
    dim += "int Jmax = {};\n".format(len(plateauTXT))
    dim += "int Nb_pion = {};\n".format(Nb_pion)
    dim += "bit plateau[{}] = 1;\n".format((len(plateauTXT[0]) - 1) * len(plateauTXT))
    dim += "bit pions[{}] = 1;\n".format((len(plateauTXT[0]) - 1) * len(plateauTXT))
    return dim, plateau, pions, placement_pion, depart



def creer_script(nomFichier):
    script = ""

    dim, plateau, pions, placement_pion, depart = creer_plateau(nomFichier)

    script += dim

    script += "#define succes (Nb_pion==1)\n"

    with open("proctype_main.pml", "r") as ficherProcPion:
        procMainTXT = ficherProcPion.readlines()

    for ligne in procMainTXT:
        script += ligne

    script += "init{\n"
    script += plateau
    script += pions
    script += "run main ({},{});\n".format(depart[0], depart[1])
    script += "\n}\n"

    fichier_solitaire = open("solitairesv2/solitaire_" + nomFichier + ".pml", "w")
    fichier_solitaire.write(script)
    fichier_solitaire.close()
    return script


creer_script("europeen")
