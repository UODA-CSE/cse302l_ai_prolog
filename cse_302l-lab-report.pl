# UODA: CSE302L - Artificial Intelligence Lab
# Course Code: CSE302L
# Course Title: Artificial Intelligence Lab
# Course Teacher: Jairul Islam
# Author: Aami Bhoot
# Date: 28 November, 2022

parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).

:- discontiguous female/1.
:- discontiguous male/1.

female(pam).
male(tom).
male(bob).
female(liz).
female(pat).
female(ann).
male(jim).

mother(X,Y):- parent(X,Y),female(X).
father(X,Y):-parent(X,Y),male(X).
sister(X,Y):-parent(Z,X),parent(Z,Y),female(X),X\==Y.
brother(X,Y):-parent(Z,X),parent(Z,Y),male(X),X\==Y.

grandparent(X,Y):-parent(X,Z),parent(Z,Y).
grandmother(X,Z):-mother(X,Y),parent(Y,Z).
grandfather(X,Z):-father(X,Y),parent(Y,Z).

husband(X,Y):- parent(X,Z),parent(Y,Z),male(X),female(Y).
wife(X,Y):- parent(X,Z),parent(Y,Z),female(X),male(Y).

hastwochildren(X) :- parent(X,Y),parent(X,Z).