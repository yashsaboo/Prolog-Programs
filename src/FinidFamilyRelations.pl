father(luke,mike).
father(roy,mike).
father(troy,luke).
father(ross,luke).
father(kevin,luke).
father(steve,luke).
father(trevor,roy).

mother(troy,jennifer).
mother(X,Y) :- father(X,Z),wife(Y,Z).

brother(X,Y) :- father(X,A),father(Y,A),male(X).
sister(X,Y) :- father(X,A),father(Y,A),female(Y).

male(troy).
% WAP in Prolog to find which relations between the family members.

male(ross).
male(luke).
male(roy).

female(kevin).
female(steve).
female(jennifer).
female(monica).
female(phoebe).

wife(jennifer,luke).
wife(monica,trevor).
wife(phoebe,roy).    

grand_son(X,Y) :- father(A,Y),father(X,A),male(X).
grand_daughter(X,Y) :- father(A,Y),father(X,A),female(Y).

uncle(X,Y) :- father(X,Z),brother(Y,Z).

aunt(X,Y) :- wife(Y,Z),brother(Z,W),father(X,W).               

cousin(X,Y) :- father(X,A),father(Y,B),brother(A,B).

nephew(X,Y) :- wife(Y,A),brother(A,B),father(X,B),male(X).