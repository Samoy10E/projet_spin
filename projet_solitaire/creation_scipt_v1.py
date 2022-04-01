# -*- coding: utf-8 -*-
import os


def creer_plateau(nomFichier):
    with open("plateau/{}.txt".format(nomFichier), "r") as fichierPlateau:
        plateauTXT = fichierPlateau.readlines()

    plateau = ""
    pions = ""

    Nb_pion = 0
    placement_pion = []

    for j, ligne in enumerate(plateauTXT):
        for i, case in enumerate(ligne[:-1]):
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
            elif case == "X":
                plateau += " 0"
                pions += " 0"
            plateau += ";\n"
            pions += ";\n"

    dim = "int Imax = {};\nint Jmax = {};\nint Nb_pion = {};\nbit plateau[{}];\nbit pions[{}];\n".format(
        len(plateauTXT[0]) - 1,
        len(plateauTXT),
        Nb_pion,
        (len(plateauTXT[0]) - 1) * len(plateauTXT),
        (len(plateauTXT[0]) - 1) * len(plateauTXT))
    return dim, plateau, pions, placement_pion


def creer_script(nomFichier):
    script = ""

    dim, plateau, pions, placement_pion = creer_plateau(nomFichier)

    script += dim

    script += "#define succes (Nb_pion==1)\n"

    with open("proctype_pion.pml", "r") as ficherProcPion:
        procPionTXT = ficherProcPion.readlines()

    for ligne in procPionTXT:
        script += ligne

    script += "init{\n"
    script += plateau
    script += pions
    script += "atomic{\n"
    for n, coord in enumerate(placement_pion):
        script += "run pion({},{});".format(coord[0], coord[1])
        if n % 10 == 0 and n != 0:
            script += "\n"
    script += "}\n}\n"

    script += "never{ /*<> (succes */\n"
    script += "T0_init:\n"
    script += "\tdo\n\t::atomic{((succes)) -> assert (!((succes)))}\n\t:: (1) -> goto " \
              "T0_init\n\tod;\naccept_all:\n\tskip\n} "

    fichier_solitaire = open("solitairesv1/solitaire_" + nomFichier + "1.pml", "w")
    fichier_solitaire.write(script)
    fichier_solitaire.close()
    return script


creer_script("plateau1")
