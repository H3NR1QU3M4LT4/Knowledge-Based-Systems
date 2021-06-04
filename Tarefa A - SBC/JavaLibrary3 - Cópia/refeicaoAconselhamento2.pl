
attribute(idade, [menor18, de18a50, mais51]).
attribute(regiao, [sul, norte, centro]).
attribute(preco, [menor10, maior10]).
attribute(tipo, [normal, vegetariano]).

:- dynamic example/2.


example(yes, [tipo=normal, idade=menor18, regiao=norte, preco=menor10]).
example(yes, [tipo=normal, idade=menor18, regiao=norte, preco=maior10]).
example(yes, [tipo=normal, idade=menor18, regiao=sul, preco=menor10]).
example(yes, [tipo=normal, idade=menor18, regiao=sul, preco=maior10]).
example(yes, [tipo=normal, idade=menor18, regiao=centro, preco=menor10]).
example(yes, [tipo=normal, idade=menor18, regiao=centro, preco=maior10]).


example(yes, [tipo=normal, idade=de18a50, regiao=norte, preco=menor10]).
example(yes, [tipo=normal, idade=de18a50, regiao=norte, preco=maiorr10]).
example(yes, [tipo=normal, idade=de18a50, regiao=centro, preco=menor10]).
example(yes, [tipo=normal, idade=de18a50, regiao=centro, preco=maior10]).
example(yes, [tipo=normal, idade=de18a50, regiao=sul, preco=maior10]).
example(yes, [tipo=normal, idade=de18a50, regiao=sul, preco=menor10]).


example(no, [tipo=normal, idade=mais51, regiao=centro, preco=maior10]).
example(yes, [tipo=normal, idade=mais51, regiao=centro, preco=menor10]).
example(no, [tipo=normal, idade=mais51, regiao=norte, preco=maior10]).
example(yes, [tipo=normal, idade=mais51, regiao=norte, preco=menor10]).
example(no, [tipo=normal, idade=mais51, regiao=sul, preco=maior10]).
example(yes, [tipo=normal, idade=mais51, regiao=sul, preco=menor10]).


example(no, [tipo=vegetariano, idade=menor18, regiao=norte, preco=menor10]).
example(no, [tipo=vegetariano, idade=menor18, regiao=norte, preco=maior10]).
example(no, [tipo=vegetariano, idade=menor18, regiao=sul, preco=menor10]).
example(no, [tipo=vegetariano, idade=menor18, regiao=sul, preco=maior10]).
example(no, [tipo=vegetariano, idade=menor18, regiao=centro, preco=menor10]).
example(no, [tipo=vegetariano, idade=menor18, regiao=centro, preco=maior10]).


example(no, [tipo=vegetariano, idade=de18a50, regiao=norte, preco=menor10]).
example(no, [tipo=vegetariano, idade=de18a50, regiao=norte, preco=maiorr10]).
example(no, [tipo=vegetariano, idade=de18a50, regiao=centro, preco=menor10]).
example(no, [tipo=vegetariano, idade=de18a50, regiao=centro, preco=maior10]).
example(no, [tipo=vegetariano, idade=de18a50, regiao=sul, preco=maior10]).
example(no, [tipo=vegetariano, idade=de18a50, regiao=sul, preco=menor10]).


example(no, [tipo=vegetariano, idade=mais51, regiao=centro, preco=maior10]).
example(no, [tipo=vegetariano, idade=mais51, regiao=centro, preco=menor10]).
example(no, [tipo=vegetariano, idade=mais51, regiao=norte, preco=maior10]).
example(no, [tipo=vegetariano, idade=mais51, regiao=norte, preco=menor10]).
example(no, [tipo=vegetariano, idade=mais51, regiao=sul, preco=maior10]).
example(no, [tipo=vegetariano, idade=mais51, regiao=sul, preco=menor10]).



