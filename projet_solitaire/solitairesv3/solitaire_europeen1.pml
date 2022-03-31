int Imax = 7;
int Jmax = 7;
int Nb_pion = 36;
bit plateau[49] = 1;
bit pions[49] = 1;
#define succes (Nb_pion==1)
proctype Joueur(){
int pion; 
 bit ok = 1;
int i; int j;
do
::if
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
     :: ( ok == 1 && pions[16] == 1) -> ok = 0; pion = 16; goto manger;
     :: ( ok == 1 && pions[17] == 1) -> ok = 0; pion = 17; goto manger;
     :: ( ok == 1 && pions[18] == 1) -> ok = 0; pion = 18; goto manger;
     :: ( ok == 1 && pions[19] == 1) -> ok = 0; pion = 19; goto manger;
     :: ( ok == 1 && pions[20] == 1) -> ok = 0; pion = 20; goto manger;
     :: ( ok == 1 && pions[21] == 1) -> ok = 0; pion = 21; goto manger;
     :: ( ok == 1 && pions[22] == 1) -> ok = 0; pion = 22; goto manger;
     :: ( ok == 1 && pions[23] == 1) -> ok = 0; pion = 23; goto manger;
     :: ( ok == 1 && pions[24] == 1) -> ok = 0; pion = 24; goto manger;
     :: ( ok == 1 && pions[25] == 1) -> ok = 0; pion = 25; goto manger;
     :: ( ok == 1 && pions[26] == 1) -> ok = 0; pion = 26; goto manger;
     :: ( ok == 1 && pions[27] == 1) -> ok = 0; pion = 27; goto manger;
     :: ( ok == 1 && pions[28] == 1) -> ok = 0; pion = 28; goto manger;
     :: ( ok == 1 && pions[29] == 1) -> ok = 0; pion = 29; goto manger;
     :: ( ok == 1 && pions[30] == 1) -> ok = 0; pion = 30; goto manger;
     :: ( ok == 1 && pions[31] == 1) -> ok = 0; pion = 31; goto manger;
     :: ( ok == 1 && pions[32] == 1) -> ok = 0; pion = 32; goto manger;
     :: ( ok == 1 && pions[33] == 1) -> ok = 0; pion = 33; goto manger;
     :: ( ok == 1 && pions[34] == 1) -> ok = 0; pion = 34; goto manger;
     :: ( ok == 1 && pions[35] == 1) -> ok = 0; pion = 35; goto manger;
     :: ( ok == 1 && pions[36] == 1) -> ok = 0; pion = 36; goto manger;
     :: ( ok == 1 && pions[37] == 1) -> ok = 0; pion = 37; goto manger;
     :: ( ok == 1 && pions[38] == 1) -> ok = 0; pion = 38; goto manger;
     :: ( ok == 1 && pions[39] == 1) -> ok = 0; pion = 39; goto manger;
     :: ( ok == 1 && pions[40] == 1) -> ok = 0; pion = 40; goto manger;
     :: ( ok == 1 && pions[41] == 1) -> ok = 0; pion = 41; goto manger;
     :: ( ok == 1 && pions[42] == 1) -> ok = 0; pion = 42; goto manger;
     :: ( ok == 1 && pions[43] == 1) -> ok = 0; pion = 43; goto manger;
     :: ( ok == 1 && pions[44] == 1) -> ok = 0; pion = 44; goto manger;
     :: ( ok == 1 && pions[45] == 1) -> ok = 0; pion = 45; goto manger;
     :: ( ok == 1 && pions[46] == 1) -> ok = 0; pion = 46; goto manger;
     :: ( ok == 1 && pions[47] == 1) -> ok = 0; pion = 47; goto manger;
     :: ( ok == 1 && pions[48] == 1) -> ok = 0; pion = 48; goto manger;
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
od

}

init{
plateau[0] =  0;
plateau[1] =  0;
plateau[2] =  1;
plateau[3] =  1;
plateau[4] =  1;
plateau[5] =  0;
plateau[6] =  0;
plateau[7] =  0;
plateau[8] =  1;
plateau[9] =  1;
plateau[10] =  1;
plateau[11] =  1;
plateau[12] =  1;
plateau[13] =  0;
plateau[14] =  1;
plateau[15] =  1;
plateau[16] =  1;
plateau[17] =  1;
plateau[18] =  1;
plateau[19] =  1;
plateau[20] =  1;
plateau[21] =  1;
plateau[22] =  1;
plateau[23] =  1;
plateau[24] =  1;
plateau[25] =  1;
plateau[26] =  1;
plateau[27] =  1;
plateau[28] =  1;
plateau[29] =  1;
plateau[30] =  1;
plateau[31] =  1;
plateau[32] =  1;
plateau[33] =  1;
plateau[34] =  1;
plateau[35] =  0;
plateau[36] =  1;
plateau[37] =  1;
plateau[38] =  1;
plateau[39] =  1;
plateau[40] =  1;
plateau[41] =  0;
plateau[42] =  0;
plateau[43] =  0;
plateau[44] =  1;
plateau[45] =  1;
plateau[46] =  1;
plateau[47] =  0;
plateau[48] =  0;
pions[0] =  0;
pions[1] =  0;
pions[2] =  1;
pions[3] =  1;
pions[4] =  1;
pions[5] =  0;
pions[6] =  0;
pions[7] =  0;
pions[8] =  1;
pions[9] =  1;
pions[10] =  1;
pions[11] =  1;
pions[12] =  1;
pions[13] =  0;
pions[14] =  1;
pions[15] =  1;
pions[16] =  1;
pions[17] =  1;
pions[18] =  1;
pions[19] =  1;
pions[20] =  1;
pions[21] =  1;
pions[22] =  1;
pions[23] =  1;
pions[24] =  0;
pions[25] =  1;
pions[26] =  1;
pions[27] =  1;
pions[28] =  1;
pions[29] =  1;
pions[30] =  1;
pions[31] =  1;
pions[32] =  1;
pions[33] =  1;
pions[34] =  1;
pions[35] =  0;
pions[36] =  1;
pions[37] =  1;
pions[38] =  1;
pions[39] =  1;
pions[40] =  1;
pions[41] =  0;
pions[42] =  0;
pions[43] =  0;
pions[44] =  1;
pions[45] =  1;
pions[46] =  1;
pions[47] =  0;
pions[48] =  0;
run Joueur();

}
never  {    /* <>(succes) */
T0_init:
	do
	:: atomic { ((succes)) -> assert(!((succes))) }
	:: (1) -> goto T0_init
	od;
accept_all:
	skip
}

