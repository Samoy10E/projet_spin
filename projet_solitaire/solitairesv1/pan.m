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
	case 3: // STATE 1 - solitaire_europeen.pml:155 - [((Nb_pion==1))] (6:0:0 - 1)
		
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
	case 4: // STATE 10 - solitaire_europeen.pml:160 - [-end-] (0:0:0 - 1)
		
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
	case 5: // STATE 1 - solitaire_europeen.pml:47 - [plateau[0] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[0]);
		now.plateau[0] = 0;
#ifdef VAR_RANGES
		logval("plateau[0]", ((int)now.plateau[0]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 2 - solitaire_europeen.pml:48 - [plateau[1] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[1]);
		now.plateau[1] = 0;
#ifdef VAR_RANGES
		logval("plateau[1]", ((int)now.plateau[1]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 3 - solitaire_europeen.pml:49 - [plateau[2] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[2]);
		now.plateau[2] = 1;
#ifdef VAR_RANGES
		logval("plateau[2]", ((int)now.plateau[2]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 4 - solitaire_europeen.pml:50 - [plateau[3] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[3]);
		now.plateau[3] = 1;
#ifdef VAR_RANGES
		logval("plateau[3]", ((int)now.plateau[3]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 5 - solitaire_europeen.pml:51 - [plateau[4] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[4]);
		now.plateau[4] = 1;
#ifdef VAR_RANGES
		logval("plateau[4]", ((int)now.plateau[4]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 6 - solitaire_europeen.pml:52 - [plateau[5] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[5]);
		now.plateau[5] = 0;
#ifdef VAR_RANGES
		logval("plateau[5]", ((int)now.plateau[5]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 7 - solitaire_europeen.pml:53 - [plateau[6] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[6]);
		now.plateau[6] = 0;
#ifdef VAR_RANGES
		logval("plateau[6]", ((int)now.plateau[6]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 8 - solitaire_europeen.pml:54 - [plateau[7] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[7]);
		now.plateau[7] = 0;
#ifdef VAR_RANGES
		logval("plateau[7]", ((int)now.plateau[7]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 9 - solitaire_europeen.pml:55 - [plateau[8] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[8]);
		now.plateau[8] = 1;
#ifdef VAR_RANGES
		logval("plateau[8]", ((int)now.plateau[8]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 10 - solitaire_europeen.pml:56 - [plateau[9] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[9]);
		now.plateau[9] = 1;
#ifdef VAR_RANGES
		logval("plateau[9]", ((int)now.plateau[9]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 11 - solitaire_europeen.pml:57 - [plateau[10] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[10]);
		now.plateau[10] = 1;
#ifdef VAR_RANGES
		logval("plateau[10]", ((int)now.plateau[10]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 12 - solitaire_europeen.pml:58 - [plateau[11] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[11]);
		now.plateau[11] = 1;
#ifdef VAR_RANGES
		logval("plateau[11]", ((int)now.plateau[11]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 13 - solitaire_europeen.pml:59 - [plateau[12] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[12]);
		now.plateau[12] = 1;
#ifdef VAR_RANGES
		logval("plateau[12]", ((int)now.plateau[12]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 14 - solitaire_europeen.pml:60 - [plateau[13] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][14] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[13]);
		now.plateau[13] = 0;
#ifdef VAR_RANGES
		logval("plateau[13]", ((int)now.plateau[13]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 15 - solitaire_europeen.pml:61 - [plateau[14] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[14]);
		now.plateau[14] = 1;
#ifdef VAR_RANGES
		logval("plateau[14]", ((int)now.plateau[14]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 16 - solitaire_europeen.pml:62 - [plateau[15] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[15]);
		now.plateau[15] = 1;
#ifdef VAR_RANGES
		logval("plateau[15]", ((int)now.plateau[15]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 17 - solitaire_europeen.pml:63 - [plateau[16] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][17] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[16]);
		now.plateau[16] = 1;
#ifdef VAR_RANGES
		logval("plateau[16]", ((int)now.plateau[16]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 18 - solitaire_europeen.pml:64 - [plateau[17] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[17]);
		now.plateau[17] = 1;
#ifdef VAR_RANGES
		logval("plateau[17]", ((int)now.plateau[17]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 19 - solitaire_europeen.pml:65 - [plateau[18] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][19] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[18]);
		now.plateau[18] = 1;
#ifdef VAR_RANGES
		logval("plateau[18]", ((int)now.plateau[18]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 20 - solitaire_europeen.pml:66 - [plateau[19] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][20] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[19]);
		now.plateau[19] = 1;
#ifdef VAR_RANGES
		logval("plateau[19]", ((int)now.plateau[19]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 21 - solitaire_europeen.pml:67 - [plateau[20] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][21] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[20]);
		now.plateau[20] = 1;
#ifdef VAR_RANGES
		logval("plateau[20]", ((int)now.plateau[20]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 22 - solitaire_europeen.pml:68 - [plateau[21] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][22] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[21]);
		now.plateau[21] = 1;
#ifdef VAR_RANGES
		logval("plateau[21]", ((int)now.plateau[21]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 23 - solitaire_europeen.pml:69 - [plateau[22] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][23] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[22]);
		now.plateau[22] = 1;
#ifdef VAR_RANGES
		logval("plateau[22]", ((int)now.plateau[22]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 24 - solitaire_europeen.pml:70 - [plateau[23] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][24] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[23]);
		now.plateau[23] = 1;
#ifdef VAR_RANGES
		logval("plateau[23]", ((int)now.plateau[23]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 25 - solitaire_europeen.pml:71 - [plateau[24] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][25] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[24]);
		now.plateau[24] = 1;
#ifdef VAR_RANGES
		logval("plateau[24]", ((int)now.plateau[24]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 26 - solitaire_europeen.pml:72 - [plateau[25] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][26] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[25]);
		now.plateau[25] = 1;
#ifdef VAR_RANGES
		logval("plateau[25]", ((int)now.plateau[25]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 27 - solitaire_europeen.pml:73 - [plateau[26] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][27] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[26]);
		now.plateau[26] = 1;
#ifdef VAR_RANGES
		logval("plateau[26]", ((int)now.plateau[26]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 28 - solitaire_europeen.pml:74 - [plateau[27] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][28] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[27]);
		now.plateau[27] = 1;
#ifdef VAR_RANGES
		logval("plateau[27]", ((int)now.plateau[27]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 29 - solitaire_europeen.pml:75 - [plateau[28] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][29] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[28]);
		now.plateau[28] = 1;
#ifdef VAR_RANGES
		logval("plateau[28]", ((int)now.plateau[28]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 30 - solitaire_europeen.pml:76 - [plateau[29] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][30] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[29]);
		now.plateau[29] = 1;
#ifdef VAR_RANGES
		logval("plateau[29]", ((int)now.plateau[29]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 31 - solitaire_europeen.pml:77 - [plateau[30] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][31] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[30]);
		now.plateau[30] = 1;
#ifdef VAR_RANGES
		logval("plateau[30]", ((int)now.plateau[30]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 32 - solitaire_europeen.pml:78 - [plateau[31] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][32] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[31]);
		now.plateau[31] = 1;
#ifdef VAR_RANGES
		logval("plateau[31]", ((int)now.plateau[31]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 33 - solitaire_europeen.pml:79 - [plateau[32] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][33] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[32]);
		now.plateau[32] = 1;
#ifdef VAR_RANGES
		logval("plateau[32]", ((int)now.plateau[32]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 34 - solitaire_europeen.pml:80 - [plateau[33] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][34] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[33]);
		now.plateau[33] = 1;
#ifdef VAR_RANGES
		logval("plateau[33]", ((int)now.plateau[33]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 35 - solitaire_europeen.pml:81 - [plateau[34] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][35] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[34]);
		now.plateau[34] = 1;
#ifdef VAR_RANGES
		logval("plateau[34]", ((int)now.plateau[34]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 36 - solitaire_europeen.pml:82 - [plateau[35] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][36] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[35]);
		now.plateau[35] = 0;
#ifdef VAR_RANGES
		logval("plateau[35]", ((int)now.plateau[35]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 37 - solitaire_europeen.pml:83 - [plateau[36] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][37] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[36]);
		now.plateau[36] = 1;
#ifdef VAR_RANGES
		logval("plateau[36]", ((int)now.plateau[36]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 38 - solitaire_europeen.pml:84 - [plateau[37] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][38] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[37]);
		now.plateau[37] = 1;
#ifdef VAR_RANGES
		logval("plateau[37]", ((int)now.plateau[37]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 39 - solitaire_europeen.pml:85 - [plateau[38] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][39] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[38]);
		now.plateau[38] = 1;
#ifdef VAR_RANGES
		logval("plateau[38]", ((int)now.plateau[38]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 40 - solitaire_europeen.pml:86 - [plateau[39] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][40] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[39]);
		now.plateau[39] = 1;
#ifdef VAR_RANGES
		logval("plateau[39]", ((int)now.plateau[39]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 41 - solitaire_europeen.pml:87 - [plateau[40] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][41] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[40]);
		now.plateau[40] = 1;
#ifdef VAR_RANGES
		logval("plateau[40]", ((int)now.plateau[40]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 42 - solitaire_europeen.pml:88 - [plateau[41] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][42] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[41]);
		now.plateau[41] = 0;
#ifdef VAR_RANGES
		logval("plateau[41]", ((int)now.plateau[41]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 43 - solitaire_europeen.pml:89 - [plateau[42] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][43] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[42]);
		now.plateau[42] = 0;
#ifdef VAR_RANGES
		logval("plateau[42]", ((int)now.plateau[42]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 44 - solitaire_europeen.pml:90 - [plateau[43] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][44] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[43]);
		now.plateau[43] = 0;
#ifdef VAR_RANGES
		logval("plateau[43]", ((int)now.plateau[43]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 45 - solitaire_europeen.pml:91 - [plateau[44] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][45] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[44]);
		now.plateau[44] = 1;
#ifdef VAR_RANGES
		logval("plateau[44]", ((int)now.plateau[44]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 46 - solitaire_europeen.pml:92 - [plateau[45] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][46] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[45]);
		now.plateau[45] = 1;
#ifdef VAR_RANGES
		logval("plateau[45]", ((int)now.plateau[45]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 47 - solitaire_europeen.pml:93 - [plateau[46] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][47] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[46]);
		now.plateau[46] = 1;
#ifdef VAR_RANGES
		logval("plateau[46]", ((int)now.plateau[46]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 48 - solitaire_europeen.pml:94 - [plateau[47] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][48] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[47]);
		now.plateau[47] = 0;
#ifdef VAR_RANGES
		logval("plateau[47]", ((int)now.plateau[47]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 49 - solitaire_europeen.pml:95 - [plateau[48] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][49] = 1;
		(trpt+1)->bup.oval = ((int)now.plateau[48]);
		now.plateau[48] = 0;
#ifdef VAR_RANGES
		logval("plateau[48]", ((int)now.plateau[48]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 50 - solitaire_europeen.pml:96 - [pions[0] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][50] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[0]);
		now.pions[0] = 0;
#ifdef VAR_RANGES
		logval("pions[0]", ((int)now.pions[0]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 51 - solitaire_europeen.pml:97 - [pions[1] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][51] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[1]);
		now.pions[1] = 0;
#ifdef VAR_RANGES
		logval("pions[1]", ((int)now.pions[1]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 52 - solitaire_europeen.pml:98 - [pions[2] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][52] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[2]);
		now.pions[2] = 1;
#ifdef VAR_RANGES
		logval("pions[2]", ((int)now.pions[2]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 53 - solitaire_europeen.pml:99 - [pions[3] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][53] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[3]);
		now.pions[3] = 1;
#ifdef VAR_RANGES
		logval("pions[3]", ((int)now.pions[3]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 54 - solitaire_europeen.pml:100 - [pions[4] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][54] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[4]);
		now.pions[4] = 1;
#ifdef VAR_RANGES
		logval("pions[4]", ((int)now.pions[4]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 55 - solitaire_europeen.pml:101 - [pions[5] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][55] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[5]);
		now.pions[5] = 0;
#ifdef VAR_RANGES
		logval("pions[5]", ((int)now.pions[5]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 56 - solitaire_europeen.pml:102 - [pions[6] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][56] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[6]);
		now.pions[6] = 0;
#ifdef VAR_RANGES
		logval("pions[6]", ((int)now.pions[6]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 57 - solitaire_europeen.pml:103 - [pions[7] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][57] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[7]);
		now.pions[7] = 0;
#ifdef VAR_RANGES
		logval("pions[7]", ((int)now.pions[7]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 58 - solitaire_europeen.pml:104 - [pions[8] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][58] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[8]);
		now.pions[8] = 1;
#ifdef VAR_RANGES
		logval("pions[8]", ((int)now.pions[8]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 59 - solitaire_europeen.pml:105 - [pions[9] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][59] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[9]);
		now.pions[9] = 1;
#ifdef VAR_RANGES
		logval("pions[9]", ((int)now.pions[9]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 60 - solitaire_europeen.pml:106 - [pions[10] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][60] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[10]);
		now.pions[10] = 1;
#ifdef VAR_RANGES
		logval("pions[10]", ((int)now.pions[10]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 61 - solitaire_europeen.pml:107 - [pions[11] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][61] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[11]);
		now.pions[11] = 1;
#ifdef VAR_RANGES
		logval("pions[11]", ((int)now.pions[11]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 62 - solitaire_europeen.pml:108 - [pions[12] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][62] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[12]);
		now.pions[12] = 1;
#ifdef VAR_RANGES
		logval("pions[12]", ((int)now.pions[12]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 63 - solitaire_europeen.pml:109 - [pions[13] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][63] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[13]);
		now.pions[13] = 0;
#ifdef VAR_RANGES
		logval("pions[13]", ((int)now.pions[13]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 64 - solitaire_europeen.pml:110 - [pions[14] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][64] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[14]);
		now.pions[14] = 1;
#ifdef VAR_RANGES
		logval("pions[14]", ((int)now.pions[14]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 65 - solitaire_europeen.pml:111 - [pions[15] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][65] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[15]);
		now.pions[15] = 1;
#ifdef VAR_RANGES
		logval("pions[15]", ((int)now.pions[15]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 66 - solitaire_europeen.pml:112 - [pions[16] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][66] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[16]);
		now.pions[16] = 1;
#ifdef VAR_RANGES
		logval("pions[16]", ((int)now.pions[16]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 67 - solitaire_europeen.pml:113 - [pions[17] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][67] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[17]);
		now.pions[17] = 1;
#ifdef VAR_RANGES
		logval("pions[17]", ((int)now.pions[17]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 68 - solitaire_europeen.pml:114 - [pions[18] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][68] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[18]);
		now.pions[18] = 1;
#ifdef VAR_RANGES
		logval("pions[18]", ((int)now.pions[18]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 69 - solitaire_europeen.pml:115 - [pions[19] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][69] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[19]);
		now.pions[19] = 1;
#ifdef VAR_RANGES
		logval("pions[19]", ((int)now.pions[19]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 70 - solitaire_europeen.pml:116 - [pions[20] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][70] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[20]);
		now.pions[20] = 1;
#ifdef VAR_RANGES
		logval("pions[20]", ((int)now.pions[20]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 71 - solitaire_europeen.pml:117 - [pions[21] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][71] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[21]);
		now.pions[21] = 1;
#ifdef VAR_RANGES
		logval("pions[21]", ((int)now.pions[21]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 72 - solitaire_europeen.pml:118 - [pions[22] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][72] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[22]);
		now.pions[22] = 1;
#ifdef VAR_RANGES
		logval("pions[22]", ((int)now.pions[22]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 73 - solitaire_europeen.pml:119 - [pions[23] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][73] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[23]);
		now.pions[23] = 1;
#ifdef VAR_RANGES
		logval("pions[23]", ((int)now.pions[23]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 74 - solitaire_europeen.pml:120 - [pions[24] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][74] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[24]);
		now.pions[24] = 0;
#ifdef VAR_RANGES
		logval("pions[24]", ((int)now.pions[24]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 75 - solitaire_europeen.pml:121 - [pions[25] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][75] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[25]);
		now.pions[25] = 1;
#ifdef VAR_RANGES
		logval("pions[25]", ((int)now.pions[25]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 76 - solitaire_europeen.pml:122 - [pions[26] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][76] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[26]);
		now.pions[26] = 1;
#ifdef VAR_RANGES
		logval("pions[26]", ((int)now.pions[26]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 77 - solitaire_europeen.pml:123 - [pions[27] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][77] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[27]);
		now.pions[27] = 1;
#ifdef VAR_RANGES
		logval("pions[27]", ((int)now.pions[27]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 78 - solitaire_europeen.pml:124 - [pions[28] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][78] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[28]);
		now.pions[28] = 1;
#ifdef VAR_RANGES
		logval("pions[28]", ((int)now.pions[28]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 83: // STATE 79 - solitaire_europeen.pml:125 - [pions[29] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][79] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[29]);
		now.pions[29] = 1;
#ifdef VAR_RANGES
		logval("pions[29]", ((int)now.pions[29]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 80 - solitaire_europeen.pml:126 - [pions[30] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][80] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[30]);
		now.pions[30] = 1;
#ifdef VAR_RANGES
		logval("pions[30]", ((int)now.pions[30]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 81 - solitaire_europeen.pml:127 - [pions[31] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][81] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[31]);
		now.pions[31] = 1;
#ifdef VAR_RANGES
		logval("pions[31]", ((int)now.pions[31]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 82 - solitaire_europeen.pml:128 - [pions[32] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][82] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[32]);
		now.pions[32] = 1;
#ifdef VAR_RANGES
		logval("pions[32]", ((int)now.pions[32]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 83 - solitaire_europeen.pml:129 - [pions[33] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][83] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[33]);
		now.pions[33] = 1;
#ifdef VAR_RANGES
		logval("pions[33]", ((int)now.pions[33]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 88: // STATE 84 - solitaire_europeen.pml:130 - [pions[34] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][84] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[34]);
		now.pions[34] = 1;
#ifdef VAR_RANGES
		logval("pions[34]", ((int)now.pions[34]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 89: // STATE 85 - solitaire_europeen.pml:131 - [pions[35] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][85] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[35]);
		now.pions[35] = 0;
#ifdef VAR_RANGES
		logval("pions[35]", ((int)now.pions[35]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 86 - solitaire_europeen.pml:132 - [pions[36] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][86] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[36]);
		now.pions[36] = 1;
#ifdef VAR_RANGES
		logval("pions[36]", ((int)now.pions[36]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 91: // STATE 87 - solitaire_europeen.pml:133 - [pions[37] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][87] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[37]);
		now.pions[37] = 1;
#ifdef VAR_RANGES
		logval("pions[37]", ((int)now.pions[37]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 92: // STATE 88 - solitaire_europeen.pml:134 - [pions[38] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][88] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[38]);
		now.pions[38] = 1;
#ifdef VAR_RANGES
		logval("pions[38]", ((int)now.pions[38]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 93: // STATE 89 - solitaire_europeen.pml:135 - [pions[39] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][89] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[39]);
		now.pions[39] = 1;
#ifdef VAR_RANGES
		logval("pions[39]", ((int)now.pions[39]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 94: // STATE 90 - solitaire_europeen.pml:136 - [pions[40] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][90] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[40]);
		now.pions[40] = 1;
#ifdef VAR_RANGES
		logval("pions[40]", ((int)now.pions[40]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 95: // STATE 91 - solitaire_europeen.pml:137 - [pions[41] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][91] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[41]);
		now.pions[41] = 0;
#ifdef VAR_RANGES
		logval("pions[41]", ((int)now.pions[41]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 96: // STATE 92 - solitaire_europeen.pml:138 - [pions[42] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][92] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[42]);
		now.pions[42] = 0;
#ifdef VAR_RANGES
		logval("pions[42]", ((int)now.pions[42]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 93 - solitaire_europeen.pml:139 - [pions[43] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][93] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[43]);
		now.pions[43] = 0;
#ifdef VAR_RANGES
		logval("pions[43]", ((int)now.pions[43]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 98: // STATE 94 - solitaire_europeen.pml:140 - [pions[44] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][94] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[44]);
		now.pions[44] = 1;
#ifdef VAR_RANGES
		logval("pions[44]", ((int)now.pions[44]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 99: // STATE 95 - solitaire_europeen.pml:141 - [pions[45] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][95] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[45]);
		now.pions[45] = 1;
#ifdef VAR_RANGES
		logval("pions[45]", ((int)now.pions[45]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 100: // STATE 96 - solitaire_europeen.pml:142 - [pions[46] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][96] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[46]);
		now.pions[46] = 1;
#ifdef VAR_RANGES
		logval("pions[46]", ((int)now.pions[46]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 101: // STATE 97 - solitaire_europeen.pml:143 - [pions[47] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][97] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[47]);
		now.pions[47] = 0;
#ifdef VAR_RANGES
		logval("pions[47]", ((int)now.pions[47]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 98 - solitaire_europeen.pml:144 - [pions[48] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][98] = 1;
		(trpt+1)->bup.oval = ((int)now.pions[48]);
		now.pions[48] = 0;
#ifdef VAR_RANGES
		logval("pions[48]", ((int)now.pions[48]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 103: // STATE 99 - solitaire_europeen.pml:146 - [(run pion(2,0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][99] = 1;
		if (!(addproc(II, 1, 0, 2, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 104: // STATE 100 - solitaire_europeen.pml:146 - [(run pion(3,0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][100] = 1;
		if (!(addproc(II, 1, 0, 3, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 105: // STATE 101 - solitaire_europeen.pml:146 - [(run pion(4,0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][101] = 1;
		if (!(addproc(II, 1, 0, 4, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 106: // STATE 102 - solitaire_europeen.pml:146 - [(run pion(1,1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][102] = 1;
		if (!(addproc(II, 1, 0, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 107: // STATE 103 - solitaire_europeen.pml:146 - [(run pion(2,1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][103] = 1;
		if (!(addproc(II, 1, 0, 2, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 108: // STATE 104 - solitaire_europeen.pml:146 - [(run pion(3,1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][104] = 1;
		if (!(addproc(II, 1, 0, 3, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 109: // STATE 105 - solitaire_europeen.pml:146 - [(run pion(4,1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][105] = 1;
		if (!(addproc(II, 1, 0, 4, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 110: // STATE 106 - solitaire_europeen.pml:146 - [(run pion(5,1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][106] = 1;
		if (!(addproc(II, 1, 0, 5, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 107 - solitaire_europeen.pml:146 - [(run pion(0,2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][107] = 1;
		if (!(addproc(II, 1, 0, 0, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 112: // STATE 108 - solitaire_europeen.pml:146 - [(run pion(1,2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][108] = 1;
		if (!(addproc(II, 1, 0, 1, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 113: // STATE 109 - solitaire_europeen.pml:146 - [(run pion(2,2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][109] = 1;
		if (!(addproc(II, 1, 0, 2, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 114: // STATE 110 - solitaire_europeen.pml:147 - [(run pion(3,2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][110] = 1;
		if (!(addproc(II, 1, 0, 3, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 115: // STATE 111 - solitaire_europeen.pml:147 - [(run pion(4,2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][111] = 1;
		if (!(addproc(II, 1, 0, 4, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 116: // STATE 112 - solitaire_europeen.pml:147 - [(run pion(5,2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][112] = 1;
		if (!(addproc(II, 1, 0, 5, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 117: // STATE 113 - solitaire_europeen.pml:147 - [(run pion(6,2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][113] = 1;
		if (!(addproc(II, 1, 0, 6, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 118: // STATE 114 - solitaire_europeen.pml:147 - [(run pion(0,3))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][114] = 1;
		if (!(addproc(II, 1, 0, 0, 3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 119: // STATE 115 - solitaire_europeen.pml:147 - [(run pion(1,3))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][115] = 1;
		if (!(addproc(II, 1, 0, 1, 3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 120: // STATE 116 - solitaire_europeen.pml:147 - [(run pion(2,3))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][116] = 1;
		if (!(addproc(II, 1, 0, 2, 3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 121: // STATE 117 - solitaire_europeen.pml:147 - [(run pion(4,3))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][117] = 1;
		if (!(addproc(II, 1, 0, 4, 3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 122: // STATE 118 - solitaire_europeen.pml:147 - [(run pion(5,3))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][118] = 1;
		if (!(addproc(II, 1, 0, 5, 3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 123: // STATE 119 - solitaire_europeen.pml:147 - [(run pion(6,3))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][119] = 1;
		if (!(addproc(II, 1, 0, 6, 3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 124: // STATE 120 - solitaire_europeen.pml:148 - [(run pion(0,4))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][120] = 1;
		if (!(addproc(II, 1, 0, 0, 4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 125: // STATE 121 - solitaire_europeen.pml:148 - [(run pion(1,4))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][121] = 1;
		if (!(addproc(II, 1, 0, 1, 4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 126: // STATE 122 - solitaire_europeen.pml:148 - [(run pion(2,4))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][122] = 1;
		if (!(addproc(II, 1, 0, 2, 4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 127: // STATE 123 - solitaire_europeen.pml:148 - [(run pion(3,4))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][123] = 1;
		if (!(addproc(II, 1, 0, 3, 4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 128: // STATE 124 - solitaire_europeen.pml:148 - [(run pion(4,4))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][124] = 1;
		if (!(addproc(II, 1, 0, 4, 4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 129: // STATE 125 - solitaire_europeen.pml:148 - [(run pion(5,4))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][125] = 1;
		if (!(addproc(II, 1, 0, 5, 4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 130: // STATE 126 - solitaire_europeen.pml:148 - [(run pion(6,4))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][126] = 1;
		if (!(addproc(II, 1, 0, 6, 4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 131: // STATE 127 - solitaire_europeen.pml:148 - [(run pion(1,5))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][127] = 1;
		if (!(addproc(II, 1, 0, 1, 5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 132: // STATE 128 - solitaire_europeen.pml:148 - [(run pion(2,5))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][128] = 1;
		if (!(addproc(II, 1, 0, 2, 5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 133: // STATE 129 - solitaire_europeen.pml:148 - [(run pion(3,5))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][129] = 1;
		if (!(addproc(II, 1, 0, 3, 5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 134: // STATE 130 - solitaire_europeen.pml:149 - [(run pion(4,5))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][130] = 1;
		if (!(addproc(II, 1, 0, 4, 5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 135: // STATE 131 - solitaire_europeen.pml:149 - [(run pion(5,5))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][131] = 1;
		if (!(addproc(II, 1, 0, 5, 5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 136: // STATE 132 - solitaire_europeen.pml:149 - [(run pion(2,6))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][132] = 1;
		if (!(addproc(II, 1, 0, 2, 6)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 137: // STATE 133 - solitaire_europeen.pml:149 - [(run pion(3,6))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][133] = 1;
		if (!(addproc(II, 1, 0, 3, 6)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 138: // STATE 134 - solitaire_europeen.pml:149 - [(run pion(4,6))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][134] = 1;
		if (!(addproc(II, 1, 0, 4, 6)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 139: // STATE 136 - solitaire_europeen.pml:150 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][136] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC pion */
	case 140: // STATE 1 - solitaire_europeen.pml:11 - [((((((pions[(i+(Imax*j))]==1)&&(i>1))&&(pions[((i-1)+(Imax*j))]==1))&&(pions[((i-2)+(Imax*j))]==0))&&(plateau[((i-2)+(Imax*j))]==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((((((int)now.pions[ Index((((P0 *)_this)->i+(now.Imax*((P0 *)_this)->j)), 49) ])==1)&&(((P0 *)_this)->i>1))&&(((int)now.pions[ Index(((((P0 *)_this)->i-1)+(now.Imax*((P0 *)_this)->j)), 49) ])==1))&&(((int)now.pions[ Index(((((P0 *)_this)->i-2)+(now.Imax*((P0 *)_this)->j)), 49) ])==0))&&(((int)now.plateau[ Index(((((P0 *)_this)->i-2)+(now.Imax*((P0 *)_this)->j)), 49) ])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 141: // STATE 2 - solitaire_europeen.pml:13 - [pions[(i+(Imax*j))] = 0] (0:27:4 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.pions[ Index((((P0 *)_this)->i+(now.Imax*((P0 *)_this)->j)), 49) ]);
		now.pions[ Index((((P0 *)_this)->i+(now.Imax*((P0 *)_this)->j)), 49) ] = 0;
#ifdef VAR_RANGES
		logval("pions[(pion:i+(Imax*pion:j))]", ((int)now.pions[ Index((((P0 *)_this)->i+(now.Imax*((P0 *)_this)->j)), 49) ]));
#endif
		;
		/* merge: pions[((i-1)+(Imax*j))] = 0(27, 3, 27) */
		reached[0][3] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.pions[ Index(((((P0 *)_this)->i-1)+(now.Imax*((P0 *)_this)->j)), 49) ]);
		now.pions[ Index(((((P0 *)_this)->i-1)+(now.Imax*((P0 *)_this)->j)), 49) ] = 0;
#ifdef VAR_RANGES
		logval("pions[((pion:i-1)+(Imax*pion:j))]", ((int)now.pions[ Index(((((P0 *)_this)->i-1)+(now.Imax*((P0 *)_this)->j)), 49) ]));
#endif
		;
		/* merge: pions[((i-2)+(Imax*j))] = 1(27, 4, 27) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.pions[ Index(((((P0 *)_this)->i-2)+(now.Imax*((P0 *)_this)->j)), 49) ]);
		now.pions[ Index(((((P0 *)_this)->i-2)+(now.Imax*((P0 *)_this)->j)), 49) ] = 1;
#ifdef VAR_RANGES
		logval("pions[((pion:i-2)+(Imax*pion:j))]", ((int)now.pions[ Index(((((P0 *)_this)->i-2)+(now.Imax*((P0 *)_this)->j)), 49) ]));
#endif
		;
		/* merge: i = (i-2)(27, 5, 27) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->i;
		((P0 *)_this)->i = (((P0 *)_this)->i-2);
#ifdef VAR_RANGES
		logval("pion:i", ((P0 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 28, 27) */
		reached[0][28] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 142: // STATE 7 - solitaire_europeen.pml:18 - [((((((pions[(i+(Imax*j))]==1)&&(i<(Imax-2)))&&(pions[((i+1)+(Imax*j))]==1))&&(pions[((i+2)+(Imax*j))]==0))&&(plateau[((i+2)+(Imax*j))]==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		if (!((((((((int)now.pions[ Index((((P0 *)_this)->i+(now.Imax*((P0 *)_this)->j)), 49) ])==1)&&(((P0 *)_this)->i<(now.Imax-2)))&&(((int)now.pions[ Index(((((P0 *)_this)->i+1)+(now.Imax*((P0 *)_this)->j)), 49) ])==1))&&(((int)now.pions[ Index(((((P0 *)_this)->i+2)+(now.Imax*((P0 *)_this)->j)), 49) ])==0))&&(((int)now.plateau[ Index(((((P0 *)_this)->i+2)+(now.Imax*((P0 *)_this)->j)), 49) ])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 143: // STATE 8 - solitaire_europeen.pml:20 - [pions[(i+(Imax*j))] = 0] (0:27:4 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.pions[ Index((((P0 *)_this)->i+(now.Imax*((P0 *)_this)->j)), 49) ]);
		now.pions[ Index((((P0 *)_this)->i+(now.Imax*((P0 *)_this)->j)), 49) ] = 0;
#ifdef VAR_RANGES
		logval("pions[(pion:i+(Imax*pion:j))]", ((int)now.pions[ Index((((P0 *)_this)->i+(now.Imax*((P0 *)_this)->j)), 49) ]));
#endif
		;
		/* merge: pions[((i+1)+(Imax*j))] = 0(27, 9, 27) */
		reached[0][9] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.pions[ Index(((((P0 *)_this)->i+1)+(now.Imax*((P0 *)_this)->j)), 49) ]);
		now.pions[ Index(((((P0 *)_this)->i+1)+(now.Imax*((P0 *)_this)->j)), 49) ] = 0;
#ifdef VAR_RANGES
		logval("pions[((pion:i+1)+(Imax*pion:j))]", ((int)now.pions[ Index(((((P0 *)_this)->i+1)+(now.Imax*((P0 *)_this)->j)), 49) ]));
#endif
		;
		/* merge: pions[((i+2)+(Imax*j))] = 1(27, 10, 27) */
		reached[0][10] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.pions[ Index(((((P0 *)_this)->i+2)+(now.Imax*((P0 *)_this)->j)), 49) ]);
		now.pions[ Index(((((P0 *)_this)->i+2)+(now.Imax*((P0 *)_this)->j)), 49) ] = 1;
#ifdef VAR_RANGES
		logval("pions[((pion:i+2)+(Imax*pion:j))]", ((int)now.pions[ Index(((((P0 *)_this)->i+2)+(now.Imax*((P0 *)_this)->j)), 49) ]));
#endif
		;
		/* merge: i = (i+2)(27, 11, 27) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->i;
		((P0 *)_this)->i = (((P0 *)_this)->i+2);
#ifdef VAR_RANGES
		logval("pion:i", ((P0 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 28, 27) */
		reached[0][28] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 144: // STATE 13 - solitaire_europeen.pml:25 - [((((((pions[(i+(Imax*j))]==1)&&(j>1))&&(pions[(i+(Imax*(j-1)))]==1))&&(pions[(i+(Imax*(j-2)))]==0))&&(plateau[(i+(Imax*(j-2)))]==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		if (!((((((((int)now.pions[ Index((((P0 *)_this)->i+(now.Imax*((P0 *)_this)->j)), 49) ])==1)&&(((P0 *)_this)->j>1))&&(((int)now.pions[ Index((((P0 *)_this)->i+(now.Imax*(((P0 *)_this)->j-1))), 49) ])==1))&&(((int)now.pions[ Index((((P0 *)_this)->i+(now.Imax*(((P0 *)_this)->j-2))), 49) ])==0))&&(((int)now.plateau[ Index((((P0 *)_this)->i+(now.Imax*(((P0 *)_this)->j-2))), 49) ])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 145: // STATE 14 - solitaire_europeen.pml:27 - [pions[(i+(Imax*j))] = 0] (0:27:4 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.pions[ Index((((P0 *)_this)->i+(now.Imax*((P0 *)_this)->j)), 49) ]);
		now.pions[ Index((((P0 *)_this)->i+(now.Imax*((P0 *)_this)->j)), 49) ] = 0;
#ifdef VAR_RANGES
		logval("pions[(pion:i+(Imax*pion:j))]", ((int)now.pions[ Index((((P0 *)_this)->i+(now.Imax*((P0 *)_this)->j)), 49) ]));
#endif
		;
		/* merge: pions[(i+(Imax*(j-1)))] = 0(27, 15, 27) */
		reached[0][15] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.pions[ Index((((P0 *)_this)->i+(now.Imax*(((P0 *)_this)->j-1))), 49) ]);
		now.pions[ Index((((P0 *)_this)->i+(now.Imax*(((P0 *)_this)->j-1))), 49) ] = 0;
#ifdef VAR_RANGES
		logval("pions[(pion:i+(Imax*(pion:j-1)))]", ((int)now.pions[ Index((((P0 *)_this)->i+(now.Imax*(((P0 *)_this)->j-1))), 49) ]));
#endif
		;
		/* merge: pions[(i+(Imax*(j-2)))] = 1(27, 16, 27) */
		reached[0][16] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.pions[ Index((((P0 *)_this)->i+(now.Imax*(((P0 *)_this)->j-2))), 49) ]);
		now.pions[ Index((((P0 *)_this)->i+(now.Imax*(((P0 *)_this)->j-2))), 49) ] = 1;
#ifdef VAR_RANGES
		logval("pions[(pion:i+(Imax*(pion:j-2)))]", ((int)now.pions[ Index((((P0 *)_this)->i+(now.Imax*(((P0 *)_this)->j-2))), 49) ]));
#endif
		;
		/* merge: j = (j-2)(27, 17, 27) */
		reached[0][17] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->j;
		((P0 *)_this)->j = (((P0 *)_this)->j-2);
#ifdef VAR_RANGES
		logval("pion:j", ((P0 *)_this)->j);
#endif
		;
		/* merge: .(goto)(0, 28, 27) */
		reached[0][28] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 146: // STATE 19 - solitaire_europeen.pml:32 - [((((((pions[(i+(Imax*j))]==1)&&(j<(Jmax-2)))&&(pions[(i+(Imax*(j+1)))]==1))&&(pions[(i+(Imax*(j+2)))]==0))&&(plateau[(i+(Imax*(j+2)))]==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		if (!((((((((int)now.pions[ Index((((P0 *)_this)->i+(now.Imax*((P0 *)_this)->j)), 49) ])==1)&&(((P0 *)_this)->j<(now.Jmax-2)))&&(((int)now.pions[ Index((((P0 *)_this)->i+(now.Imax*(((P0 *)_this)->j+1))), 49) ])==1))&&(((int)now.pions[ Index((((P0 *)_this)->i+(now.Imax*(((P0 *)_this)->j+2))), 49) ])==0))&&(((int)now.plateau[ Index((((P0 *)_this)->i+(now.Imax*(((P0 *)_this)->j+2))), 49) ])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 147: // STATE 20 - solitaire_europeen.pml:34 - [pions[(i+(Imax*j))] = 0] (0:27:4 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.pions[ Index((((P0 *)_this)->i+(now.Imax*((P0 *)_this)->j)), 49) ]);
		now.pions[ Index((((P0 *)_this)->i+(now.Imax*((P0 *)_this)->j)), 49) ] = 0;
#ifdef VAR_RANGES
		logval("pions[(pion:i+(Imax*pion:j))]", ((int)now.pions[ Index((((P0 *)_this)->i+(now.Imax*((P0 *)_this)->j)), 49) ]));
#endif
		;
		/* merge: pions[(i+(Imax*(j+1)))] = 0(27, 21, 27) */
		reached[0][21] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.pions[ Index((((P0 *)_this)->i+(now.Imax*(((P0 *)_this)->j+1))), 49) ]);
		now.pions[ Index((((P0 *)_this)->i+(now.Imax*(((P0 *)_this)->j+1))), 49) ] = 0;
#ifdef VAR_RANGES
		logval("pions[(pion:i+(Imax*(pion:j+1)))]", ((int)now.pions[ Index((((P0 *)_this)->i+(now.Imax*(((P0 *)_this)->j+1))), 49) ]));
#endif
		;
		/* merge: pions[(i+(Imax*(j+2)))] = 1(27, 22, 27) */
		reached[0][22] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.pions[ Index((((P0 *)_this)->i+(now.Imax*(((P0 *)_this)->j+2))), 49) ]);
		now.pions[ Index((((P0 *)_this)->i+(now.Imax*(((P0 *)_this)->j+2))), 49) ] = 1;
#ifdef VAR_RANGES
		logval("pions[(pion:i+(Imax*(pion:j+2)))]", ((int)now.pions[ Index((((P0 *)_this)->i+(now.Imax*(((P0 *)_this)->j+2))), 49) ]));
#endif
		;
		/* merge: j = (j+2)(27, 23, 27) */
		reached[0][23] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->j;
		((P0 *)_this)->j = (((P0 *)_this)->j+2);
#ifdef VAR_RANGES
		logval("pion:j", ((P0 *)_this)->j);
#endif
		;
		/* merge: .(goto)(0, 28, 27) */
		reached[0][28] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 148: // STATE 25 - solitaire_europeen.pml:39 - [((pions[(i+(Imax*j))]==0))] (0:0:2 - 1)
		IfNotBlocked
		reached[0][25] = 1;
		if (!((((int)now.pions[ Index((((P0 *)_this)->i+(now.Imax*((P0 *)_this)->j)), 49) ])==0)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: i */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->i;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->i = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: j */  (trpt+1)->bup.ovals[1] = ((P0 *)_this)->j;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->j = 0;
		_m = 3; goto P999; /* 0 */
	case 149: // STATE 30 - solitaire_europeen.pml:42 - [Nb_pion = (Nb_pion-1)] (0:0:1 - 3)
		IfNotBlocked
		reached[0][30] = 1;
		(trpt+1)->bup.oval = now.Nb_pion;
		now.Nb_pion = (now.Nb_pion-1);
#ifdef VAR_RANGES
		logval("Nb_pion", now.Nb_pion);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 150: // STATE 31 - solitaire_europeen.pml:45 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][31] = 1;
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

