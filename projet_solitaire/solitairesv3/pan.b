	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM never_0 */
;
		
	case 3: // STATE 1
		goto R999;

	case 4: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 5: // STATE 1
		;
		now.plateau[0] = trpt->bup.oval;
		;
		goto R999;

	case 6: // STATE 2
		;
		now.plateau[1] = trpt->bup.oval;
		;
		goto R999;

	case 7: // STATE 3
		;
		now.plateau[2] = trpt->bup.oval;
		;
		goto R999;

	case 8: // STATE 4
		;
		now.plateau[3] = trpt->bup.oval;
		;
		goto R999;

	case 9: // STATE 5
		;
		now.plateau[4] = trpt->bup.oval;
		;
		goto R999;

	case 10: // STATE 6
		;
		now.plateau[5] = trpt->bup.oval;
		;
		goto R999;

	case 11: // STATE 7
		;
		now.plateau[6] = trpt->bup.oval;
		;
		goto R999;

	case 12: // STATE 8
		;
		now.plateau[7] = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 9
		;
		now.plateau[8] = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 10
		;
		now.plateau[9] = trpt->bup.oval;
		;
		goto R999;

	case 15: // STATE 11
		;
		now.plateau[10] = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 12
		;
		now.plateau[11] = trpt->bup.oval;
		;
		goto R999;

	case 17: // STATE 13
		;
		now.plateau[12] = trpt->bup.oval;
		;
		goto R999;

	case 18: // STATE 14
		;
		now.plateau[13] = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 15
		;
		now.plateau[14] = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 16
		;
		now.plateau[15] = trpt->bup.oval;
		;
		goto R999;

	case 21: // STATE 17
		;
		now.pions[0] = trpt->bup.oval;
		;
		goto R999;

	case 22: // STATE 18
		;
		now.pions[1] = trpt->bup.oval;
		;
		goto R999;

	case 23: // STATE 19
		;
		now.pions[2] = trpt->bup.oval;
		;
		goto R999;

	case 24: // STATE 20
		;
		now.pions[3] = trpt->bup.oval;
		;
		goto R999;

	case 25: // STATE 21
		;
		now.pions[4] = trpt->bup.oval;
		;
		goto R999;

	case 26: // STATE 22
		;
		now.pions[5] = trpt->bup.oval;
		;
		goto R999;

	case 27: // STATE 23
		;
		now.pions[6] = trpt->bup.oval;
		;
		goto R999;

	case 28: // STATE 24
		;
		now.pions[7] = trpt->bup.oval;
		;
		goto R999;

	case 29: // STATE 25
		;
		now.pions[8] = trpt->bup.oval;
		;
		goto R999;

	case 30: // STATE 26
		;
		now.pions[9] = trpt->bup.oval;
		;
		goto R999;

	case 31: // STATE 27
		;
		now.pions[10] = trpt->bup.oval;
		;
		goto R999;

	case 32: // STATE 28
		;
		now.pions[11] = trpt->bup.oval;
		;
		goto R999;

	case 33: // STATE 29
		;
		now.pions[12] = trpt->bup.oval;
		;
		goto R999;

	case 34: // STATE 30
		;
		now.pions[13] = trpt->bup.oval;
		;
		goto R999;

	case 35: // STATE 31
		;
		now.pions[14] = trpt->bup.oval;
		;
		goto R999;

	case 36: // STATE 32
		;
		now.pions[15] = trpt->bup.oval;
		;
		goto R999;

	case 37: // STATE 33
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 38: // STATE 34
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Joueur */

	case 39: // STATE 1
		;
	/* 0 */	((P0 *)_this)->ok = trpt->bup.oval;
		;
		;
		goto R999;

	case 40: // STATE 3
		;
		((P0 *)_this)->pion = trpt->bup.ovals[1];
		((P0 *)_this)->ok = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 41: // STATE 5
		;
	/* 0 */	((P0 *)_this)->ok = trpt->bup.oval;
		;
		;
		goto R999;

	case 42: // STATE 7
		;
		((P0 *)_this)->pion = trpt->bup.ovals[1];
		((P0 *)_this)->ok = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 43: // STATE 9
		;
	/* 0 */	((P0 *)_this)->ok = trpt->bup.oval;
		;
		;
		goto R999;

	case 44: // STATE 11
		;
		((P0 *)_this)->pion = trpt->bup.ovals[1];
		((P0 *)_this)->ok = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 45: // STATE 13
		;
	/* 0 */	((P0 *)_this)->ok = trpt->bup.oval;
		;
		;
		goto R999;

	case 46: // STATE 15
		;
		((P0 *)_this)->pion = trpt->bup.ovals[1];
		((P0 *)_this)->ok = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 47: // STATE 17
		;
	/* 0 */	((P0 *)_this)->ok = trpt->bup.oval;
		;
		;
		goto R999;

	case 48: // STATE 19
		;
		((P0 *)_this)->pion = trpt->bup.ovals[1];
		((P0 *)_this)->ok = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 49: // STATE 21
		;
	/* 0 */	((P0 *)_this)->ok = trpt->bup.oval;
		;
		;
		goto R999;

	case 50: // STATE 23
		;
		((P0 *)_this)->pion = trpt->bup.ovals[1];
		((P0 *)_this)->ok = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 51: // STATE 25
		;
	/* 0 */	((P0 *)_this)->ok = trpt->bup.oval;
		;
		;
		goto R999;

	case 52: // STATE 27
		;
		((P0 *)_this)->pion = trpt->bup.ovals[1];
		((P0 *)_this)->ok = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 53: // STATE 29
		;
	/* 0 */	((P0 *)_this)->ok = trpt->bup.oval;
		;
		;
		goto R999;

	case 54: // STATE 31
		;
		((P0 *)_this)->pion = trpt->bup.ovals[1];
		((P0 *)_this)->ok = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 55: // STATE 33
		;
	/* 0 */	((P0 *)_this)->ok = trpt->bup.oval;
		;
		;
		goto R999;

	case 56: // STATE 35
		;
		((P0 *)_this)->pion = trpt->bup.ovals[1];
		((P0 *)_this)->ok = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 57: // STATE 37
		;
	/* 0 */	((P0 *)_this)->ok = trpt->bup.oval;
		;
		;
		goto R999;

	case 58: // STATE 39
		;
		((P0 *)_this)->pion = trpt->bup.ovals[1];
		((P0 *)_this)->ok = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 59: // STATE 41
		;
	/* 0 */	((P0 *)_this)->ok = trpt->bup.oval;
		;
		;
		goto R999;

	case 60: // STATE 43
		;
		((P0 *)_this)->pion = trpt->bup.ovals[1];
		((P0 *)_this)->ok = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 61: // STATE 45
		;
	/* 0 */	((P0 *)_this)->ok = trpt->bup.oval;
		;
		;
		goto R999;

	case 62: // STATE 47
		;
		((P0 *)_this)->pion = trpt->bup.ovals[1];
		((P0 *)_this)->ok = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 63: // STATE 49
		;
	/* 0 */	((P0 *)_this)->ok = trpt->bup.oval;
		;
		;
		goto R999;

	case 64: // STATE 51
		;
		((P0 *)_this)->pion = trpt->bup.ovals[1];
		((P0 *)_this)->ok = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 65: // STATE 53
		;
	/* 0 */	((P0 *)_this)->ok = trpt->bup.oval;
		;
		;
		goto R999;

	case 66: // STATE 55
		;
		((P0 *)_this)->pion = trpt->bup.ovals[1];
		((P0 *)_this)->ok = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 67: // STATE 57
		;
	/* 0 */	((P0 *)_this)->ok = trpt->bup.oval;
		;
		;
		goto R999;

	case 68: // STATE 59
		;
		((P0 *)_this)->pion = trpt->bup.ovals[1];
		((P0 *)_this)->ok = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 69: // STATE 61
		;
	/* 0 */	((P0 *)_this)->ok = trpt->bup.oval;
		;
		;
		goto R999;

	case 70: // STATE 63
		;
		((P0 *)_this)->pion = trpt->bup.ovals[1];
		((P0 *)_this)->ok = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 71: // STATE 67
		;
		((P0 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 72: // STATE 68
		;
		((P0 *)_this)->j = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 74: // STATE 97
		;
		((P0 *)_this)->ok = trpt->bup.ovals[4];
		now.Nb_pion = trpt->bup.ovals[3];
		now.pions[ Index(((((P0 *)_this)->i-2)+(now.Jmax*((P0 *)_this)->j)), 16) ] = trpt->bup.ovals[2];
		now.pions[ Index(((((P0 *)_this)->i-1)+(now.Jmax*((P0 *)_this)->j)), 16) ] = trpt->bup.ovals[1];
		now.pions[ Index(((P0 *)_this)->pion, 16) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 76: // STATE 97
		;
		((P0 *)_this)->ok = trpt->bup.ovals[4];
		now.Nb_pion = trpt->bup.ovals[3];
		now.pions[ Index(((((P0 *)_this)->i+2)+(now.Jmax*((P0 *)_this)->j)), 16) ] = trpt->bup.ovals[2];
		now.pions[ Index(((((P0 *)_this)->i+1)+(now.Jmax*((P0 *)_this)->j)), 16) ] = trpt->bup.ovals[1];
		now.pions[ Index(((P0 *)_this)->pion, 16) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 78: // STATE 97
		;
		((P0 *)_this)->ok = trpt->bup.ovals[4];
		now.Nb_pion = trpt->bup.ovals[3];
		now.pions[ Index((((P0 *)_this)->i+(now.Jmax*(((P0 *)_this)->j-2))), 16) ] = trpt->bup.ovals[2];
		now.pions[ Index((((P0 *)_this)->i+(now.Jmax*(((P0 *)_this)->j-1))), 16) ] = trpt->bup.ovals[1];
		now.pions[ Index(((P0 *)_this)->pion, 16) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 80: // STATE 97
		;
		((P0 *)_this)->ok = trpt->bup.ovals[4];
		now.Nb_pion = trpt->bup.ovals[3];
		now.pions[ Index((((P0 *)_this)->i+(now.Jmax*(((P0 *)_this)->j+2))), 16) ] = trpt->bup.ovals[2];
		now.pions[ Index((((P0 *)_this)->i+(now.Jmax*(((P0 *)_this)->j+1))), 16) ] = trpt->bup.ovals[1];
		now.pions[ Index(((P0 *)_this)->pion, 16) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 81: // STATE 97
		;
		((P0 *)_this)->ok = trpt->bup.oval;
		;
		goto R999;

	case 82: // STATE 97
		;
		((P0 *)_this)->ok = trpt->bup.oval;
		;
		goto R999;

	case 83: // STATE 101
		;
		p_restor(II);
		;
		;
		goto R999;
	}

