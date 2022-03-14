/* Modele Promela du berger et ses amis */
mtype = {berger, mouton, chou, loup};
chan canal = [0] of {mtype,bool};
bool state_berger = 0;
bool state_mouton = 0;
bool state_chou = 0;
bool state_loup = 0;

bool ok = 0;
#define measure (ok==1)

proctype B()
{ do
:: ( state_berger == 0 && state_mouton == 0 ) -> ok = 1; ok = 0; canal!mouton(1); state_berger = 1
:: ( state_berger == 0 && state_chou == 0 ) -> ok = 1; ok = 0; canal!chou(1); state_berger = 1
:: ( state_berger == 0 && state_loup == 0 ) -> ok = 1; ok = 0; canal!loup(1); state_berger = 1
:: ( state_berger == 0 ) -> ok = 1; ok = 0; state_berger = 1
:: ( state_berger == 1 && state_mouton == 1) -> ok = 1; ok = 0; canal!mouton(0); state_berger = 0
:: ( state_berger == 1 && state_chou == 1) -> ok = 1; ok = 0; canal!chou(0); state_berger = 0
:: ( state_berger == 1 && state_loup == 1) -> ok = 1; ok = 0; canal!loup(0); state_berger = 0
:: ( state_berger == 1 ) -> ok = 1; ok = 0; state_berger = 0
od }
proctype M()
{ do
:: atomic{ canal?mouton(1); state_mouton = 1}
:: atomic{ canal?mouton(0); state_mouton = 0}
od }
proctype C()
{ do
:: atomic{ canal?chou(1); state_chou = 1}
:: atomic{ canal?chou(0); state_chou = 0}
od }
proctype L()
{ do
:: atomic{ canal?loup(1); state_loup = 1}
:: atomic{ canal?loup(0); state_loup = 0}
od }
init
  {
 atomic {run B(); run M(); run C(); run L() };
}
never  {    /* [](measure -> (((state_loup==state_mouton) || (state_chou== state_mouton))->(state_berger==state_mouton))) && <>(state_mouton == 1  && state_chou == 1  && state_loup == 1 && state_berger == 1) */
T0_init:
	do
	:: (((! (((state_loup==state_mouton) || (state_chou== state_mouton))) && (state_mouton == 1  && state_chou == 1  && state_loup == 1 && state_berger == 1)) || (((! ((measure)) && (state_mouton == 1  && state_chou == 1  && state_loup == 1 && state_berger == 1)) || ((state_berger==state_mouton) && (state_mouton == 1  && state_chou == 1  && state_loup == 1 && state_berger == 1)))))) -> goto accept_S3
	:: (((! (((state_loup==state_mouton) || (state_chou== state_mouton)))) || (((! ((measure))) || ((state_berger==state_mouton)))))) -> goto T0_init
	od;
accept_S3:
	do
	:: (((! (((state_loup==state_mouton) || (state_chou== state_mouton)))) || (((! ((measure))) || ((state_berger==state_mouton)))))) -> goto accept_S3
	od;
}

