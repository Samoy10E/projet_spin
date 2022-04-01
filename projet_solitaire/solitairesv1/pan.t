#ifdef PEG
struct T_SRC {
	char *fl; int ln;
} T_SRC[NTRANS];

void
tr_2_src(int m, char *file, int ln)
{	T_SRC[m].fl = file;
	T_SRC[m].ln = ln;
}

void
putpeg(int n, int m)
{	printf("%5d	trans %4d ", m, n);
	printf("%s:%d\n",
		T_SRC[n].fl, T_SRC[n].ln);
}
#endif

void
settable(void)
{	Trans *T;
	Trans *settr(int, int, int, int, int, char *, int, int, int);

	trans = (Trans ***) emalloc(4*sizeof(Trans **));

	/* proctype 2: never_0 */

	trans[2] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[2][7]	= settr(173,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[2][6] = settr(172,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(172,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(172,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 2][3] = settr(169,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(169,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[2][1]	= settr(167,0,6,3,3,"((Nb_pion==1))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached2[2] = 1;
	trans[2][2]	= settr(0,0,0,0,0,"assert(!((Nb_pion==1)))",0,0,0);
	trans[2][4]	= settr(170,0,6,1,0,"(1)", 0, 2, 0);
	trans[2][5]	= settr(171,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[2][8]	= settr(174,0,9,1,0,"break", 0, 2, 0);
	trans[2][9]	= settr(175,0,10,1,0,"(1)", 0, 2, 0);
	trans[2][10]	= settr(176,0,0,4,4,"-end-", 0, 3500, 0);

	/* proctype 1: :init: */

	trans[1] = (Trans **) emalloc(137*sizeof(Trans *));

	trans[1][1]	= settr(31,0,2,5,5,"plateau[0] = 0", 1, 2, 0);
	trans[1][2]	= settr(32,0,3,6,6,"plateau[1] = 0", 1, 2, 0);
	trans[1][3]	= settr(33,0,4,7,7,"plateau[2] = 1", 1, 2, 0);
	trans[1][4]	= settr(34,0,5,8,8,"plateau[3] = 1", 1, 2, 0);
	trans[1][5]	= settr(35,0,6,9,9,"plateau[4] = 1", 1, 2, 0);
	trans[1][6]	= settr(36,0,7,10,10,"plateau[5] = 0", 1, 2, 0);
	trans[1][7]	= settr(37,0,8,11,11,"plateau[6] = 0", 1, 2, 0);
	trans[1][8]	= settr(38,0,9,12,12,"plateau[7] = 0", 1, 2, 0);
	trans[1][9]	= settr(39,0,10,13,13,"plateau[8] = 1", 1, 2, 0);
	trans[1][10]	= settr(40,0,11,14,14,"plateau[9] = 1", 1, 2, 0);
	trans[1][11]	= settr(41,0,12,15,15,"plateau[10] = 1", 1, 2, 0);
	trans[1][12]	= settr(42,0,13,16,16,"plateau[11] = 1", 1, 2, 0);
	trans[1][13]	= settr(43,0,14,17,17,"plateau[12] = 1", 1, 2, 0);
	trans[1][14]	= settr(44,0,15,18,18,"plateau[13] = 0", 1, 2, 0);
	trans[1][15]	= settr(45,0,16,19,19,"plateau[14] = 1", 1, 2, 0);
	trans[1][16]	= settr(46,0,17,20,20,"plateau[15] = 1", 1, 2, 0);
	trans[1][17]	= settr(47,0,18,21,21,"plateau[16] = 1", 1, 2, 0);
	trans[1][18]	= settr(48,0,19,22,22,"plateau[17] = 1", 1, 2, 0);
	trans[1][19]	= settr(49,0,20,23,23,"plateau[18] = 1", 1, 2, 0);
	trans[1][20]	= settr(50,0,21,24,24,"plateau[19] = 1", 1, 2, 0);
	trans[1][21]	= settr(51,0,22,25,25,"plateau[20] = 1", 1, 2, 0);
	trans[1][22]	= settr(52,0,23,26,26,"plateau[21] = 1", 1, 2, 0);
	trans[1][23]	= settr(53,0,24,27,27,"plateau[22] = 1", 1, 2, 0);
	trans[1][24]	= settr(54,0,25,28,28,"plateau[23] = 1", 1, 2, 0);
	trans[1][25]	= settr(55,0,26,29,29,"plateau[24] = 1", 1, 2, 0);
	trans[1][26]	= settr(56,0,27,30,30,"plateau[25] = 1", 1, 2, 0);
	trans[1][27]	= settr(57,0,28,31,31,"plateau[26] = 1", 1, 2, 0);
	trans[1][28]	= settr(58,0,29,32,32,"plateau[27] = 1", 1, 2, 0);
	trans[1][29]	= settr(59,0,30,33,33,"plateau[28] = 1", 1, 2, 0);
	trans[1][30]	= settr(60,0,31,34,34,"plateau[29] = 1", 1, 2, 0);
	trans[1][31]	= settr(61,0,32,35,35,"plateau[30] = 1", 1, 2, 0);
	trans[1][32]	= settr(62,0,33,36,36,"plateau[31] = 1", 1, 2, 0);
	trans[1][33]	= settr(63,0,34,37,37,"plateau[32] = 1", 1, 2, 0);
	trans[1][34]	= settr(64,0,35,38,38,"plateau[33] = 1", 1, 2, 0);
	trans[1][35]	= settr(65,0,36,39,39,"plateau[34] = 1", 1, 2, 0);
	trans[1][36]	= settr(66,0,37,40,40,"plateau[35] = 0", 1, 2, 0);
	trans[1][37]	= settr(67,0,38,41,41,"plateau[36] = 1", 1, 2, 0);
	trans[1][38]	= settr(68,0,39,42,42,"plateau[37] = 1", 1, 2, 0);
	trans[1][39]	= settr(69,0,40,43,43,"plateau[38] = 1", 1, 2, 0);
	trans[1][40]	= settr(70,0,41,44,44,"plateau[39] = 1", 1, 2, 0);
	trans[1][41]	= settr(71,0,42,45,45,"plateau[40] = 1", 1, 2, 0);
	trans[1][42]	= settr(72,0,43,46,46,"plateau[41] = 0", 1, 2, 0);
	trans[1][43]	= settr(73,0,44,47,47,"plateau[42] = 0", 1, 2, 0);
	trans[1][44]	= settr(74,0,45,48,48,"plateau[43] = 0", 1, 2, 0);
	trans[1][45]	= settr(75,0,46,49,49,"plateau[44] = 1", 1, 2, 0);
	trans[1][46]	= settr(76,0,47,50,50,"plateau[45] = 1", 1, 2, 0);
	trans[1][47]	= settr(77,0,48,51,51,"plateau[46] = 1", 1, 2, 0);
	trans[1][48]	= settr(78,0,49,52,52,"plateau[47] = 0", 1, 2, 0);
	trans[1][49]	= settr(79,0,50,53,53,"plateau[48] = 0", 1, 2, 0);
	trans[1][50]	= settr(80,0,51,54,54,"pions[0] = 0", 1, 2, 0);
	trans[1][51]	= settr(81,0,52,55,55,"pions[1] = 0", 1, 2, 0);
	trans[1][52]	= settr(82,0,53,56,56,"pions[2] = 1", 1, 2, 0);
	trans[1][53]	= settr(83,0,54,57,57,"pions[3] = 1", 1, 2, 0);
	trans[1][54]	= settr(84,0,55,58,58,"pions[4] = 1", 1, 2, 0);
	trans[1][55]	= settr(85,0,56,59,59,"pions[5] = 0", 1, 2, 0);
	trans[1][56]	= settr(86,0,57,60,60,"pions[6] = 0", 1, 2, 0);
	trans[1][57]	= settr(87,0,58,61,61,"pions[7] = 0", 1, 2, 0);
	trans[1][58]	= settr(88,0,59,62,62,"pions[8] = 1", 1, 2, 0);
	trans[1][59]	= settr(89,0,60,63,63,"pions[9] = 1", 1, 2, 0);
	trans[1][60]	= settr(90,0,61,64,64,"pions[10] = 1", 1, 2, 0);
	trans[1][61]	= settr(91,0,62,65,65,"pions[11] = 1", 1, 2, 0);
	trans[1][62]	= settr(92,0,63,66,66,"pions[12] = 1", 1, 2, 0);
	trans[1][63]	= settr(93,0,64,67,67,"pions[13] = 0", 1, 2, 0);
	trans[1][64]	= settr(94,0,65,68,68,"pions[14] = 1", 1, 2, 0);
	trans[1][65]	= settr(95,0,66,69,69,"pions[15] = 1", 1, 2, 0);
	trans[1][66]	= settr(96,0,67,70,70,"pions[16] = 1", 1, 2, 0);
	trans[1][67]	= settr(97,0,68,71,71,"pions[17] = 1", 1, 2, 0);
	trans[1][68]	= settr(98,0,69,72,72,"pions[18] = 1", 1, 2, 0);
	trans[1][69]	= settr(99,0,70,73,73,"pions[19] = 1", 1, 2, 0);
	trans[1][70]	= settr(100,0,71,74,74,"pions[20] = 1", 1, 2, 0);
	trans[1][71]	= settr(101,0,72,75,75,"pions[21] = 1", 1, 2, 0);
	trans[1][72]	= settr(102,0,73,76,76,"pions[22] = 1", 1, 2, 0);
	trans[1][73]	= settr(103,0,74,77,77,"pions[23] = 1", 1, 2, 0);
	trans[1][74]	= settr(104,0,75,78,78,"pions[24] = 0", 1, 2, 0);
	trans[1][75]	= settr(105,0,76,79,79,"pions[25] = 1", 1, 2, 0);
	trans[1][76]	= settr(106,0,77,80,80,"pions[26] = 1", 1, 2, 0);
	trans[1][77]	= settr(107,0,78,81,81,"pions[27] = 1", 1, 2, 0);
	trans[1][78]	= settr(108,0,79,82,82,"pions[28] = 1", 1, 2, 0);
	trans[1][79]	= settr(109,0,80,83,83,"pions[29] = 1", 1, 2, 0);
	trans[1][80]	= settr(110,0,81,84,84,"pions[30] = 1", 1, 2, 0);
	trans[1][81]	= settr(111,0,82,85,85,"pions[31] = 1", 1, 2, 0);
	trans[1][82]	= settr(112,0,83,86,86,"pions[32] = 1", 1, 2, 0);
	trans[1][83]	= settr(113,0,84,87,87,"pions[33] = 1", 1, 2, 0);
	trans[1][84]	= settr(114,0,85,88,88,"pions[34] = 1", 1, 2, 0);
	trans[1][85]	= settr(115,0,86,89,89,"pions[35] = 0", 1, 2, 0);
	trans[1][86]	= settr(116,0,87,90,90,"pions[36] = 1", 1, 2, 0);
	trans[1][87]	= settr(117,0,88,91,91,"pions[37] = 1", 1, 2, 0);
	trans[1][88]	= settr(118,0,89,92,92,"pions[38] = 1", 1, 2, 0);
	trans[1][89]	= settr(119,0,90,93,93,"pions[39] = 1", 1, 2, 0);
	trans[1][90]	= settr(120,0,91,94,94,"pions[40] = 1", 1, 2, 0);
	trans[1][91]	= settr(121,0,92,95,95,"pions[41] = 0", 1, 2, 0);
	trans[1][92]	= settr(122,0,93,96,96,"pions[42] = 0", 1, 2, 0);
	trans[1][93]	= settr(123,0,94,97,97,"pions[43] = 0", 1, 2, 0);
	trans[1][94]	= settr(124,0,95,98,98,"pions[44] = 1", 1, 2, 0);
	trans[1][95]	= settr(125,0,96,99,99,"pions[45] = 1", 1, 2, 0);
	trans[1][96]	= settr(126,0,97,100,100,"pions[46] = 1", 1, 2, 0);
	trans[1][97]	= settr(127,0,98,101,101,"pions[47] = 0", 1, 2, 0);
	trans[1][98]	= settr(128,0,135,102,102,"pions[48] = 0", 1, 2, 0);
	T = trans[ 1][135] = settr(165,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(165,2,99,0,0,"ATOMIC", 0, 2, 0);
	trans[1][99]	= settr(129,2,100,103,103,"(run pion(2,0))", 0, 2, 0);
	trans[1][100]	= settr(130,2,101,104,104,"(run pion(3,0))", 0, 2, 0);
	trans[1][101]	= settr(131,2,102,105,105,"(run pion(4,0))", 0, 2, 0);
	trans[1][102]	= settr(132,2,103,106,106,"(run pion(1,1))", 0, 2, 0);
	trans[1][103]	= settr(133,2,104,107,107,"(run pion(2,1))", 0, 2, 0);
	trans[1][104]	= settr(134,2,105,108,108,"(run pion(3,1))", 0, 2, 0);
	trans[1][105]	= settr(135,2,106,109,109,"(run pion(4,1))", 0, 2, 0);
	trans[1][106]	= settr(136,2,107,110,110,"(run pion(5,1))", 0, 2, 0);
	trans[1][107]	= settr(137,2,108,111,111,"(run pion(0,2))", 0, 2, 0);
	trans[1][108]	= settr(138,2,109,112,112,"(run pion(1,2))", 0, 2, 0);
	trans[1][109]	= settr(139,2,110,113,113,"(run pion(2,2))", 0, 2, 0);
	trans[1][110]	= settr(140,2,111,114,114,"(run pion(3,2))", 0, 2, 0);
	trans[1][111]	= settr(141,2,112,115,115,"(run pion(4,2))", 0, 2, 0);
	trans[1][112]	= settr(142,2,113,116,116,"(run pion(5,2))", 0, 2, 0);
	trans[1][113]	= settr(143,2,114,117,117,"(run pion(6,2))", 0, 2, 0);
	trans[1][114]	= settr(144,2,115,118,118,"(run pion(0,3))", 0, 2, 0);
	trans[1][115]	= settr(145,2,116,119,119,"(run pion(1,3))", 0, 2, 0);
	trans[1][116]	= settr(146,2,117,120,120,"(run pion(2,3))", 0, 2, 0);
	trans[1][117]	= settr(147,2,118,121,121,"(run pion(4,3))", 0, 2, 0);
	trans[1][118]	= settr(148,2,119,122,122,"(run pion(5,3))", 0, 2, 0);
	trans[1][119]	= settr(149,2,120,123,123,"(run pion(6,3))", 0, 2, 0);
	trans[1][120]	= settr(150,2,121,124,124,"(run pion(0,4))", 0, 2, 0);
	trans[1][121]	= settr(151,2,122,125,125,"(run pion(1,4))", 0, 2, 0);
	trans[1][122]	= settr(152,2,123,126,126,"(run pion(2,4))", 0, 2, 0);
	trans[1][123]	= settr(153,2,124,127,127,"(run pion(3,4))", 0, 2, 0);
	trans[1][124]	= settr(154,2,125,128,128,"(run pion(4,4))", 0, 2, 0);
	trans[1][125]	= settr(155,2,126,129,129,"(run pion(5,4))", 0, 2, 0);
	trans[1][126]	= settr(156,2,127,130,130,"(run pion(6,4))", 0, 2, 0);
	trans[1][127]	= settr(157,2,128,131,131,"(run pion(1,5))", 0, 2, 0);
	trans[1][128]	= settr(158,2,129,132,132,"(run pion(2,5))", 0, 2, 0);
	trans[1][129]	= settr(159,2,130,133,133,"(run pion(3,5))", 0, 2, 0);
	trans[1][130]	= settr(160,2,131,134,134,"(run pion(4,5))", 0, 2, 0);
	trans[1][131]	= settr(161,2,132,135,135,"(run pion(5,5))", 0, 2, 0);
	trans[1][132]	= settr(162,2,133,136,136,"(run pion(2,6))", 0, 2, 0);
	trans[1][133]	= settr(163,2,134,137,137,"(run pion(3,6))", 0, 2, 0);
	trans[1][134]	= settr(164,0,136,138,138,"(run pion(4,6))", 0, 2, 0);
	trans[1][136]	= settr(166,0,0,139,139,"-end-", 0, 3500, 0);

	/* proctype 0: pion */

	trans[0] = (Trans **) emalloc(32*sizeof(Trans *));

	trans[0][28]	= settr(27,0,27,1,0,".(goto)", 0, 2, 0);
	T = trans[0][27] = settr(26,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(26,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(26,0,7,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(26,0,13,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(26,0,19,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(26,0,25,0,0,"DO", 0, 2, 0);
	trans[0][1]	= settr(0,0,6,140,0,"((((((pions[(i+(Imax*j))]==1)&&(i>1))&&(pions[((i-1)+(Imax*j))]==1))&&(pions[((i-2)+(Imax*j))]==0))&&(plateau[((i-2)+(Imax*j))]==1)))", 1, 2, 0);
	T = trans[ 0][6] = settr(5,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(5,2,2,0,0,"ATOMIC", 1, 2, 0);
	trans[0][2]	= settr(1,0,27,141,141,"pions[(i+(Imax*j))] = 0", 1, 2, 0); /* m: 3 -> 0,27 */
	reached0[3] = 1;
	trans[0][3]	= settr(0,0,0,0,0,"pions[((i-1)+(Imax*j))] = 0",0,0,0);
	trans[0][4]	= settr(0,0,0,0,0,"pions[((i-2)+(Imax*j))] = 1",0,0,0);
	trans[0][5]	= settr(0,0,0,0,0,"i = (i-2)",0,0,0);
	trans[0][7]	= settr(6,0,12,142,0,"((((((pions[(i+(Imax*j))]==1)&&(i<(Imax-2)))&&(pions[((i+1)+(Imax*j))]==1))&&(pions[((i+2)+(Imax*j))]==0))&&(plateau[((i+2)+(Imax*j))]==1)))", 1, 2, 0);
	T = trans[ 0][12] = settr(11,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(11,2,8,0,0,"ATOMIC", 1, 2, 0);
	trans[0][8]	= settr(7,0,27,143,143,"pions[(i+(Imax*j))] = 0", 1, 2, 0); /* m: 9 -> 0,27 */
	reached0[9] = 1;
	trans[0][9]	= settr(0,0,0,0,0,"pions[((i+1)+(Imax*j))] = 0",0,0,0);
	trans[0][10]	= settr(0,0,0,0,0,"pions[((i+2)+(Imax*j))] = 1",0,0,0);
	trans[0][11]	= settr(0,0,0,0,0,"i = (i+2)",0,0,0);
	trans[0][13]	= settr(12,0,18,144,0,"((((((pions[(i+(Imax*j))]==1)&&(j>1))&&(pions[(i+(Imax*(j-1)))]==1))&&(pions[(i+(Imax*(j-2)))]==0))&&(plateau[(i+(Imax*(j-2)))]==1)))", 1, 2, 0);
	T = trans[ 0][18] = settr(17,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(17,2,14,0,0,"ATOMIC", 1, 2, 0);
	trans[0][14]	= settr(13,0,27,145,145,"pions[(i+(Imax*j))] = 0", 1, 2, 0); /* m: 15 -> 0,27 */
	reached0[15] = 1;
	trans[0][15]	= settr(0,0,0,0,0,"pions[(i+(Imax*(j-1)))] = 0",0,0,0);
	trans[0][16]	= settr(0,0,0,0,0,"pions[(i+(Imax*(j-2)))] = 1",0,0,0);
	trans[0][17]	= settr(0,0,0,0,0,"j = (j-2)",0,0,0);
	trans[0][19]	= settr(18,0,24,146,0,"((((((pions[(i+(Imax*j))]==1)&&(j<(Jmax-2)))&&(pions[(i+(Imax*(j+1)))]==1))&&(pions[(i+(Imax*(j+2)))]==0))&&(plateau[(i+(Imax*(j+2)))]==1)))", 1, 2, 0);
	T = trans[ 0][24] = settr(23,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(23,2,20,0,0,"ATOMIC", 1, 2, 0);
	trans[0][20]	= settr(19,0,27,147,147,"pions[(i+(Imax*j))] = 0", 1, 2, 0); /* m: 21 -> 0,27 */
	reached0[21] = 1;
	trans[0][21]	= settr(0,0,0,0,0,"pions[(i+(Imax*(j+1)))] = 0",0,0,0);
	trans[0][22]	= settr(0,0,0,0,0,"pions[(i+(Imax*(j+2)))] = 1",0,0,0);
	trans[0][23]	= settr(0,0,0,0,0,"j = (j+2)",0,0,0);
	trans[0][25]	= settr(24,0,30,148,148,"((pions[(i+(Imax*j))]==0))", 1, 2, 0);
	trans[0][26]	= settr(25,0,30,1,0,"goto cimetiere", 0, 2, 0);
	trans[0][29]	= settr(28,0,30,1,0,"break", 0, 2, 0);
	trans[0][30]	= settr(29,0,31,149,149,"Nb_pion = (Nb_pion-1)", 1, 2, 0);
	trans[0][31]	= settr(30,0,0,150,150,"-end-", 0, 3500, 0);
	/* np_ demon: */
	trans[_NP_] = (Trans **) emalloc(3*sizeof(Trans *));
	T = trans[_NP_][0] = settr(9997,0,1,_T5,0,"(np_)", 1,2,0);
	    T->nxt	  = settr(9998,0,0,_T2,0,"(1)",   0,2,0);
	T = trans[_NP_][1] = settr(9999,0,1,_T5,0,"(np_)", 1,2,0);
}

Trans *
settr(	int t_id, int a, int b, int c, int d,
	char *t, int g, int tpe0, int tpe1)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	tmp->atom  = a&(6|32);	/* only (2|8|32) have meaning */
	if (!g) tmp->atom |= 8;	/* no global references */
	tmp->st    = b;
	tmp->tpe[0] = tpe0;
	tmp->tpe[1] = tpe1;
	tmp->tp    = t;
	tmp->t_id  = t_id;
	tmp->forw  = c;
	tmp->back  = d;
	return tmp;
}

Trans *
cpytr(Trans *a)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	int i;
	tmp->atom  = a->atom;
	tmp->st    = a->st;
#ifdef HAS_UNLESS
	tmp->e_trans = a->e_trans;
	for (i = 0; i < HAS_UNLESS; i++)
		tmp->escp[i] = a->escp[i];
#endif
	tmp->tpe[0] = a->tpe[0];
	tmp->tpe[1] = a->tpe[1];
	for (i = 0; i < 6; i++)
	{	tmp->qu[i] = a->qu[i];
		tmp->ty[i] = a->ty[i];
	}
	tmp->tp    = (char *) emalloc(strlen(a->tp)+1);
	strcpy(tmp->tp, a->tp);
	tmp->t_id  = a->t_id;
	tmp->forw  = a->forw;
	tmp->back  = a->back;
	return tmp;
}

#ifndef NOREDUCE
int
srinc_set(int n)
{	if (n <= 2) return LOCAL;
	if (n <= 2+  DELTA) return Q_FULL_F; /* 's' or nfull  */
	if (n <= 2+2*DELTA) return Q_EMPT_F; /* 'r' or nempty */
	if (n <= 2+3*DELTA) return Q_EMPT_T; /* empty */
	if (n <= 2+4*DELTA) return Q_FULL_T; /* full  */
	if (n ==   5*DELTA) return GLOBAL;
	if (n ==   6*DELTA) return TIMEOUT_F;
	if (n ==   7*DELTA) return ALPHA_F;
	Uerror("cannot happen srinc_class");
	return BAD;
}
int
srunc(int n, int m)
{	switch(m) {
	case Q_FULL_F: return n-2;
	case Q_EMPT_F: return n-2-DELTA;
	case Q_EMPT_T: return n-2-2*DELTA;
	case Q_FULL_T: return n-2-3*DELTA;
	case ALPHA_F:
	case TIMEOUT_F: return 257; /* non-zero, and > MAXQ */
	}
	Uerror("cannot happen srunc");
	return 0;
}
#endif
int cnt;
#ifdef HAS_UNLESS
int
isthere(Trans *a, int b)
{	Trans *t;
	for (t = a; t; t = t->nxt)
		if (t->t_id == b)
			return 1;
	return 0;
}
#endif
#ifndef NOREDUCE
int
mark_safety(Trans *t) /* for conditional safety */
{	int g = 0, i, j, k;

	if (!t) return 0;
	if (t->qu[0])
		return (t->qu[1])?2:1;	/* marked */

	for (i = 0; i < 2; i++)
	{	j = srinc_set(t->tpe[i]);
		if (j >= GLOBAL && j != ALPHA_F)
			return -1;
		if (j != LOCAL)
		{	k = srunc(t->tpe[i], j);
			if (g == 0
			||  t->qu[0] != k
			||  t->ty[0] != j)
			{	t->qu[g] = k;
				t->ty[g] = j;
				g++;
	}	}	}
	return g;
}
#endif
void
retrans(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
	/* process n, with m states, is=initial state */
{	Trans *T0, *T1, *T2, *T3;
	Trans *T4, *T5; /* t_reverse or has_unless */
	int i;
#if defined(HAS_UNLESS) || !defined(NOREDUCE)
	int k;
#endif
#ifndef NOREDUCE
	int g, h, j, aa;
#endif
#ifdef HAS_UNLESS
	int p;
#endif
	if (state_tables >= 4)
	{	printf("STEP 1 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	do {
		for (i = 1, cnt = 0; i < m; i++)
		{	T2 = trans[n][i];
			T1 = T2?T2->nxt:(Trans *)0;
/* prescan: */		for (T0 = T1; T0; T0 = T0->nxt)
/* choice in choice */	{	if (T0->st && trans[n][T0->st]
				&&  trans[n][T0->st]->nxt)
					break;
			}
#if 0
		if (T0)
		printf("\tstate %d / %d: choice in choice\n",
		i, T0->st);
#endif
			if (T0)
			for (T0 = T1; T0; T0 = T0->nxt)
			{	T3 = trans[n][T0->st];
				if (!T3->nxt)
				{	T2->nxt = cpytr(T0);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
					continue;
				}
				do {	T3 = T3->nxt;
					T2->nxt = cpytr(T3);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
				} while (T3->nxt);
				cnt++;
			}
		}
	} while (cnt);
	if (state_tables >= 3)
	{	printf("STEP 2 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	for (i = 1; i < m; i++)
	{	if (trans[n][i] && trans[n][i]->nxt) /* optimize */
		{	T1 = trans[n][i]->nxt;
#if 0
			printf("\t\tpull %d (%d) to %d\n",
			T1->st, T1->forw, i);
#endif
			srcln[i] = srcln[T1->st];	/* Oyvind Teig, 5.2.0 */

			if (!trans[n][T1->st]) continue;
			T0 = cpytr(trans[n][T1->st]);
			trans[n][i] = T0;
			reach[T1->st] = 1;
			imed(T0, T1->st, n, i);
			for (T1 = T1->nxt; T1; T1 = T1->nxt)
			{
#if 0
			printf("\t\tpull %d (%d) to %d\n",
				T1->st, T1->forw, i);
#endif
		/*		srcln[i] = srcln[T1->st];  gh: not useful */
				if (!trans[n][T1->st]) continue;
				T0->nxt = cpytr(trans[n][T1->st]);
				T0 = T0->nxt;
				reach[T1->st] = 1;
				imed(T0, T1->st, n, i);
	}	}	}
	if (state_tables >= 2)
	{	printf("STEP 3 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
#ifdef HAS_UNLESS
	for (i = 1; i < m; i++)
	{	if (!trans[n][i]) continue;
		/* check for each state i if an
		 * escape to some state p is defined
		 * if so, copy and mark p's transitions
		 * and prepend them to the transition-
		 * list of state i
		 */
	 if (!like_java) /* the default */
	 {	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->e_trans = p;
				T2->nxt = trans[n][i];
				trans[n][i] = T2;
		}	}
	 } else /* outermost unless checked first */
	 {	T4 = T3 = (Trans *) 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->nxt = (Trans *) 0;
				T2->e_trans = p;
				if (T3)	T3->nxt = T2;
				else	T4 = T2;
				T3 = T2;
		}	}
		if (T4)
		{	T3->nxt = trans[n][i];
			trans[n][i] = T4;
		}
	 }
	}
#endif
#ifndef NOREDUCE
	for (i = 1; i < m; i++)
	{	if (a_cycles)
		{ /* moves through these states are visible */
	#if PROG_LAB>0 && defined(HAS_NP)
			if (progstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (progstate[n][T1->st])
					goto degrade;
	#endif
			if (accpstate[n][i] || visstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (accpstate[n][T1->st])
					goto degrade;
		}
		T1 = trans[n][i];
		if (!T1) continue;
		g = mark_safety(T1);	/* V3.3.1 */
		if (g < 0) goto degrade; /* global */
		/* check if mixing of guards preserves reduction */
		if (T1->nxt)
		{	k = 0;
			for (T0 = T1; T0; T0 = T0->nxt)
			{	if (!(T0->atom&8))
					goto degrade;
				for (aa = 0; aa < 2; aa++)
				{	j = srinc_set(T0->tpe[aa]);
					if (j >= GLOBAL && j != ALPHA_F)
						goto degrade;
					if (T0->tpe[aa]
					&&  T0->tpe[aa]
					!=  T1->tpe[0])
						k = 1;
			}	}
			/* g = 0;	V3.3.1 */
			if (k)	/* non-uniform selection */
			for (T0 = T1; T0; T0 = T0->nxt)
			for (aa = 0; aa < 2; aa++)
			{	j = srinc_set(T0->tpe[aa]);
				if (j != LOCAL)
				{	k = srunc(T0->tpe[aa], j);
					for (h = 0; h < 6; h++)
						if (T1->qu[h] == k
						&&  T1->ty[h] == j)
							break;
					if (h >= 6)
					{	T1->qu[g%6] = k;
						T1->ty[g%6] = j;
						g++;
			}	}	}
			if (g > 6)
			{	T1->qu[0] = 0;	/* turn it off */
				printf("pan: warning, line %d, ",
					srcln[i]);
			 	printf("too many stmnt types (%d)",
					g);
			  	printf(" in selection\n");
			  goto degrade;
			}
		}
		/* mark all options global if >=1 is global */
		for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			if (!(T1->atom&8)) break;
		if (T1)
degrade:	for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			T1->atom &= ~8;	/* mark as unsafe */
		/* can only mix 'r's or 's's if on same chan */
		/* and not mixed with other local operations */
		T1 = trans[n][i];
		if (!T1 || T1->qu[0]) continue;
		j = T1->tpe[0];
		if (T1->nxt && T1->atom&8)
		{ if (j == 5*DELTA)
		  {	printf("warning: line %d ", srcln[i]);
			printf("mixed condition ");
			printf("(defeats reduction)\n");
			goto degrade;
		  }
		  for (T0 = T1; T0; T0 = T0->nxt)
		  for (aa = 0; aa < 2; aa++)
		  if  (T0->tpe[aa] && T0->tpe[aa] != j)
		  {	printf("warning: line %d ", srcln[i]);
			printf("[%d-%d] mixed %stion ",
				T0->tpe[aa], j, 
				(j==5*DELTA)?"condi":"selec");
			printf("(defeats reduction)\n");
			printf("	'%s' <-> '%s'\n",
				T1->tp, T0->tp);
			goto degrade;
		} }
	}
#endif
	for (i = 1; i < m; i++)
	{	T2 = trans[n][i];
		if (!T2
		||  T2->nxt
		||  strncmp(T2->tp, ".(goto)", 7)
		||  !stopstate[n][i])
			continue;
		stopstate[n][T2->st] = 1;
	}
	if (state_tables && !verbose)
	{	if (dodot)
		{	char buf[256], *q = buf, *p = procname[n];
			while (*p != '\0')
			{	if (*p != ':')
				{	*q++ = *p;
				}
				p++;
			}
			*q = '\0';
			printf("digraph ");
			switch (Btypes[n]) {
			case I_PROC:  printf("init {\n"); break;
			case N_CLAIM: printf("claim_%s {\n", buf); break;
			case E_TRACE: printf("notrace {\n"); break;
			case N_TRACE: printf("trace {\n"); break;
			default:      printf("p_%s {\n", buf); break;
			}
			printf("size=\"8,10\";\n");
			printf("  GT [shape=box,style=dotted,label=\"%s\"];\n", buf);
			printf("  GT -> S%d;\n", is);
		} else
		{	switch (Btypes[n]) {
			case I_PROC:  printf("init\n"); break;
			case N_CLAIM: printf("claim %s\n", procname[n]); break;
			case E_TRACE: printf("notrace assertion\n"); break;
			case N_TRACE: printf("trace assertion\n"); break;
			default:      printf("proctype %s\n", procname[n]); break;
		}	}
		for (i = 1; i < m; i++)
		{	reach[i] = 1;
		}
		tagtable(n, m, is, srcln, reach);
		if (dodot) printf("}\n");
	} else
	for (i = 1; i < m; i++)
	{	int nrelse;
		if (Btypes[n] != N_CLAIM)
		{	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			{	if (T0->st == i
				&& strcmp(T0->tp, "(1)") == 0)
				{	printf("error: proctype '%s' ",
						procname[n]);
		  			printf("line %d, state %d: has un",
						srcln[i], i);
					printf("conditional self-loop\n");
					pan_exit(1);
		}	}	}
		nrelse = 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		{	if (strcmp(T0->tp, "else") == 0)
				nrelse++;
		}
		if (nrelse > 1)
		{	printf("error: proctype '%s' state",
				procname[n]);
		  	printf(" %d, inherits %d", i, nrelse);
		  	printf(" 'else' stmnts\n");
			pan_exit(1);
	}	}
#if !defined(LOOPSTATE) && !defined(BFS_PAR)
	if (state_tables)
#endif
	do_dfs(n, m, is, srcln, reach, lpstate);

	if (!t_reverse)
	{	return;
	}
	/* process n, with m states, is=initial state -- reverse list */
	if (!state_tables && Btypes[n] != N_CLAIM)
	{	for (i = 1; i < m; i++)
		{	Trans *Tx = (Trans *) 0; /* list of escapes */
			Trans *Ty = (Trans *) 0; /* its tail element */
			T1 = (Trans *) 0; /* reversed list */
			T2 = (Trans *) 0; /* its tail */
			T3 = (Trans *) 0; /* remembers possible 'else' */

			/* find unless-escapes, they should go first */
			T4 = T5 = T0 = trans[n][i];
	#ifdef HAS_UNLESS
			while (T4 && T4->e_trans) /* escapes are first in orig list */
			{	T5 = T4;	  /* remember predecessor */
				T4 = T4->nxt;
			}
	#endif
			/* T4 points to first non-escape, T5 to its parent, T0 to original list */
			if (T4 != T0)		 /* there was at least one escape */
			{	T3 = T5->nxt;		 /* start of non-escapes */
				T5->nxt = (Trans *) 0;	 /* separate */
				Tx = T0;		 /* start of the escapes */
				Ty = T5;		 /* its tail */
				T0 = T3;		 /* the rest, to be reversed */
			}
			/* T0 points to first non-escape, Tx to the list of escapes, Ty to its tail */

			/* first tail-add non-escape transitions, reversed */
			T3 = (Trans *) 0;
			for (T5 = T0; T5; T5 = T4)
			{	T4 = T5->nxt;
	#ifdef HAS_UNLESS
				if (T5->e_trans)
				{	printf("error: cannot happen!\n");
					continue;
				}
	#endif
				if (strcmp(T5->tp, "else") == 0)
				{	T3 = T5;
					T5->nxt = (Trans *) 0;
				} else
				{	T5->nxt = T1;
					if (!T1) { T2 = T5; }
					T1 = T5;
			}	}
			/* T3 points to a possible else, which is removed from the list */
			/* T1 points to the reversed list so far (without escapes) */
			/* T2 points to the tail element -- where the else should go */
			if (T2 && T3)
			{	T2->nxt = T3;	/* add else */
			} else
			{	if (T3) /* there was an else, but there's no tail */
				{	if (!T1)	/* and no reversed list */
					{	T1 = T3; /* odd, but possible */
					} else		/* even stranger */
					{	T1->nxt = T3;
			}	}	}

			/* add in the escapes, to that they appear at the front */
			if (Tx && Ty) { Ty->nxt = T1; T1 = Tx; }

			trans[n][i] = T1;
			/* reversed, with escapes first and else last */
	}	}
	if (state_tables && verbose)
	{	printf("FINAL proctype %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
	}
}
void
imed(Trans *T, int v, int n, int j)	/* set intermediate state */
{	progstate[n][T->st] |= progstate[n][v];
	accpstate[n][T->st] |= accpstate[n][v];
	stopstate[n][T->st] |= stopstate[n][v];
	mapstate[n][j] = T->st;
}
void
tagtable(int n, int m, int is, short srcln[], uchar reach[])
{	Trans *z;

	if (is >= m || !trans[n][is]
	||  is <= 0 || reach[is] == 0)
		return;
	reach[is] = 0;
	if (state_tables)
	for (z = trans[n][is]; z; z = z->nxt)
	{	if (dodot)
			dot_crack(n, is, z);
		else
			crack(n, is, z, srcln);
	}

	for (z = trans[n][is]; z; z = z->nxt)
	{
#ifdef HAS_UNLESS
		int i, j;
#endif
		tagtable(n, m, z->st, srcln, reach);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			tagtable(n, m, j, srcln, reach);
		}
#endif
	}
}

extern Trans *t_id_lkup[];

void
dfs_table(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	Trans *z;

	if (is >= m || is <= 0 || !trans[n][is])
		return;
	if ((reach[is] & (4|8|16)) != 0)
	{	if ((reach[is] & (8|16)) == 16)	/* on stack, not yet recorded */
		{	lpstate[is] = 1;
			reach[is] |= 8; /* recorded */
			if (state_tables && verbose)
			{	printf("state %d line %d is a loopstate\n", is, srcln[is]);
		}	}
		return;
	}
	reach[is] |= (4|16);	/* visited | onstack */
	for (z = trans[n][is]; z; z = z->nxt)
	{	t_id_lkup[z->t_id] = z;
#ifdef HAS_UNLESS
		int i, j;
#endif
		dfs_table(n, m, z->st, srcln, reach, lpstate);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			dfs_table(n, m, j, srcln, reach, lpstate);
		}
#endif
	}
	reach[is] &= ~16; /* no longer on stack */
}
void
do_dfs(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	int i;
	dfs_table(n, m, is, srcln, reach, lpstate);
	for (i = 0; i < m; i++)
		reach[i] &= ~(4|8|16);
}
void
crack(int n, int j, Trans *z, short srcln[])
{	int i;

	if (!z) return;
	printf("	state %3d -(tr %3d)-> state %3d  ",
		j, z->forw, z->st);
	printf("[id %3d tp %3d", z->t_id, z->tpe[0]);
	if (z->tpe[1]) printf(",%d", z->tpe[1]);
#ifdef HAS_UNLESS
	if (z->e_trans)
		printf(" org %3d", z->e_trans);
	else if (state_tables >= 2)
	for (i = 0; i < HAS_UNLESS; i++)
	{	if (!z->escp[i]) break;
		printf(" esc %d", z->escp[i]);
	}
#endif
	printf("]");
	printf(" [%s%s%s%s%s] %s:%d => ",
		z->atom&6?"A":z->atom&32?"D":"-",
		accpstate[n][j]?"a" :"-",
		stopstate[n][j]?"e" : "-",
		progstate[n][j]?"p" : "-",
		z->atom & 8 ?"L":"G",
		PanSource, srcln[j]);
	for (i = 0; z->tp[i]; i++)
		if (z->tp[i] == '\n')
			printf("\\n");
		else
			putchar(z->tp[i]);
	if (verbose && z->qu[0])
	{	printf("\t[");
		for (i = 0; i < 6; i++)
			if (z->qu[i])
				printf("(%d,%d)",
				z->qu[i], z->ty[i]);
		printf("]");
	}
	printf("\n");
	fflush(stdout);
}
/* spin -a m.pml; cc -o pan pan.c; ./pan -D | dot -Tps > foo.ps; ps2pdf foo.ps */
void
dot_crack(int n, int j, Trans *z)
{	int i;

	if (!z) return;
	printf("	S%d -> S%d  [color=black", j, z->st);

	if (z->atom&6) printf(",style=dashed");
	else if (z->atom&32) printf(",style=dotted");
	else if (z->atom&8) printf(",style=solid");
	else printf(",style=bold");

	printf(",label=\"");
	for (i = 0; z->tp[i]; i++)
	{	if (z->tp[i] == '\\'
		&&  z->tp[i+1] == 'n')
		{	i++; printf(" ");
		} else
		{	putchar(z->tp[i]);
	}	}
	printf("\"];\n");
	if (accpstate[n][j]) printf("  S%d [color=red,style=bold];\n", j);
	else if (progstate[n][j]) printf("  S%d [color=green,style=bold];\n", j);
	if (stopstate[n][j]) printf("  S%d [color=blue,style=bold,shape=box];\n", j);
}

#ifdef VAR_RANGES
#define BYTESIZE	32	/* 2^8 : 2^3 = 256:8 = 32 */

typedef struct Vr_Ptr {
	char	*nm;
	uchar	vals[BYTESIZE];
	struct Vr_Ptr *nxt;
} Vr_Ptr;
Vr_Ptr *ranges = (Vr_Ptr *) 0;

void
logval(char *s, int v)
{	Vr_Ptr *tmp;

	if (v<0 || v > 255) return;
	for (tmp = ranges; tmp; tmp = tmp->nxt)
		if (!strcmp(tmp->nm, s))
			goto found;
	tmp = (Vr_Ptr *) emalloc(sizeof(Vr_Ptr));
	tmp->nxt = ranges;
	ranges = tmp;
	tmp->nm = s;
found:
	tmp->vals[(v)/8] |= 1<<((v)%8);
}

void
dumpval(uchar X[], int range)
{	int w, x, i, j = -1;

	for (w = i = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
from:		if ((X[w] & (1<<x)))
		{	printf("%d", i);
			j = i;
			goto upto;
	}	}
	return;
	for (w = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
upto:		if (!(X[w] & (1<<x)))
		{	if (i-1 == j)
				printf(", ");
			else
				printf("-%d, ", i-1);
			goto from;
	}	}
	if (j >= 0 && j != 255)
		printf("-255");
}

void
dumpranges(void)
{	Vr_Ptr *tmp;
	printf("\nValues assigned within ");
	printf("interval [0..255]:\n");
	for (tmp = ranges; tmp; tmp = tmp->nxt)
	{	printf("\t%s\t: ", tmp->nm);
		dumpval(tmp->vals, BYTESIZE);
		printf("\n");
	}
}
#endif
