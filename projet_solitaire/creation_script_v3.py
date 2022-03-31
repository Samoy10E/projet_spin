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
            plateau += "plateau[{}] = ".format(j + i * (len(plateauTXT)))
            pions += "pions[{}] = ".format(j + i * (len(plateauTXT)))
            print(i,j)
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
    dim += "bit plateau[{}] = 1;\n".format((len(plateauTXT[0])-1) * (len(plateauTXT)))
    dim += "bit pions[{}] = 1;\n".format((len(plateauTXT[0])-1) * (len(plateauTXT)))
    N_case = (len(plateauTXT[0])-1) * (len(plateauTXT))
    return dim, plateau, pions, placement_pion, depart,Nb_pion, N_case


def creer_proctype_joueur(N_case):
    proctype = ""
    proctype += "proctype Joueur(){\n"
    proctype += "int pion; \n bit ok = 1;\n"
    proctype += "int i; int j;\n"
    proctype += "do\n"
    proctype += "\t:: if\n"
    for k in range(N_case):
        proctype += "\t\t:: ( ok == 1 && pions[{}] == 1) -> ok = 0; pion = {}; goto manger;\n ".format(k,k)
    proctype += "\tfi;\n"

    with open("proctype_manger.pml", "r") as ficherProcPion:
        procMainTXT = ficherProcPion.readlines()

    for ligne in procMainTXT:
        proctype += ligne

    proctype += "od;\n"
    proctype += "}\n\n"

    return proctype



def creer_script(nomFichier):
    script = ""

    dim, plateau, pions, placement_pion, depart,Nb_pion, N_case = creer_plateau(nomFichier)

    script += dim

    script += "#define succes (Nb_pion==1)\n"

    script += creer_proctype_joueur(N_case)

    script += "init{\n"
    script += plateau
    script += pions
    script += "run Joueur();\n"
    script += "\n}\n"

    script += "never{ /*<> (succes */\n"
    script+= "T0_init:\n"
    script+="\tdo\n\t::atomic{((succes)) -> assert (!((succes)))}\n\t:: (1) -> goto T0_init\n\tod;\naccept_all:\n\tskip\n} "

    fichier_solitaire = open("solitairesv3/solitaire_" + nomFichier + "2.pml", "w")
    fichier_solitaire.write(script)
    fichier_solitaire.close()
    return script


creer_script("plateau1")
