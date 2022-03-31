int Imax = 4;
int Jmax = 4;
int Nb_pion = 11;
bit plateau[16] = 1;
bit pions[16] = 1;
#define succes (Nb_pion==1)
proctype Joueur(){
int pion; 
 bit ok = 1;
int i; int j;
do
	:: if
		:: ( ok == 1 && pions[0] == 1) -> ok = 0; pion = 0; goto manger;
 		:: ( ok == 1 && pions[1] == 1) -> ok = 0; pion = 1; goto manger;
 		:: ( ok == 1 && pions[2] == 1) -> ok = 0; pion = 2; goto manger;
 		:: ( ok == 1 && pions[3] == 1) -> ok = 0; pion = 3; goto manger;
 		:: ( ok == 1 && pions[4] == 1) -> ok = 0; pion = 4; goto manger;
 		:: ( ok == 1 && pions[5] == 1) -> ok = 0; pion = 5; goto manger;
 		:: ( ok == 1 && pions[6] == 1) -> ok = 0; pion = 6; goto manger;
 		:: ( ok == 1 && pions[7] == 1) -> ok = 0; pion = 7; goto manger;
 		:: ( ok == 1 && pions[8] == 1) -> ok = 0; pion = 8; goto manger;
 		:: ( ok == 1 && pions[9] == 1) -> ok = 0; pion = 9; goto manger;
 		:: ( ok == 1 && pions[10] == 1) -> ok = 0; pion = 10; goto manger;
 		:: ( ok == 1 && pions[11] == 1) -> ok = 0; pion = 11; goto manger;
 		:: ( ok == 1 && pions[12] == 1) -> ok = 0; pion = 12; goto manger;
 		:: ( ok == 1 && pions[13] == 1) -> ok = 0; pion = 13; goto manger;
 		:: ( ok == 1 && pions[14] == 1) -> ok = 0; pion = 14; goto manger;
 		:: ( ok == 1 && pions[15] == 1) -> ok = 0; pion = 15; goto manger;
 	fi;
manger:
    i = pion/Jmax;
    j = pion%Jmax;

	if
    ::(pions[pion]==1 && i>1 && pions[i-1+Jmax*j]==1 && pions[i-2+Jmax*j]==0 && plateau[i-2+Jmax*j]==1) ->
    atomic{
        pions[pion]=0;
        pions[i-1+Jmax*j]=0;
        pions[i-2+Jmax*j]=1;
        Nb_pion--;

    }
    ::(pions[pion]==1 && i<Imax-2 && pions[i+1+Jmax*j]==1 && pions[i+2+Jmax*j]==0 && plateau[i+2+Jmax*j]==1) ->
    atomic{
        pions[pion]=0;
        pions[i+1+Jmax*j]=0;
        pions[i+2+Jmax*j]=1;
        Nb_pion--;
    }
    ::(pions[pion]==1 && j>1 && pions[i+Jmax*(j-1)]==1 && pions[i+Jmax*(j-2)]==0 && plateau[i+Jmax*(j-2)]==1) ->
    atomic{
        pions[pion]=0;
        pions[i+Jmax*(j-1)]=0;
        pions[i+Jmax*(j-2)]=1;
        Nb_pion--;
    }
    ::(pions[pion]==1 && j<Jmax-2 && pions[i+Jmax*(j+1)]==1 && pions[i+Jmax*(j+2)]==0 && plateau[i+Jmax*(j+2)]==1) ->
    atomic{
        pions[pion]=0;
        pions[i+Jmax*(j+1)]=0;
        pions[i+Jmax*(j+2)]=1;
        Nb_pion--;
    }
    :: else -> skip
    fi;
	ok = 1;


od;
}

init{
plateau[0] =  0;
plateau[1] =  1;
plateau[2] =  1;
plateau[3] =  0;
plateau[4] =  1;
plateau[5] =  1;
plateau[6] =  1;
plateau[7] =  1;
plateau[8] =  1;
plateau[9] =  1;
plateau[10] =  1;
plateau[11] =  1;
plateau[12] =  0;
plateau[13] =  1;
plateau[14] =  1;
plateau[15] =  0;
pions[0] =  0;
pions[1] =  1;
pions[2] =  1;
pions[3] =  0;
pions[4] =  1;
pions[5] =  1;
pions[6] =  1;
pions[7] =  1;
pions[8] =  1;
pions[9] =  1;
pions[10] =  0;
pions[11] =  1;
pions[12] =  0;
pions[13] =  1;
pions[14] =  1;
pions[15] =  0;
run Joueur();

}
never{ /*<> (succes */
T0_init:
	do
	::atomic{((succes)) -> assert (!((succes)))}
	:: (1) -> goto T0_init
	od;
accept_all:
	skip
} 