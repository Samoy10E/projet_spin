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


