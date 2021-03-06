:- dynamic variable/1 .
:- dynamic variable2/1 .
:- dynamic local1/1 .
:- dynamic local2/1 .

:-[search].

% -- database:
%   state representation: S, where S is a list with the full path followed by the person
initial([restaurantesilva]). % initial city

%goal(U):- member(variable(X),U), member(variable2(Z),U).

%teste(X,Y,Z):- goal(Z), member(X,Z), member(Y,Z).
%
goal(X):- local1(Local1),local2(Local2), member(Local1,X), member(Local2,X).

% goal(X):- member(cliente1,X), assert(variable(cliente1)),
% assert(variable2(cliente2)), member(cliente2,X). % destination city

lucro(cliente1, 5).
lucro(cliente2, 6).
lucro(cliente3, 7).
lucro(cliente4, 8).
lucro(cliente5, 9).

% --- knowledge base:
% road(Origin,Destination,Distance-in-km)
% data collected from: https://pt.distance.to/

percurso(restaurantesilva, cliente1, 5).
percurso(restaurantesilva, cliente4, 7).
percurso(cliente1, cliente4, 5).
percurso(cliente1, cliente5, 5).
percurso(cliente1, cliente2, 5).
percurso(cliente4, cliente2, 2).
percurso(cliente4, cliente3, 4).
percurso(cliente2, cliente5, 2).
percurso(cliente2, cliente3, 3).
percurso(cliente5, cliente3, 5).


% travel(City1,City2,distance):
travel(X,Y,KM):-(percurso(X,Y,KM);percurso(Y,X,KM)). % true if road or symmetrical

% state transition rule s/2: s(City1,City2)
s(L1,L2):- last(L1,N1),travel(N1,N2,_),append(L1,[N2],L2). % link s(O,D,Dist) with s(O,D)

% evaluation function: (sum of distances for all pairs)
eval([_],0).
eval([City1,City2|R],DS):-
	travel(City1,City2,D),
	eval([City2|R],DR),
	DS is D+DR.

totalLucro(DS):-
	local1(X),
	local2(Y),
	lucro(X, Lucro1),
	lucro(Y, Lucro2),
	DS is Lucro1+Lucro2.


tempoEntrega(Lista,Soma):-eval(Lista, DS), Soma is DS + 2.

% execute and show a search method result:
run(Method,S, D, Lucro):-search(Method,Par,S),
	      writepar(Par),nl,
              last(S,LS),
              tempoEntrega(LS,D),
	      totalLucro(Lucro).

% write parameter (if any):
%
writepar(X):- integer(X),write(' par:'),write(X). % write X
writepar(_). % do not write X



% execute 3 example searches:
q1(S,Distancia, Lucro):- run(depthfirst,S, Distancia, Lucro).
q2(S,Distancia, Lucro):- run(iterativedeepening, S, Distancia, Lucro).
q3(S,Distancia, Lucro):- run(breadthfirst, S, Distancia, Lucro).
