
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
