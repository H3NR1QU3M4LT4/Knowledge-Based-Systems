:- dynamic(fact/1).
:- [backward,forward,bd,proof].

if menor18 and fastfood and sul and menor10 then 1.
if menor18 and fastfood and sul and maior10 then 2.
if menor18 and fastfood and norte and menor10 then 3.
if menor18 and fastfood and norte and maior10 then 4.
if menor18 and fastfood and centro and menor10 then 5.
if menor18 and fastfood and centro and maior10 then 6.

if menor18 and normal and sul and menor10 then 7.
if menor18 and normal and sul and maior10 then 8.
if menor18 and normal and norte and menor10 then 9.
if menor18 and normal and norte and maior10 then 10.
if menor18 and normal and centro and menor10 then 11.
if menor18 and normal and centro and maior10 then 12.

if menor18 and vegetariano and sul and menor10 then 13.
if menor18 and vegetariano and sul and maior10 then 14.
if menor18 and vegetariano and norte and menor10 then 15.
if menor18 and vegetariano and norte and maior10 then 16.
if menor18 and vegetariano and centro and menor10 then 17.
if menor18 and vegetariano and centro and maior10 then 18.

if 1850 and fastfood and sul and menor10 then 19.
if 1850 and fastfood and sul and maior10 then 20.
if 1850 and fastfood and norte and menor10 then 21.
if 1850 and fastfood and norte and maior10 then 22.
if 1850 and fastfood and centro and menor10 then 23.
if 1850 and fastfood and centro and maior10 then 24.

if 1850 and normal and sul and menor10 then 25.
if 1850 and normal and sul and maior10 then 26.
if 1850 and normal and norte and menor10 then 27.
if 1850 and normal and norte and maior10 then 28.
if 1850 and normal and centro and menor10 then 29.
if 1850 and normal and centro and maior10 then 30.

if 1850 and vegetariano and sul and menor10 then 31.
if 1850 and vegetariano and sul and maior10 then 32.
if 1850 and vegetariano and norte and menor10 then 33.
if 1850 and vegetariano and norte and maior10 then 34.
if 1850 and vegetariano and centro and menor10 then 35.
if 1850 and vegetariano and centro and maior10 then 36.

if mais51 and fastfood and sul and menor10 then 37.
if mais51 and fastfood and sul and maior10 then 38.
if mais51 and fastfood and norte and menor10 then 39.
if mais51 and fastfood and norte and maior10 then 40.
if mais51 and fastfood and centro and menor10 then 41.
if mais51 and fastfood and centro and maior10 then 42.

if mais51 and normal and sul and menor10 then 43.
if mais51 and normal and sul and maior10 then 44.
if mais51 and normal and norte and menor10 then 45.
if mais51 and normal and norte and maior10 then 46.
if mais51 and normal and centro and menor10 then 47.
if mais51 and normal and centro and maior10 then 48.

if mais51 and vegetariano and sul and menor10 then 49.
if mais51 and vegetariano and sul and maior10 then 50.
if mais51 and vegetariano and norte and menor10 then 51.
if mais51 and vegetariano and norte and maior10 then 52.
if mais51 and vegetariano and centro and menor10 then 53.
if mais51 and vegetariano and centro and maior10 then 54.
%if 017 and vegetariano and centro and menor10 then 17.



%Resposta

res(Z):- demo,fact(X), perfil(X,Z), print(X).
res(_).




















