:-[satisfy,induce_ifthen,refeicaoAconselhamento2].

% the goal is to classify refeicaoAconselhamento
learn_rules:-
	learn(no),  % negative examples
	learn(yes), % positive examples
        % save new rules:
	tell('refeicao_if_then.pl'),
	listing(<==),
	told.




q1(Class,Tipo,Idade,Regiao,Preco):- classify([tipo=Tipo, idade=Idade, regiao=Regiao, preco=Preco],Class).










