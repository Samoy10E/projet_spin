proctype main(int i; int j){

    do
    /*Manger*/
	::(pions[i+Imax*j]==1 && i>1 && pions[i-1+Imax*j]==1 && pions[i-2+Imax*j]==0 && plateau[i-2+Imax*j]==1) ->
	atomic{
	    pions[i+Imax*j]=0;
		pions[i-1+Imax*j]=0;
		pions[i-2+Imax*j]=1;
		i = i-2;
		Nb_pion--;
	}
	::(pions[i+Imax*j]==1 && i<Imax-2 && pions[i+1+Imax*j]==1 && pions[i+2+Imax*j]==0 && plateau[i+2+Imax*j]==1) ->
	atomic{
	    pions[i+Imax*j]=0;
		pions[i+1+Imax*j]=0;
		pions[i+2+Imax*j]=1;
		i= i+2;
		Nb_pion--;
	}
	::(pions[i+Imax*j]==1 && j>1 && pions[i+Imax*(j-1)]==1 && pions[i+Imax*(j-2)]==0 && plateau[i+Imax*(j-2)]==1) ->
	atomic{
	    pions[i+Imax*j]=0;
		pions[i+Imax*(j-1)]=0;
		pions[i+Imax*(j-2)]=1;
		j = j-2;
		Nb_pion--;
	}
	::(pions[i+Imax*j]==1 && j<Jmax-2 && pions[i+Imax*(j+1)]==1 && pions[i+Imax*(j+2)]==0 && plateau[i+Imax*(j+2)]==1) ->
	atomic{
	    pions[i+Imax*j]=0;
		pions[i+Imax*(j+1)]=0;
		pions[i+Imax*(j+2)]=1;
		j = j+2;
		Nb_pion--;
	}
	/*Deplacement*/
	::(plateau[i+Imax*(j-1)]==1) -> j--;
	::(plateau[i-1+Imax*j]==1) -> i--;
	::(plateau[i+Imax*(j+1)]==1) -> j++;
	::(plateau[i+1+Imax*j]==1) -> i++;
	od

}