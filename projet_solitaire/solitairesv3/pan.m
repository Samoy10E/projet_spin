#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM never_0 */
	case 3: // STATE 1 - solitaire_plateau12.pml:111 - [((Nb_pion==1))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][1] = 1;
		if (!((now.Nb_pion==1)))
			continue;
		/* merge: assert(!((Nb_pion==1)))(0, 2, 6) */
		reached[2][2] = 1;
		spin_assert( !((now.Nb_pion==1)), " !((Nb_pion==1))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[2][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 4: // STATE 10 - solitaire_plateau12.pml:116 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 5: // STATE 1 - solitaire_plateau12.pml:73 - [plateau[0] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[0]);
		now.plateau[0] = 0;
#ifdef VAR_RANGES
		logval("plateau[0]", ((int)now.plateau[0]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 2 - solitaire_plateau12.pml:74 - [plateau[1] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[1]);
		now.plateau[1] = 1;
#ifdef VAR_RANGES
		logval("plateau[1]", ((int)now.plateau[1]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 3 - solitaire_plateau12.pml:75 - [plateau[2] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[2]);
		now.plateau[2] = 1;
#ifdef VAR_RANGES
		logval("plateau[2]", ((int)now.plateau[2]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 4 - solitaire_plateau12.pml:76 - [plateau[3] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[3]);
		now.plateau[3] = 0;
#ifdef VAR_RANGES
		logval("plateau[3]", ((int)now.plateau[3]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 5 - solitaire_plateau12.pml:77 - [plateau[4] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[4]);
		now.plateau[4] = 1;
#ifdef VAR_RANGES
		logval("plateau[4]", ((int)now.plateau[4]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 6 - solitaire_plateau12.pml:78 - [plateau[5] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[5]);
		now.plateau[5] = 1;
#ifdef VAR_RANGES
		logval("plateau[5]", ((int)now.plateau[5]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 7 - solitaire_plateau12.pml:79 - [plateau[6] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[6]);
		now.plateau[6] = 1;
#ifdef VAR_RANGES
		logval("plateau[6]", ((int)now.plateau[6]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 8 - solitaire_plateau12.pml:80 - [plateau[7] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[7]);
		now.plateau[7] = 1;
#ifdef VAR_RANGES
		logval("plateau[7]", ((int)now.plateau[7]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 9 - solitaire_plateau12.pml:81 - [plateau[8] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[8]);
		now.plateau[8] = 1;
#ifdef VAR_RANGES
		logval("plateau[8]", ((int)now.plateau[8]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 10 - solitaire_plateau12.pml:82 - [plateau[9] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[9]);
		now.plateau[9] = 1;
#ifdef VAR_RANGES
		logval("plateau[9]", ((int)now.plateau[9]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 11 - solitaire_plateau12.pml:83 - [plateau[10] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[10]);
		now.plateau[10] = 1;
#ifdef VAR_RANGES
		logval("plateau[10]", ((int)now.plateau[10]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 12 - solitaire_plateau12.pml:84 - [plateau[11] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[11]);
		now.plateau[11] = 1;
#ifdef VAR_RANGES
		logval("plateau[11]", ((int)now.plateau[11]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 13 - solitaire_plateau12.pml:85 - [plateau[12] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[12]);
		now.plateau[12] = 0;
#ifdef VAR_RANGES
		logval("plateau[12]", ((int)now.plateau[12]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 14 - solitaire_plateau12.pml:86 - [plateau[13] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][14] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[13]);
		now.plateau[13] = 1;
#ifdef VAR_RANGES
		logval("plateau[13]", ((int)now.plateau[13]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 15 - solitaire_plateau12.pml:87 - [plateau[14] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[14]);
		now.plateau[14] = 1;
#ifdef VAR_RANGES
		logval("plateau[14]", ((int)now.plateau[14]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 16 - solitaire_plateau12.pml:88 - [plateau[15] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[15]);
		now.plateau[15] = 0;
#ifdef VAR_RANGES
		logval("plateau[15]", ((int)now.plateau[15]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 17 - solitaire_plateau12.pml:89 - [pions[0] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][17] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[0]);
		now.pions[0] = 0;
#ifdef VAR_RANGES
		logval("pions[0]", ((int)now.pions[0]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 18 - solitaire_plateau12.pml:90 - [pions[1] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[1]);
		now.pions[1] = 1;
#ifdef VAR_RANGES
		logval("pions[1]", ((int)now.pions[1]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 19 - solitaire_plateau12.pml:91 - [pions[2] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][19] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[2]);
		now.pions[2] = 1;
#ifdef VAR_RANGES
		logval("pions[2]", ((int)now.pions[2]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 20 - solitaire_plateau12.pml:92 - [pions[3] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][20] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[3]);
		now.pions[3] = 0;
#ifdef VAR_RANGES
		logval("pions[3]", ((int)now.pions[3]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 21 - solitaire_plateau12.pml:93 - [pions[4] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][21] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[4]);
		now.pions[4] = 1;
#ifdef VAR_RANGES
		logval("pions[4]", ((int)now.pions[4]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 22 - solitaire_plateau12.pml:94 - [pions[5] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][22] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[5]);
		now.pions[5] = 1;
#ifdef VAR_RANGES
		logval("pions[5]", ((int)now.pions[5]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 23 - solitaire_plateau12.pml:95 - [pions[6] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][23] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[6]);
		now.pions[6] = 1;
#ifdef VAR_RANGES
		logval("pions[6]", ((int)now.pions[6]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 24 - solitaire_plateau12.pml:96 - [pions[7] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][24] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[7]);
		now.pions[7] = 1;
#ifdef VAR_RANGES
		logval("pions[7]", ((int)now.pions[7]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 25 - solitaire_plateau12.pml:97 - [pions[8] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][25] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[8]);
		now.pions[8] = 1;
#ifdef VAR_RANGES
		logval("pions[8]", ((int)now.pions[8]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 26 - solitaire_plateau12.pml:98 - [pions[9] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][26] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[9]);
		now.pions[9] = 1;
#ifdef VAR_RANGES
		logval("pions[9]", ((int)now.pions[9]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 27 - solitaire_plateau12.pml:99 - [pions[10] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][27] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[10]);
		now.pions[10] = 0;
#ifdef VAR_RANGES
		logval("pions[10]", ((int)now.pions[10]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 28 - solitaire_plateau12.pml:100 - [pions[11] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][28] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[11]);
		now.pions[11] = 1;
#ifdef VAR_RANGES
		logval("pions[11]", ((int)now.pions[11]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 29 - solitaire_plateau12.pml:101 - [pions[12] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][29] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[12]);
		now.pions[12] = 0;
#ifdef VAR_RANGES
		logval("pions[12]", ((int)now.pions[12]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 30 - solitaire_plateau12.pml:102 - [pions[13] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][30] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[13]);
		now.pions[13] = 1;
#ifdef VAR_RANGES
		logval("pions[13]", ((int)now.pions[13]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 31 - solitaire_plateau12.pml:103 - [pions[14] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][31] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[14]);
		now.pions[14] = 1;
#ifdef VAR_RANGES
		logval("pions[14]", ((int)now.pions[14]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 32 - solitaire_plateau12.pml:104 - [pions[15] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][32] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[15]);
		now.pions[15] = 0;
#ifdef VAR_RANGES
		logval("pions[15]", ((int)now.pions[15]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 33 - solitaire_plateau12.pml:105 - [(run Joueur())] (0:0:0 - 1)
		IfNotBlocked
		reached[1][33] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 34 - solitaire_plateau12.pml:107 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][34] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Joueur */
	case 39: // STATE 1 - solitaire_plateau12.pml:13 - [(((ok==1)&&(pions[0]==1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!(((((int)((P0 *)_this)->ok)==1)&&(((int)now.pions[0])==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: ok */  (trpt+1)->bup.oval = ((P0 *)_this)->ok;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->ok = 0;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 2 - solitaire_plateau12.pml:13 - [ok = 0] (0:67:2 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->ok);
		((P0 *)_this)->ok = 0;
#ifdef VAR_RANGES
		logval("Joueur:ok", ((int)((P0 *)_this)->ok));
#endif
		;
		/* merge: pion = 0(67, 3, 67) */
		reached[0][3] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->pion;
		((P0 *)_this)->pion = 0;
#ifdef VAR_RANGES
		logval("Joueur:pion", ((P0 *)_this)->pion);
#endif
		;
		/* merge: goto manger(0, 4, 67) */
		reached[0][4] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 41: // STATE 5 - solitaire_plateau12.pml:14 - [(((ok==1)&&(pions[1]==1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		if (!(((((int)((P0 *)_this)->ok)==1)&&(((int)now.pions[1])==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: ok */  (trpt+1)->bup.oval = ((P0 *)_this)->ok;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->ok = 0;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 6 - solitaire_plateau12.pml:14 - [ok = 0] (0:67:2 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->ok);
		((P0 *)_this)->ok = 0;
#ifdef VAR_RANGES
		logval("Joueur:ok", ((int)((P0 *)_this)->ok));
#endif
		;
		/* merge: pion = 1(67, 7, 67) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->pion;
		((P0 *)_this)->pion = 1;
#ifdef VAR_RANGES
		logval("Joueur:pion", ((P0 *)_this)->pion);
#endif
		;
		/* merge: goto manger(0, 8, 67) */
		reached[0][8] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 43: // STATE 9 - solitaire_plateau12.pml:15 - [(((ok==1)&&(pions[2]==1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (!(((((int)((P0 *)_this)->ok)==1)&&(((int)now.pions[2])==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: ok */  (trpt+1)->bup.oval = ((P0 *)_this)->ok;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->ok = 0;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 10 - solitaire_plateau12.pml:15 - [ok = 0] (0:67:2 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->ok);
		((P0 *)_this)->ok = 0;
#ifdef VAR_RANGES
		logval("Joueur:ok", ((int)((P0 *)_this)->ok));
#endif
		;
		/* merge: pion = 2(67, 11, 67) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->pion;
		((P0 *)_this)->pion = 2;
#ifdef VAR_RANGES
		logval("Joueur:pion", ((P0 *)_this)->pion);
#endif
		;
		/* merge: goto manger(0, 12, 67) */
		reached[0][12] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 45: // STATE 13 - solitaire_plateau12.pml:16 - [(((ok==1)&&(pions[3]==1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		if (!(((((int)((P0 *)_this)->ok)==1)&&(((int)now.pions[3])==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: ok */  (trpt+1)->bup.oval = ((P0 *)_this)->ok;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->ok = 0;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 14 - solitaire_plateau12.pml:16 - [ok = 0] (0:67:2 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->ok);
		((P0 *)_this)->ok = 0;
#ifdef VAR_RANGES
		logval("Joueur:ok", ((int)((P0 *)_this)->ok));
#endif
		;
		/* merge: pion = 3(67, 15, 67) */
		reached[0][15] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->pion;
		((P0 *)_this)->pion = 3;
#ifdef VAR_RANGES
		logval("Joueur:pion", ((P0 *)_this)->pion);
#endif
		;
		/* merge: goto manger(0, 16, 67) */
		reached[0][16] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 47: // STATE 17 - solitaire_plateau12.pml:17 - [(((ok==1)&&(pions[4]==1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][17] = 1;
		if (!(((((int)((P0 *)_this)->ok)==1)&&(((int)now.pions[4])==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: ok */  (trpt+1)->bup.oval = ((P0 *)_this)->ok;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->ok = 0;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 18 - solitaire_plateau12.pml:17 - [ok = 0] (0:67:2 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->ok);
		((P0 *)_this)->ok = 0;
#ifdef VAR_RANGES
		logval("Joueur:ok", ((int)((P0 *)_this)->ok));
#endif
		;
		/* merge: pion = 4(67, 19, 67) */
		reached[0][19] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->pion;
		((P0 *)_this)->pion = 4;
#ifdef VAR_RANGES
		logval("Joueur:pion", ((P0 *)_this)->pion);
#endif
		;
		/* merge: goto manger(0, 20, 67) */
		reached[0][20] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 49: // STATE 21 - solitaire_plateau12.pml:18 - [(((ok==1)&&(pions[5]==1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][21] = 1;
		if (!(((((int)((P0 *)_this)->ok)==1)&&(((int)now.pions[5])==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: ok */  (trpt+1)->bup.oval = ((P0 *)_this)->ok;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->ok = 0;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 22 - solitaire_plateau12.pml:18 - [ok = 0] (0:67:2 - 1)
		IfNotBlocked
		reached[0][22] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->ok);
		((P0 *)_this)->ok = 0;
#ifdef VAR_RANGES
		logval("Joueur:ok", ((int)((P0 *)_this)->ok));
#endif
		;
		/* merge: pion = 5(67, 23, 67) */
		reached[0][23] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->pion;
		((P0 *)_this)->pion = 5;
#ifdef VAR_RANGES
		logval("Joueur:pion", ((P0 *)_this)->pion);
#endif
		;
		/* merge: goto manger(0, 24, 67) */
		reached[0][24] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 51: // STATE 25 - solitaire_plateau12.pml:19 - [(((ok==1)&&(pions[6]==1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][25] = 1;
		if (!(((((int)((P0 *)_this)->ok)==1)&&(((int)now.pions[6])==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: ok */  (trpt+1)->bup.oval = ((P0 *)_this)->ok;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->ok = 0;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 26 - solitaire_plateau12.pml:19 - [ok = 0] (0:67:2 - 1)
		IfNotBlocked
		reached[0][26] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->ok);
		((P0 *)_this)->ok = 0;
#ifdef VAR_RANGES
		logval("Joueur:ok", ((int)((P0 *)_this)->ok));
#endif
		;
		/* merge: pion = 6(67, 27, 67) */
		reached[0][27] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->pion;
		((P0 *)_this)->pion = 6;
#ifdef VAR_RANGES
		logval("Joueur:pion", ((P0 *)_this)->pion);
#endif
		;
		/* merge: goto manger(0, 28, 67) */
		reached[0][28] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 53: // STATE 29 - solitaire_plateau12.pml:20 - [(((ok==1)&&(pions[7]==1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][29] = 1;
		if (!(((((int)((P0 *)_this)->ok)==1)&&(((int)now.pions[7])==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: ok */  (trpt+1)->bup.oval = ((P0 *)_this)->ok;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->ok = 0;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 30 - solitaire_plateau12.pml:20 - [ok = 0] (0:67:2 - 1)
		IfNotBlocked
		reached[0][30] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->ok);
		((P0 *)_this)->ok = 0;
#ifdef VAR_RANGES
		logval("Joueur:ok", ((int)((P0 *)_this)->ok));
#endif
		;
		/* merge: pion = 7(67, 31, 67) */
		reached[0][31] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->pion;
		((P0 *)_this)->pion = 7;
#ifdef VAR_RANGES
		logval("Joueur:pion", ((P0 *)_this)->pion);
#endif
		;
		/* merge: goto manger(0, 32, 67) */
		reached[0][32] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 55: // STATE 33 - solitaire_plateau12.pml:21 - [(((ok==1)&&(pions[8]==1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][33] = 1;
		if (!(((((int)((P0 *)_this)->ok)==1)&&(((int)now.pions[8])==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: ok */  (trpt+1)->bup.oval = ((P0 *)_this)->ok;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->ok = 0;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 34 - solitaire_plateau12.pml:21 - [ok = 0] (0:67:2 - 1)
		IfNotBlocked
		reached[0][34] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->ok);
		((P0 *)_this)->ok = 0;
#ifdef VAR_RANGES
		logval("Joueur:ok", ((int)((P0 *)_this)->ok));
#endif
		;
		/* merge: pion = 8(67, 35, 67) */
		reached[0][35] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->pion;
		((P0 *)_this)->pion = 8;
#ifdef VAR_RANGES
		logval("Joueur:pion", ((P0 *)_this)->pion);
#endif
		;
		/* merge: goto manger(0, 36, 67) */
		reached[0][36] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 57: // STATE 37 - solitaire_plateau12.pml:22 - [(((ok==1)&&(pions[9]==1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		if (!(((((int)((P0 *)_this)->ok)==1)&&(((int)now.pions[9])==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: ok */  (trpt+1)->bup.oval = ((P0 *)_this)->ok;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->ok = 0;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 38 - solitaire_plateau12.pml:22 - [ok = 0] (0:67:2 - 1)
		IfNotBlocked
		reached[0][38] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->ok);
		((P0 *)_this)->ok = 0;
#ifdef VAR_RANGES
		logval("Joueur:ok", ((int)((P0 *)_this)->ok));
#endif
		;
		/* merge: pion = 9(67, 39, 67) */
		reached[0][39] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->pion;
		((P0 *)_this)->pion = 9;
#ifdef VAR_RANGES
		logval("Joueur:pion", ((P0 *)_this)->pion);
#endif
		;
		/* merge: goto manger(0, 40, 67) */
		reached[0][40] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 59: // STATE 41 - solitaire_plateau12.pml:23 - [(((ok==1)&&(pions[10]==1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][41] = 1;
		if (!(((((int)((P0 *)_this)->ok)==1)&&(((int)now.pions[10])==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: ok */  (trpt+1)->bup.oval = ((P0 *)_this)->ok;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->ok = 0;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 42 - solitaire_plateau12.pml:23 - [ok = 0] (0:67:2 - 1)
		IfNotBlocked
		reached[0][42] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->ok);
		((P0 *)_this)->ok = 0;
#ifdef VAR_RANGES
		logval("Joueur:ok", ((int)((P0 *)_this)->ok));
#endif
		;
		/* merge: pion = 10(67, 43, 67) */
		reached[0][43] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->pion;
		((P0 *)_this)->pion = 10;
#ifdef VAR_RANGES
		logval("Joueur:pion", ((P0 *)_this)->pion);
#endif
		;
		/* merge: goto manger(0, 44, 67) */
		reached[0][44] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 61: // STATE 45 - solitaire_plateau12.pml:24 - [(((ok==1)&&(pions[11]==1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][45] = 1;
		if (!(((((int)((P0 *)_this)->ok)==1)&&(((int)now.pions[11])==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: ok */  (trpt+1)->bup.oval = ((P0 *)_this)->ok;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->ok = 0;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 46 - solitaire_plateau12.pml:24 - [ok = 0] (0:67:2 - 1)
		IfNotBlocked
		reached[0][46] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->ok);
		((P0 *)_this)->ok = 0;
#ifdef VAR_RANGES
		logval("Joueur:ok", ((int)((P0 *)_this)->ok));
#endif
		;
		/* merge: pion = 11(67, 47, 67) */
		reached[0][47] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->pion;
		((P0 *)_this)->pion = 11;
#ifdef VAR_RANGES
		logval("Joueur:pion", ((P0 *)_this)->pion);
#endif
		;
		/* merge: goto manger(0, 48, 67) */
		reached[0][48] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 63: // STATE 49 - solitaire_plateau12.pml:25 - [(((ok==1)&&(pions[12]==1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][49] = 1;
		if (!(((((int)((P0 *)_this)->ok)==1)&&(((int)now.pions[12])==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: ok */  (trpt+1)->bup.oval = ((P0 *)_this)->ok;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->ok = 0;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 50 - solitaire_plateau12.pml:25 - [ok = 0] (0:67:2 - 1)
		IfNotBlocked
		reached[0][50] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->ok);
		((P0 *)_this)->ok = 0;
#ifdef VAR_RANGES
		logval("Joueur:ok", ((int)((P0 *)_this)->ok));
#endif
		;
		/* merge: pion = 12(67, 51, 67) */
		reached[0][51] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->pion;
		((P0 *)_this)->pion = 12;
#ifdef VAR_RANGES
		logval("Joueur:pion", ((P0 *)_this)->pion);
#endif
		;
		/* merge: goto manger(0, 52, 67) */
		reached[0][52] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 65: // STATE 53 - solitaire_plateau12.pml:26 - [(((ok==1)&&(pions[13]==1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][53] = 1;
		if (!(((((int)((P0 *)_this)->ok)==1)&&(((int)now.pions[13])==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: ok */  (trpt+1)->bup.oval = ((P0 *)_this)->ok;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->ok = 0;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 54 - solitaire_plateau12.pml:26 - [ok = 0] (0:67:2 - 1)
		IfNotBlocked
		reached[0][54] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->ok);
		((P0 *)_this)->ok = 0;
#ifdef VAR_RANGES
		logval("Joueur:ok", ((int)((P0 *)_this)->ok));
#endif
		;
		/* merge: pion = 13(67, 55, 67) */
		reached[0][55] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->pion;
		((P0 *)_this)->pion = 13;
#ifdef VAR_RANGES
		logval("Joueur:pion", ((P0 *)_this)->pion);
#endif
		;
		/* merge: goto manger(0, 56, 67) */
		reached[0][56] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 67: // STATE 57 - solitaire_plateau12.pml:27 - [(((ok==1)&&(pions[14]==1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][57] = 1;
		if (!(((((int)((P0 *)_this)->ok)==1)&&(((int)now.pions[14])==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: ok */  (trpt+1)->bup.oval = ((P0 *)_this)->ok;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->ok = 0;
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 58 - solitaire_plateau12.pml:27 - [ok = 0] (0:67:2 - 1)
		IfNotBlocked
		reached[0][58] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->ok);
		((P0 *)_this)->ok = 0;
#ifdef VAR_RANGES
		logval("Joueur:ok", ((int)((P0 *)_this)->ok));
#endif
		;
		/* merge: pion = 14(67, 59, 67) */
		reached[0][59] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->pion;
		((P0 *)_this)->pion = 14;
#ifdef VAR_RANGES
		logval("Joueur:pion", ((P0 *)_this)->pion);
#endif
		;
		/* merge: goto manger(0, 60, 67) */
		reached[0][60] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 69: // STATE 61 - solitaire_plateau12.pml:28 - [(((ok==1)&&(pions[15]==1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][61] = 1;
		if (!(((((int)((P0 *)_this)->ok)==1)&&(((int)now.pions[15])==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: ok */  (trpt+1)->bup.oval = ((P0 *)_this)->ok;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->ok = 0;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 62 - solitaire_plateau12.pml:28 - [ok = 0] (0:67:2 - 1)
		IfNotBlocked
		reached[0][62] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->ok);
		((P0 *)_this)->ok = 0;
#ifdef VAR_RANGES
		logval("Joueur:ok", ((int)((P0 *)_this)->ok));
#endif
		;
		/* merge: pion = 15(67, 63, 67) */
		reached[0][63] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->pion;
		((P0 *)_this)->pion = 15;
#ifdef VAR_RANGES
		logval("Joueur:pion", ((P0 *)_this)->pion);
#endif
		;
		/* merge: goto manger(0, 64, 67) */
		reached[0][64] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 71: // STATE 67 - solitaire_plateau12.pml:31 - [i = (pion/Jmax)] (0:0:1 - 33)
		IfNotBlocked
		reached[0][67] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->i;
		((P0 *)_this)->i = (((P0 *)_this)->pion/now.Jmax);
#ifdef VAR_RANGES
		logval("Joueur:i", ((P0 *)_this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 68 - solitaire_plateau12.pml:32 - [j = (pion%Jmax)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][68] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->j;
		((P0 *)_this)->j = (((P0 *)_this)->pion%now.Jmax);
#ifdef VAR_RANGES
		logval("Joueur:j", ((P0 *)_this)->j);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 69 - solitaire_plateau12.pml:35 - [((((((pions[pion]==1)&&(i>1))&&(pions[((i-1)+(Jmax*j))]==1))&&(pions[((i-2)+(Jmax*j))]==0))&&(plateau[((i-2)+(Jmax*j))]==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][69] = 1;
		if (!((((((((int)now.pions[ Index(((P0 *)_this)->pion, 16) ])==1)&&(((P0 *)_this)->i>1))&&(((int)now.pions[ Index(((((P0 *)_this)->i-1)+(now.Jmax*((P0 *)_this)->j)), 16) ])==1))&&(((int)now.pions[ Index(((((P0 *)_this)->i-2)+(now.Jmax*((P0 *)_this)->j)), 16) ])==0))&&(((int)now.plateau[ Index(((((P0 *)_this)->i-2)+(now.Jmax*((P0 *)_this)->j)), 16) ])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 70 - solitaire_plateau12.pml:37 - [pions[pion] = 0] (0:98:5 - 1)
		IfNotBlocked
		reached[0][70] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.pions[ Index(((P0 *)_this)->pion, 16) ]);
		now.pions[ Index(((P0 *)_this)->pion, 16) ] = 0;
#ifdef VAR_RANGES
		logval("pions[Joueur:pion]", ((int)now.pions[ Index(((P0 *)_this)->pion, 16) ]));
#endif
		;
		/* merge: pions[((i-1)+(Jmax*j))] = 0(98, 71, 98) */
		reached[0][71] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.pions[ Index(((((P0 *)_this)->i-1)+(now.Jmax*((P0 *)_this)->j)), 16) ]);
		now.pions[ Index(((((P0 *)_this)->i-1)+(now.Jmax*((P0 *)_this)->j)), 16) ] = 0;
#ifdef VAR_RANGES
		logval("pions[((Joueur:i-1)+(Jmax*Joueur:j))]", ((int)now.pions[ Index(((((P0 *)_this)->i-1)+(now.Jmax*((P0 *)_this)->j)), 16) ]));
#endif
		;
		/* merge: pions[((i-2)+(Jmax*j))] = 1(98, 72, 98) */
		reached[0][72] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.pions[ Index(((((P0 *)_this)->i-2)+(now.Jmax*((P0 *)_this)->j)), 16) ]);
		now.pions[ Index(((((P0 *)_this)->i-2)+(now.Jmax*((P0 *)_this)->j)), 16) ] = 1;
#ifdef VAR_RANGES
		logval("pions[((Joueur:i-2)+(Jmax*Joueur:j))]", ((int)now.pions[ Index(((((P0 *)_this)->i-2)+(now.Jmax*((P0 *)_this)->j)), 16) ]));
#endif
		;
		/* merge: Nb_pion = (Nb_pion-1)(98, 73, 98) */
		reached[0][73] = 1;
		(trpt+1)->bup.ovals[3] = now.Nb_pion;
		now.Nb_pion = (now.Nb_pion-1);
#ifdef VAR_RANGES
		logval("Nb_pion", now.Nb_pion);
#endif
		;
		/* merge: .(goto)(98, 96, 98) */
		reached[0][96] = 1;
		;
		/* merge: ok = 1(98, 97, 98) */
		reached[0][97] = 1;
		(trpt+1)->bup.ovals[4] = ((int)((P0 *)_this)->ok);
		((P0 *)_this)->ok = 1;
#ifdef VAR_RANGES
		logval("Joueur:ok", ((int)((P0 *)_this)->ok));
#endif
		;
		/* merge: .(goto)(0, 99, 98) */
		reached[0][99] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 75: // STATE 75 - solitaire_plateau12.pml:43 - [((((((pions[pion]==1)&&(i<(Imax-2)))&&(pions[((i+1)+(Jmax*j))]==1))&&(pions[((i+2)+(Jmax*j))]==0))&&(plateau[((i+2)+(Jmax*j))]==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][75] = 1;
		if (!((((((((int)now.pions[ Index(((P0 *)_this)->pion, 16) ])==1)&&(((P0 *)_this)->i<(now.Imax-2)))&&(((int)now.pions[ Index(((((P0 *)_this)->i+1)+(now.Jmax*((P0 *)_this)->j)), 16) ])==1))&&(((int)now.pions[ Index(((((P0 *)_this)->i+2)+(now.Jmax*((P0 *)_this)->j)), 16) ])==0))&&(((int)now.plateau[ Index(((((P0 *)_this)->i+2)+(now.Jmax*((P0 *)_this)->j)), 16) ])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 76 - solitaire_plateau12.pml:45 - [pions[pion] = 0] (0:98:5 - 1)
		IfNotBlocked
		reached[0][76] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.pions[ Index(((P0 *)_this)->pion, 16) ]);
		now.pions[ Index(((P0 *)_this)->pion, 16) ] = 0;
#ifdef VAR_RANGES
		logval("pions[Joueur:pion]", ((int)now.pions[ Index(((P0 *)_this)->pion, 16) ]));
#endif
		;
		/* merge: pions[((i+1)+(Jmax*j))] = 0(98, 77, 98) */
		reached[0][77] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.pions[ Index(((((P0 *)_this)->i+1)+(now.Jmax*((P0 *)_this)->j)), 16) ]);
		now.pions[ Index(((((P0 *)_this)->i+1)+(now.Jmax*((P0 *)_this)->j)), 16) ] = 0;
#ifdef VAR_RANGES
		logval("pions[((Joueur:i+1)+(Jmax*Joueur:j))]", ((int)now.pions[ Index(((((P0 *)_this)->i+1)+(now.Jmax*((P0 *)_this)->j)), 16) ]));
#endif
		;
		/* merge: pions[((i+2)+(Jmax*j))] = 1(98, 78, 98) */
		reached[0][78] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.pions[ Index(((((P0 *)_this)->i+2)+(now.Jmax*((P0 *)_this)->j)), 16) ]);
		now.pions[ Index(((((P0 *)_this)->i+2)+(now.Jmax*((P0 *)_this)->j)), 16) ] = 1;
#ifdef VAR_RANGES
		logval("pions[((Joueur:i+2)+(Jmax*Joueur:j))]", ((int)now.pions[ Index(((((P0 *)_this)->i+2)+(now.Jmax*((P0 *)_this)->j)), 16) ]));
#endif
		;
		/* merge: Nb_pion = (Nb_pion-1)(98, 79, 98) */
		reached[0][79] = 1;
		(trpt+1)->bup.ovals[3] = now.Nb_pion;
		now.Nb_pion = (now.Nb_pion-1);
#ifdef VAR_RANGES
		logval("Nb_pion", now.Nb_pion);
#endif
		;
		/* merge: .(goto)(98, 96, 98) */
		reached[0][96] = 1;
		;
		/* merge: ok = 1(98, 97, 98) */
		reached[0][97] = 1;
		(trpt+1)->bup.ovals[4] = ((int)((P0 *)_this)->ok);
		((P0 *)_this)->ok = 1;
#ifdef VAR_RANGES
		logval("Joueur:ok", ((int)((P0 *)_this)->ok));
#endif
		;
		/* merge: .(goto)(0, 99, 98) */
		reached[0][99] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 77: // STATE 81 - solitaire_plateau12.pml:50 - [((((((pions[pion]==1)&&(j>1))&&(pions[(i+(Jmax*(j-1)))]==1))&&(pions[(i+(Jmax*(j-2)))]==0))&&(plateau[(i+(Jmax*(j-2)))]==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][81] = 1;
		if (!((((((((int)now.pions[ Index(((P0 *)_this)->pion, 16) ])==1)&&(((P0 *)_this)->j>1))&&(((int)now.pions[ Index((((P0 *)_this)->i+(now.Jmax*(((P0 *)_this)->j-1))), 16) ])==1))&&(((int)now.pions[ Index((((P0 *)_this)->i+(now.Jmax*(((P0 *)_this)->j-2))), 16) ])==0))&&(((int)now.plateau[ Index((((P0 *)_this)->i+(now.Jmax*(((P0 *)_this)->j-2))), 16) ])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 82 - solitaire_plateau12.pml:52 - [pions[pion] = 0] (0:98:5 - 1)
		IfNotBlocked
		reached[0][82] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.pions[ Index(((P0 *)_this)->pion, 16) ]);
		now.pions[ Index(((P0 *)_this)->pion, 16) ] = 0;
#ifdef VAR_RANGES
		logval("pions[Joueur:pion]", ((int)now.pions[ Index(((P0 *)_this)->pion, 16) ]));
#endif
		;
		/* merge: pions[(i+(Jmax*(j-1)))] = 0(98, 83, 98) */
		reached[0][83] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.pions[ Index((((P0 *)_this)->i+(now.Jmax*(((P0 *)_this)->j-1))), 16) ]);
		now.pions[ Index((((P0 *)_this)->i+(now.Jmax*(((P0 *)_this)->j-1))), 16) ] = 0;
#ifdef VAR_RANGES
		logval("pions[(Joueur:i+(Jmax*(Joueur:j-1)))]", ((int)now.pions[ Index((((P0 *)_this)->i+(now.Jmax*(((P0 *)_this)->j-1))), 16) ]));
#endif
		;
		/* merge: pions[(i+(Jmax*(j-2)))] = 1(98, 84, 98) */
		reached[0][84] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.pions[ Index((((P0 *)_this)->i+(now.Jmax*(((P0 *)_this)->j-2))), 16) ]);
		now.pions[ Index((((P0 *)_this)->i+(now.Jmax*(((P0 *)_this)->j-2))), 16) ] = 1;
#ifdef VAR_RANGES
		logval("pions[(Joueur:i+(Jmax*(Joueur:j-2)))]", ((int)now.pions[ Index((((P0 *)_this)->i+(now.Jmax*(((P0 *)_this)->j-2))), 16) ]));
#endif
		;
		/* merge: Nb_pion = (Nb_pion-1)(98, 85, 98) */
		reached[0][85] = 1;
		(trpt+1)->bup.ovals[3] = now.Nb_pion;
		now.Nb_pion = (now.Nb_pion-1);
#ifdef VAR_RANGES
		logval("Nb_pion", now.Nb_pion);
#endif
		;
		/* merge: .(goto)(98, 96, 98) */
		reached[0][96] = 1;
		;
		/* merge: ok = 1(98, 97, 98) */
		reached[0][97] = 1;
		(trpt+1)->bup.ovals[4] = ((int)((P0 *)_this)->ok);
		((P0 *)_this)->ok = 1;
#ifdef VAR_RANGES
		logval("Joueur:ok", ((int)((P0 *)_this)->ok));
#endif
		;
		/* merge: .(goto)(0, 99, 98) */
		reached[0][99] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 79: // STATE 87 - solitaire_plateau12.pml:57 - [((((((pions[pion]==1)&&(j<(Jmax-2)))&&(pions[(i+(Jmax*(j+1)))]==1))&&(pions[(i+(Jmax*(j+2)))]==0))&&(plateau[(i+(Jmax*(j+2)))]==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][87] = 1;
		if (!((((((((int)now.pions[ Index(((P0 *)_this)->pion, 16) ])==1)&&(((P0 *)_this)->j<(now.Jmax-2)))&&(((int)now.pions[ Index((((P0 *)_this)->i+(now.Jmax*(((P0 *)_this)->j+1))), 16) ])==1))&&(((int)now.pions[ Index((((P0 *)_this)->i+(now.Jmax*(((P0 *)_this)->j+2))), 16) ])==0))&&(((int)now.plateau[ Index((((P0 *)_this)->i+(now.Jmax*(((P0 *)_this)->j+2))), 16) ])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 88 - solitaire_plateau12.pml:59 - [pions[pion] = 0] (0:98:5 - 1)
		IfNotBlocked
		reached[0][88] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.pions[ Index(((P0 *)_this)->pion, 16) ]);
		now.pions[ Index(((P0 *)_this)->pion, 16) ] = 0;
#ifdef VAR_RANGES
		logval("pions[Joueur:pion]", ((int)now.pions[ Index(((P0 *)_this)->pion, 16) ]));
#endif
		;
		/* merge: pions[(i+(Jmax*(j+1)))] = 0(98, 89, 98) */
		reached[0][89] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.pions[ Index((((P0 *)_this)->i+(now.Jmax*(((P0 *)_this)->j+1))), 16) ]);
		now.pions[ Index((((P0 *)_this)->i+(now.Jmax*(((P0 *)_this)->j+1))), 16) ] = 0;
#ifdef VAR_RANGES
		logval("pions[(Joueur:i+(Jmax*(Joueur:j+1)))]", ((int)now.pions[ Index((((P0 *)_this)->i+(now.Jmax*(((P0 *)_this)->j+1))), 16) ]));
#endif
		;
		/* merge: pions[(i+(Jmax*(j+2)))] = 1(98, 90, 98) */
		reached[0][90] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.pions[ Index((((P0 *)_this)->i+(now.Jmax*(((P0 *)_this)->j+2))), 16) ]);
		now.pions[ Index((((P0 *)_this)->i+(now.Jmax*(((P0 *)_this)->j+2))), 16) ] = 1;
#ifdef VAR_RANGES
		logval("pions[(Joueur:i+(Jmax*(Joueur:j+2)))]", ((int)now.pions[ Index((((P0 *)_this)->i+(now.Jmax*(((P0 *)_this)->j+2))), 16) ]));
#endif
		;
		/* merge: Nb_pion = (Nb_pion-1)(98, 91, 98) */
		reached[0][91] = 1;
		(trpt+1)->bup.ovals[3] = now.Nb_pion;
		now.Nb_pion = (now.Nb_pion-1);
#ifdef VAR_RANGES
		logval("Nb_pion", now.Nb_pion);
#endif
		;
		/* merge: .(goto)(98, 96, 98) */
		reached[0][96] = 1;
		;
		/* merge: ok = 1(98, 97, 98) */
		reached[0][97] = 1;
		(trpt+1)->bup.ovals[4] = ((int)((P0 *)_this)->ok);
		((P0 *)_this)->ok = 1;
#ifdef VAR_RANGES
		logval("Joueur:ok", ((int)((P0 *)_this)->ok));
#endif
		;
		/* merge: .(goto)(0, 99, 98) */
		reached[0][99] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 81: // STATE 94 - solitaire_plateau12.pml:64 - [(1)] (98:0:1 - 1)
		IfNotBlocked
		reached[0][94] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(98, 96, 98) */
		reached[0][96] = 1;
		;
		/* merge: ok = 1(98, 97, 98) */
		reached[0][97] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->ok);
		((P0 *)_this)->ok = 1;
#ifdef VAR_RANGES
		logval("Joueur:ok", ((int)((P0 *)_this)->ok));
#endif
		;
		/* merge: .(goto)(0, 99, 98) */
		reached[0][99] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 82: // STATE 97 - solitaire_plateau12.pml:66 - [ok = 1] (0:98:1 - 6)
		IfNotBlocked
		reached[0][97] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->ok);
		((P0 *)_this)->ok = 1;
#ifdef VAR_RANGES
		logval("Joueur:ok", ((int)((P0 *)_this)->ok));
#endif
		;
		/* merge: .(goto)(0, 99, 98) */
		reached[0][99] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 83: // STATE 101 - solitaire_plateau12.pml:70 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][101] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

