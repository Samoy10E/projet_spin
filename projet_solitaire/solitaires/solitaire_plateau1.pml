short Imax = 6;
short Jmax = 6;
int Nb_pion = 19;

bit plateau[][] = {	{ 0, 0, 1, 1, 0, 0,}
					{ 0, 0, 1, 1, 0, 0,}
					{ 1, 1, 1, 1, 1, 1,}
					{ 1, 1, 1, 1, 1, 1,}
					{ 0, 0, 1, 1, 0, 0,}
					{ 0, 0, 1, 1, 0, 0,}};

bit pions[][] = {	{ 0, 0, 1, 1, 0, 0,}
					{ 0, 0, 1, 1, 0, 0,}
					{ 1, 1, 1, 1, 1, 1,}
					{ 1, 1, 0, 1, 1, 1,}
					{ 0, 0, 1, 1, 0, 0,}
					{ 0, 0, 1, 1, 0, 0,}};

#define succes (Nb_pion==1)

proctype pion(short i, short j){
	short i = i;
	short j = j;
	do
	::(pions[i][j]==1 && i>1 && pions[i-1][j]==1 && pions[i-2][j]==0 && plateau[i-2][j]==1) -> 
	atomic{
		pions[i-1][j]=0; 
		pions[i-2][j]=1; 
		i-=2
	}
	::(pions[i][j]==1 && i<Imax-1 && pions[i+1][j]==1 && pions[i+2][j]==0 && plateau[i+2][j]==1) -> 
	atomic{
		pions[i+1][j]=0; 
		pions[i+2][j]=1; 
		i+=2
	}
	::(pions[i][j]==1 && j>1 && pions[i][j-1]==1 && pions[i][j-2]==0 && plateau[i][j-2]==1) -> 
	atomic{
		pions[i][j-1]=0; 
		pions[i][j-2]=1; 
		j-=2
	}
	::(pions[i][j]==1 && j<Jmax-1 && pions[i][j+1]==1 && pions[i][j+2]==0 && plateau[i][j+2]==1) -> 
	atomic{
		pions[i][j+1]=0; 
		pions[i][j+2]=1; 
		j+=2
	}
	::pions[i][j]==0->goto cimetiere
	od

	cimetiere : Nb_pion--;
}
init{
atomic{
run(2,0);run(3,0);run(2,1);run(3,1);run(0,2);run(1,2);run(2,2);run(3,2);run(4,2);run(5,2);run(0,3);
run(1,3);run(3,3);run(4,3);run(5,3);run(2,4);run(3,4);run(2,5);run(3,5);}
}
