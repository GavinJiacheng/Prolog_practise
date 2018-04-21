% Question 1:

makelist(1, X, [X]).
makelist(N, X, [X|Rest]) :-
  makelist(Lessnum, X, Rest),
  N is 1 + Lessnum.

% Question 2:

second_min([H1, H2|Rest], M):-
    H1 < H2,
    get_second(Rest, M, [H1, H2]).
second_min([H1, H2|Rest], M):-
    H1 >= H2,
    get_second(Rest, M, [H2, H1]).

get_second([], Second, [_, Second]).
get_second([Head|Tail], M, [M1, M2]):-
    Head >= M2,
    get_second(Tail, M, [M1, M2]).
get_second([Head|Tail], M, [M1, M2]):-
    Head < M2, Head >= M1,
    get_second(Tail, M, [M1, Head]).
get_second([Head|Tail], M, [M1, M2]):-
    Head < M2, Head < M1,
    get_second(Tail, M, [Head, M1]).

% Question 3:

mynumlist(Lo, Lo, [Lo]).
mynumlist(Lo, Hi, [Lo|Rest]):-
    Lo =< Hi,
    Newlo is Lo+1,
    mynumlist(Newlo, Hi, Rest).

% Question 4:

diff([Y], X) :- X \= Y.
diff([Head|Tail], X) :-
    diff(Tail, X),
    Head \= X.

all_diff([]).
all_diff([_]).
all_diff([Head|Tail]):-
    all_diff(Tail),
    diff(Tail, Head).

% Question 5:

negpos([], [], []).
negpos([X], [], [X]):- X >= 0.
negpos([X], [X], []):- X < 0.
negpos([Head|Tail], Arest, [Head|Brest]):-
    negpos(Tail, Arest, Brest),
    Head >= 0.
negpos([Head|Tail], [Head|Arest], Brest):-
    negpos(Tail, Arest, Brest),
    Head < 0.

% Question 6:

magic(L9, Result):-
  grid(L9, _, Result).

% get the function member from the course notes online:
member(X, [X|_]).
member(X, [_|Rest]) :- member(X, Rest).

same_elements(Xs,Ys):-
msort(Xs,Any),
msort(Ys,Any).

grid(L9, Sum, [R11,R12,R13,R21,R22,R23,R31,R32,R33]):-
      member(R11,L9),
      member(R12,L9),
      member(R13,L9),
      member(R21,L9),
      member(R22,L9),
      member(R23,L9),
      member(R31,L9),
      member(R32,L9),
      member(R33,L9),
      same_elements(L9, [R11,R12,R13,R21,R22,R23,R31,R32,R33]),
      Sum1 is R11+R12+R13,
      Sum2 is R21+R22+R23,
      Sum3 is R31+R32+R33,
      Sum4 is R11+R21+R31,
      Sum5 is R12+R22+R32,
      Sum6 is R13+R23+R33,
      Sum = Sum1,
      Sum = Sum2,
      Sum = Sum3,
      Sum = Sum4,
      Sum = Sum5,
      Sum = Sum6.
