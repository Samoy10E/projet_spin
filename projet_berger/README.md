## Le berger

### Objectif

On veux que : 

	-Si le mouton et le chou sont du même coté alors le berger est aussi du même coté
	-Si le mouton et le loup sont du même coté alors le berger est aussi du même coté

On vérifie cette proposition après chaque mouvement, c'est à dire 2 étapes après que le littéral 'measure' soit passé à vrai.

### Formule

On peut écrire : 

`[](measure -> XX(	(state_mouton==state_chou -> state_mouton==state_berger) &&
					(state_mouton==state_loup -> state_mouton==state_berger)))`

On voudrait utiliser opérateur temporel X, mais dans [la documentation](http://spinroot.com/spin/Man/ltl.html) il est noté:

>If the Spin sources are compiled with the preprocessor directive -DNXT, the set of temporal operators is extended with one additional unary operator: X (next). The X operator asserts the truth of the subformula that follows it for the next system state that is reached. The use of this operator can void the validity of the partial order reduction algorithm that is used in Spin, if it changes the stutter invariance of an LTL formula. For the partial order reduction strategy to be valid, only LTL properties that are stutter invariant can be used. Every LTL property that does not contain the X operator is guaranteed to satisfy the required property. A property that is not stutter invariant can still be checked, but only without the application of partial order reduction.

Il faudra potentiellement trouver une autre alternative.