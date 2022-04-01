int Imax = 7;
int Jmax = 7;
int Nb_pion = 36;
bit plateau[49];
bit pions[49];
#define succes (Nb_pion==1)

proctype pion(int i; int j){

do
	::(pions[i+Imax*j]==1 && i>1 && pions[i-1+Imax*j]==1 && pions[i-2+Imax*j]==0 && plateau[i-2+Imax*j]==1) ->
	atomic{
	    pions[i+Imax*j]=0;
		pions[i-1+Imax*j]=0;
		pions[i-2+Imax*j]=1;
		i = i-2;
	}
	::(pions[i+Imax*j]==1 && i<Imax-2 && pions[i+1+Imax*j]==1 && pions[i+2+Imax*j]==0 && plateau[i+2+Imax*j]==1) ->
	atomic{
	    pions[i+Imax*j]=0;
		pions[i+1+Imax*j]=0;
		pions[i+2+Imax*j]=1;
		i= i+2;
	}
	::(pions[i+Imax*j]==1 && j>1 && pions[i+Imax*(j-1)]==1 && pions[i+Imax*(j-2)]==0 && plateau[i+Imax*(j-2)]==1) ->
	atomic{
	    pions[i+Imax*j]=0;
		pions[i+Imax*(j-1)]=0;
		pions[i+Imax*(j-2)]=1;
		j= j-2;
	}
	::(pions[i+Imax*j]==1 && j<Jmax-2 && pions[i+Imax*(j+1)]==1 && pions[i+Imax*(j+2)]==0 && plateau[i+Imax*(j+2)]==1) ->
	atomic{
	    pions[i+Imax*j]=0;
		pions[i+Imax*(j+1)]=0;
		pions[i+Imax*(j+2)]=1;
		j=j+2;
	}
	::pions[i+Imax*j]==0 -> goto cimetiere
od;
cimetiere :
       Nb_pion--;


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

atomic{
run pion(2,0);run pion(3,0);run pion(4,0);run pion(1,1);run pion(2,1);run pion(3,1);run pion(4,1);run pion(5,1);run pion(0,2);run pion(1,2);run pion(2,2);
run pion(3,2);run pion(4,2);run pion(5,2);run pion(6,2);run pion(0,3);run pion(1,3);run pion(2,3);run pion(4,3);run pion(5,3);run pion(6,3);
run pion(0,4);run pion(1,4);run pion(2,4);run pion(3,4);run pion(4,4);run pion(5,4);run pion(6,4);run pion(1,5);run pion(2,5);run pion(3,5);
run pion(4,5);run pion(5,5);run pion(2,6);run pion(3,6);run pion(4,6);}
}

never{ /*<> (succes) */
T0_init:
	do
	::atomic{((succes)) -> assert (!((succes)))}
	:: (1) -> goto T0_init
	od;
accept_all:
	skip
}
