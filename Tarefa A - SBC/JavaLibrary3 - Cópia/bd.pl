:- dynamic(fact/1).
:- [backward,forward].

%base de dados de recomendacoes

%comida, idade[],tipo de comida, regiao[], preco

comida('Happy meal',[menor18],fastfood,[norte,centro,sul],menor10).
comida('Big Mac',[menor18,1850,mais51],fastfood,[norte,centro,sul],menor10).
comida('Mc Chicken',[menor18,1850,mais51],fastfood,[norte,centro,sul],menor10).
comida('Pizza',[menor18,1850,mais51],fastfood,[norte,centro,sul],maior10).
comida('Hamburguer Artesanal',[menor18,1850,mais51],fastfood,[norte,centro,sul],maior10).
comida('Francesinha',[menor18,1850,mais51],fastfood,[norte,centro],menor10).
comida('Kebab',[menor18,1850,mais51],fastfood,[norte,centro,sul],menor10). %sugestão 6
comida('H3 Champignon',[mais51],fastfood,[norte,centro,sul],maior10).
comida('Cachorro Especial',[menor18],fastfood,[norte,centro,sul],maior10).
comida('McBifana',[1850,mais51],fastfood,[norte,centro,sul],menor10).
comida('Tacos',[mais51],fastfood,[norte,centro,sul],maior10).
comida('Menu long chicken',[menor18,1850],fastfood,[norte,centro,sul],menor10).
comida('Lasanha',[menor18,1850,mais51],fastfood,[norte,centro,sul],maior10).
comida('Wrap de Frango',[menor18,1850,mais51],fastfood,[norte,centro,sul],menor10).
comida('Nuggets',[menor18],fastfood,[norte,centro,sul],menor10).
comida('Colonel Bucket Meal',[menor18,1850,mais51],fastfood,[norte,centro,sul],menor10).

comida('Filetes com Arroz e Batatas Fritas',[menor18],normal,[norte,centro,sul],menor10).
comida('Prego no prato',[menor18,1850],normal,[norte,centro,sul],menor10).
comida('Bacalhau recheado',[menor18,1850,mais51],normal,[norte,centro,sul],maior10).
comida('Carne de porco á Alentejana',[1850,mais51],normal,[sul],maior10).
comida('Vitela Assada',[menor18,1850,mais51],normal,[norte,centro,sul],maior10).
comida('Frango de Churrasco',[menor18,1850,mais51],normal,[norte,centro,sul],menor10).
comida('Feijoada á Transmontana',[1850,mais51],normal,[norte],maior10).
comida('Lampreia',[1850,mais51],normal,[centro],maior10).
comida('Leitão Assadp',[menor18,1850,mais51],normal,[centro],maior10).
comida('Caldeira de Peixe',[1850,mais51],normal,[sul],maior10).
comida('Sopa da Pedra',[mais51],normal,[sul],menor10).
comida('Polvo á Lagareiro',[1850,mais51],normal,[norte,centro,sul],maior10).
comida('Robalo',[1850,mais51],normal,[norte,centro,sul],maior10).
comida('Douradinhos',[menor18],normal,[norte,centro,sul],menor10).
comida('Mariscada',[1850,mais51],normal,[norte,centro,sul],maior10).
comida('Caldo Verde',[menor18,1850,mais51],normal,[norte,centro,sul],menor10).
comida('Porco preto',[1850,mais51],normal,[sul],maior10).
comida('Jaquinzinhos',[1850,mais51],normal,[sul],menor10).
comida('Sushi',[1850],normal,[norte,centro,sul],maior10).
comida('Moelas',[1850,mais51],normal,[norte],menor10).
comida('Sardinhas',[1850,mais51],normal,[norte],menor10).
comida('Arroz de Cabidela',[1850,mais51],normal,[norte],maior10).
comida('Risoto de camarão',[1850,mais51],normal,[norte,centro,sul],maior10).
comida('Alheira',[menor18,1850,mais51],normal,[norte,centro],menor10).
comida('Lombo Assado',[menor18,1850,mais51],normal,[norte,centro,sul],menor10).
comida('Cabrito Assado',[1850,mais51],normal,[norte,centro,sul],maior10).
comida('Arroz de Polvo',[1850,mais51],normal,[norte,centro,sul],maior10).
comida('Robalo Grelhado',[1850,mais51],normal,[sul],maior10).
comida('Picanha',[menor18,1850,mais51],normal,[norte,centro,sul],maior10).
comida('Posta á mirandesa',[menor18,1850,mais51],normal,[centro],maior10).

comida('Pizza Veggie',[menor18,1850,mais51],vegetariano,[norte,centro,sul],maior10).
comida('Salada de César',[1850,mais51],vegetariano,[norte,centro,sul],menor10).
comida('Feijoada de algas',[1850,mais51],vegetariano,[norte,centro,sul],maior10).
comida('Risoto de Açafrão',[1850,mais51],vegetariano,[norte,centro,sul],maior10).
comida('Legumes estufados',[menor18,1850,mais51],vegetariano,[norte,centro,sul],maior10).

comida('Strogonoff de Legumes',[1850,mais51],vegetariano,[norte,centro,sul],maior10).
comida('Sopa de Legumes',[menor18,1850,mais51],vegetariano,[norte,centro,sul],maior10).
comida('Lasanha vegetariana',[menor18,1850],vegetariano,[norte,centro,sul],maior10).
comida('Hamburguer vegetariano',[menor18,1850,mais51],vegetariano,[norte,centro,sul],maior10).
comida('Sopa vegetariana',[menor18,1850],vegetariano,[norte,centro,sul],menor10).


%comida('',[017,1850,+51],vegetariano,[norte,centro,sul],menor10).
%comida('',[017,1850,+51],vegetariano,[norte,centro,sul],menor10).
%comida('',[017,1850,+51],vegetariano,[norte,centro,sul],menor10).




membro(X,[X|_]).
membro(X,[_|R]):- membro(X,R).

verRecomendacao(X,A,B,C,Z) :- findall(Y,(comida(Y,U,A,W,C),membro(X,U),membro(B,W)),Z).


perfil(1,Z):- verRecomendacao(menor18,fastfood,sul,menor10,Z).
perfil(2,Z):- verRecomendacao(menor18,fastfood,sul,maior10,Z).
perfil(3,Z):- verRecomendacao(menor18,fastfood,norte,menor10,Z).
perfil(4,Z):- verRecomendacao(menor18,fastfood,norte,maior10,Z).
perfil(5,Z):- verRecomendacao(menor18,fastfood,centro,menor10,Z).
perfil(6,Z):- verRecomendacao(menor18,fastfood,centro,maior10,Z).

perfil(7,Z):- verRecomendacao(menor18,normal,sul,menor10,Z).
perfil(8,Z):- verRecomendacao(menor18,normal,sul,maior10,Z).
perfil(9,Z):- verRecomendacao(menor18,normal,norte,menor10,Z).
perfil(10,Z):- verRecomendacao(menor18,normal,norte,maior10,Z).
perfil(11,Z):- verRecomendacao(menor18,normal,centro,menor10,Z).
perfil(12,Z):- verRecomendacao(meno18,normal,centro,maior10,Z).

perfil(13,Z):- verRecomendacao(menor18,vegetariano,sul,menor10,Z).
perfil(14,Z):- verRecomendacao(menor18,vegetariano,sul,maior10,Z).
perfil(15,Z):- verRecomendacao(menor18,vegetariano,norte,menor10,Z).
perfil(16,Z):- verRecomendacao(menor18,vegetariano,norte,maior10,Z).
%perfil(17,Z):- verRecomendacao(017,vegetariano,centro,menor10,Z).
perfil(18,Z):- verRecomendacao(menor18,vegetariano,centro,maior10,Z).

perfil(19,Z):- verRecomendacao(1850,fastfood,sul,menor10,Z).
perfil(20,Z):- verRecomendacao(1850,fastfood,sul,maior10,Z).
perfil(21,Z):- verRecomendacao(1850,fastfood,norte,menor10,Z).
perfil(22,Z):- verRecomendacao(1850,fastfood,norte,maior10,Z).
perfil(23,Z):- verRecomendacao(1850,fastfood,centro,menor10,Z).
perfil(24,Z):- verRecomendacao(1850,fastfood,centro,maior10,Z).

perfil(25,Z):- verRecomendacao(1850,normal,sul,menor10,Z).
perfil(26,Z):- verRecomendacao(1850,normal,sul,maior10,Z).
perfil(27,Z):- verRecomendacao(1850,normal,norte,menor10,Z).
perfil(28,Z):- verRecomendacao(1850,normal,norte,maior10,Z).
perfil(29,Z):- verRecomendacao(1850,normal,centro,menor10,Z).
perfil(30,Z):- verRecomendacao(1850,normal,centro,maior10,Z).

perfil(31,Z):- verRecomendacao(1850,vegetariano,sul,menor10,Z).
perfil(32,Z):- verRecomendacao(1850,vegetariano,sul,maior10,Z).
perfil(33,Z):- verRecomendacao(1850,vegetariano,norte,menor10,Z).
perfil(34,Z):- verRecomendacao(1850,vegetariano,norte,maior10,Z).
perfil(35,Z):- verRecomendacao(1850,vegetariano,centro,menor10,Z).
perfil(36,Z):- verRecomendacao(1850,vegetariano,centro,maior10,Z).

perfil(37,Z):- verRecomendacao(mais51,fastfood,sul,menor10,Z).
perfil(38,Z):- verRecomendacao(mais51,fastfood,sul,maior10,Z).
perfil(39,Z):- verRecomendacao(mais51,fastfood,norte,menor10,Z).
perfil(40,Z):- verRecomendacao(mais51,fastfood,norte,maior10,Z).
perfil(41,Z):- verRecomendacao(mais51,fastfood,centro,menor10,Z).
perfil(42,Z):- verRecomendacao(mais51,fastfood,centro,maior10,Z).

perfil(43,Z):- verRecomendacao(mais51,normal,sul,menor10,Z).
perfil(44,Z):- verRecomendacao(mais51,normal,sul,maior10,Z).
perfil(45,Z):- verRecomendacao(mais51,normal,norte,menor10,Z).
perfil(46,Z):- verRecomendacao(mais51,normal,norte,maior10,Z).
perfil(47,Z):- verRecomendacao(mais51,normal,centro,menor10,Z).
perfil(48,Z):- verRecomendacao(mais51,normal,centro,maior10,Z).

perfil(49,Z):- verRecomendacao(mais51,vegetariano,sul,menor10,Z).
perfil(50,Z):- verRecomendacao(mais51,vegetariano,sul,maior10,Z).
perfil(51,Z):- verRecomendacao(mais51,vegetariano,norte,menor10,Z).
perfil(52,Z):- verRecomendacao(mais51,vegetariano,norte,maior10,Z).
perfil(53,Z):- verRecomendacao(mais51,vegetariano,centro,menor10,Z).
perfil(54,Z):- verRecomendacao(mais51,vegetariano,centro,maior10,Z).
perfil(17,Z):- verRecomendacao(menor18,vegetariano,centro,menor10,Z).

