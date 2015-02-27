parent(raja, joey).
parent(randa, joey).
parent(norma, randa).
sister(sara, joey).
grandparent(GP, GC):-
	parent(GP, P), parent(P, GC).
	
fact(X,1):-
	X =:= 1, !.

fact(X, Fact):-
	X > 1, NewX is X-1, Fact(NewX, NewFact), Fact is X*NewFact, !.