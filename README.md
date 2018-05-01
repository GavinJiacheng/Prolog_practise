# Prolog_practise

Here's what these code did:
* makelist(N, X, Lst)
```prolog
?- makelist(3, a, X).
X = [a, a, a]

?- makelist(2, [a,b], X).
X = [[a, b], [a, b]]
```
* second_min(Lst, M)
```prolog
?- second_min([2,8,4,6], X).
X = 4

?- second_min([1,2], X).
X = 2
```
```prolog
/*If the passed-in list has fewer than 2 elements, it would fail:*/
?- second_min([], X).
false

?- second_min([6], X).
false
```
* numlist(Lo, Hi, Result)
```prolog
?- numlist(1,3,L).
L = [1, 2, 3]
```
* all_diff(Lst)
```prolog
?- all_diff([7,2,1,9]).
true

?- all_diff([7,2,7,9]).
false
```
* negpos(L, Neg, NonNeg)
```prolog
?- negpos([5,0,2,-3,2,-2], A, B).
A = [-3, -2],
B = [5, 0, 2, 2]

?- negpos([0,2,-1], Negative, Positive).
Negative = [-1],
Positive = [0, 2]
```
* 3x3 magic square
    * 3x3 magic square is the format like this:
```
1 5 9
6 7 2
8 3 4

Which is a grid of 9 numbers where each row and column add up to the same number. 
The number for the above grid is 15.
```
```prolog
?- magic([1,2,3,4,5,6,7,8,9], Result).
Result = [1, 5, 9, 6, 7, 2, 8, 3, 4]
```
