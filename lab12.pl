edge('Makkah','Madinah').
edge('Makkah','Riyadh').
edge('Madinah','Makkah').
edge('Madinah','Taif').
edge('Madinah','Tabuk').
edge('Taif','Tabuk').
edge('Taif','Dammam').
edge('Tabuk','Taif').
edge('Qatif','Madinah').
edge('Qatif','Dammam').
edge('Dammam','Qatif').
edge('Dammam','Riyadh').
edge('Riyadh','Dammam').

travel(From,To,Path) :-
    path(From,To,[From],P),
    reverse(P,Path).

path(X,X,P,P).
path(X,Y,V,P) :-
    edge(X,Z),
    \+ member(Z,V),
    path(Z,Y,[Z|V],P).
