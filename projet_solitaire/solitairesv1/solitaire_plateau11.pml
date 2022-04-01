int Imax = 4;
int Jmax = 4;
int Nb_pion = 11;
bit plateau[16];
bit pions[16];
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
	od;

	cimetiere : Nb_pion--;
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
atomic{
run pion(1,0);run pion(2,0);run pion(0,1);run pion(1,1);run pion(2,1);run pion(3,1);run pion(0,2);run pion(1,2);run pion(3,2);run pion(1,3);run pion(2,3);
}
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