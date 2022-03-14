int Imax = 6;
int Jmax = 6;
int Nb_pion = 19;

int dim = Imax * Jmax;

/*short plateau[dim] = {	0, 0, 1, 1, 0, 0,
					 0, 0, 1, 1, 0, 0,
					 1, 1, 1, 1, 1, 1,
					 1, 1, 1, 1, 1, 1,
					 0, 0, 1, 1, 0, 0,
					 0, 0, 1, 1, 0, 0};

short pions[dim] = {	 0, 0, 1, 1, 0, 0,
				 0, 0, 1, 1, 0, 0,
				 1, 1, 1, 1, 1, 1,
				 1, 1, 0, 1, 1, 1,
				 0, 0, 1, 1, 0, 0,
				 0, 0, 1, 1, 0, 0};*/

typedef Array {
    byte el[Imax];
   };
Array a[Jmax]

printf(("A: cnt x = %d\n", a)


#define succes (Nb_pion==1)

proctype pion(int i, int j){

	do
	::(pions[i+Imax*j]==1 && i>1 && pions[i-1+Imax*j]==1 && pions[i-2+Imax*j]==0 && plateau[i-2+Imax*j]==1) ->
	atomic{
	    pions[i+Imax*j]=0;
		pions[i-1+Imax*j=0;
		pions[i-2+Imax*j]=1;
		i-=2
	}
	::(pions[i+Imax*j]==1 && i<Imax-2 && pions[i+1+Imax*j]==1 && pions[i+2+Imax*j]==0 && plateau[i+2+Imax*j]==1) ->
	atomic{
	    pions[i+Imax*j]=0;
		pions[i+1+Imax*j=0;
		pions[i+2+Imax*j]=1;
		i+=2
	}
	::(pions[i+Imax*j]==1 && j>1 && pions[i+Imax*(j-1)]==1 && pions[i+Imax*(j-2)]==0 && plateau[i+Imax*(j-2)]==1) ->
	atomic{
	    pions[i+Imax*j]=0;
		pions[i+Imax*(j-1)]=0;
		pions[i+Imax*(j-2)]=1;
		j-=2
	}
	::(pions[i+Imax*j]==1 && j<Jmax-2 && pions[i+Imax*(j+1)]==1 && pions[i+Imax*(j+2)]==0 && plateau[i+Imax*(j+2)]==1) ->
	atomic{
	    pions[i+Imax*j]=0;
		pions[i+Imax*(j+1)]=0;
		pions[i+Imax*(j+2)]=1;
		j+=2
	}
	::pions[i+Imax*j]==0->goto cimetiere
	od

	cimetiere : Nb_pion--;
}
init{
atomic{
run pion(2,0);run pion(3,0);run pion(2,1);run pion(3,1);run pion(0,2);run pion(1,2);run pion(2,2);run pion(3,2);run pion(4,2);run pion(5,2);run pion(0,3);
run pion(1,3);run pion(3,3);run pion(4,3);run pion(5,3);run pion(2,4);run pion(3,4);run pion(2,5);run pion(3,5);}
}
