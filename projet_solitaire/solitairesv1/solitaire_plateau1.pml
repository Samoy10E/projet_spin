int Imax = 6;
int Jmax = 6;
int Nb_pion = 19;
bit plateau[36];
bit pions[36];

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
	::pions[i+Imax*j]==0->goto cimetiere
	od

	cimetiere : Nb_pion--;
}


init{
plateau[0] =  0;
plateau[1] =  0;
plateau[2] =  1;
plateau[3] =  1;
plateau[4] =  0;
plateau[5] =  0;
plateau[6] =  0;
plateau[7] =  0;
plateau[8] =  1;
plateau[9] =  1;
plateau[10] =  0;
plateau[11] =  0;
plateau[12] =  1;
plateau[13] =  1;
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
plateau[24] =  0;
plateau[25] =  0;
plateau[26] =  1;
plateau[27] =  1;
plateau[28] =  0;
plateau[29] =  0;
plateau[30] =  0;
plateau[31] =  0;
plateau[32] =  1;
plateau[33] =  1;
plateau[34] =  0;
plateau[35] =  0;
pions[0] =  0;
pions[1] =  0;
pions[2] =  1;
pions[3] =  1;
pions[4] =  0;
pions[5] =  0;
pions[6] =  0;
pions[7] =  0;
pions[8] =  1;
pions[9] =  1;
pions[10] =  0;
pions[11] =  0;
pions[12] =  1;
pions[13] =  1;
pions[14] =  1;
pions[15] =  1;
pions[16] =  1;
pions[17] =  1;
pions[18] =  1;
pions[19] =  1;
pions[20] =  0;
pions[21] =  1;
pions[22] =  1;
pions[23] =  1;
pions[24] =  0;
pions[25] =  0;
pions[26] =  1;
pions[27] =  1;
pions[28] =  0;
pions[29] =  0;
pions[30] =  0;
pions[31] =  0;
pions[32] =  1;
pions[33] =  1;
pions[34] =  0;
pions[35] =  0;
atomic{
run pion(2,0);run pion(3,0);run pion(2,1);run pion(3,1);run pion(0,2);run pion(1,2);run pion(2,2);run pion(3,2);run pion(4,2);run pion(5,2);run pion(0,3);
run pion(1,3);run pion(3,3);run pion(4,3);run pion(5,3);run pion(2,4);run pion(3,4);run pion(2,5);run pion(3,5);}
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