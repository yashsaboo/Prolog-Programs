% WAP in Prolog to find if Alan can swim (First Prolog Program).

male(bob).
male(bill).
male(dan).

female(pam).
female(alice).

happy(alan).

swim_alan :- happy(alan), write('Yo').