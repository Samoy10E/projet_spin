short Imax = 9;
short Jmax = 9;
int Nb_pion = 44;

bit plateau[][] = {	{ 0, 0, 0, 1, 1, 1, 0, 0, 0,}
					{ 0, 0, 0, 1, 1, 1, 0, 0, 0,}
					{ 0, 0, 0, 1, 1, 1, 0, 0, 0,}
					{ 1, 1, 1, 1, 1, 1, 1, 1, 1,}
					{ 1, 1, 1, 1, 1, 1, 1, 1, 1,}
					{ 1, 1, 1, 1, 1, 1, 1, 1, 1,}
					{ 0, 0, 0, 1, 1, 1, 0, 0, 0,}
					{ 0, 0, 0, 1, 1, 1, 0, 0, 0,}
					{ 0, 0, 0, 1, 1, 1, 0, 0, 0,}};

bit pions[][] = {	{ 0, 0, 0, 1, 1, 1, 0, 0, 0,}
					{ 0, 0, 0, 1, 1, 1, 0, 0, 0,}
					{ 0, 0, 0, 1, 1, 1, 0, 0, 0,}
					{ 1, 1, 1, 1, 1, 1, 1, 1, 1,}
					{ 1, 1, 1, 1, 0, 1, 1, 1, 1,}
					{ 1, 1, 1, 1, 1, 1, 1, 1, 1,}
					{ 0, 0, 0, 1, 1, 1, 0, 0, 0,}
					{ 0, 0, 0, 1, 1, 1, 0, 0, 0,}
					{ 0, 0, 0, 1, 1, 1, 0, 0, 0,}};

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
run(3,0);run(4,0);run(5,0);run(3,1);run(4,1);run(5,1);run(3,2);run(4,2);run(5,2);run(0,3);run(1,3);
run(2,3);run(3,3);run(4,3);run(5,3);run(6,3);run(7,3);run(8,3);run(0,4);run(1,4);run(2,4);
run(3,4);run(5,4);run(6,4);run(7,4);run(8,4);run(0,5);run(1,5);run(2,5);run(3,5);run(4,5);
run(5,5);run(6,5);run(7,5);run(8,5);run(3,6);run(4,6);run(5,6);run(3,7);run(4,7);run(5,7);
run(3,8);run(4,8);run(5,8);}
}
