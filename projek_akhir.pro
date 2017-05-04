DOMAINS
list = symbol*
area = kondisi(symbol,symbol)
FACTS
areaparkir(integer,area)
PREDICATES
nondeterm areaparkir1(list)
%nondeterm areaparkir(integer,area)
nondeterm jalan
nondeterm jalan11
nondeterm jalan12
nondeterm jalan13
nondeterm jalan14
nondeterm jalan21
nondeterm jalan22
nondeterm jalan23
nondeterm jalan24
nondeterm jalan31
nondeterm jalan32
nondeterm jalan33
nondeterm jalan34
nondeterm jalan41
nondeterm jalan42
nondeterm jalan43
nondeterm jalan44
nondeterm ruang1
nondeterm ruang2
nondeterm ruang3
nondeterm ruang4
nondeterm ruang5
nondeterm cek1(integer)
nondeterm cek2(integer)
nondeterm cek3(integer)
nondeterm cek4(integer)
nondeterm cek5(integer)
nondeterm cekk(integer)
cek(integer,integer)
CLAUSES

areaparkir(11,kondisi("405","Cerah")).
areaparkir(12,kondisi("405","Panas")).
areaparkir(13,kondisi("405","Mendung")).
areaparkir(14,kondisi("405","Hujan")).

areaparkir1([]).
areaparkir1([H|T]):-
write(H),write(" "),
areaparkir1(T).


cek(X,X):-!.
cek(_,_):-fail. 

jalan:-
 write("* * * * SISTEM PENDUKUNG KEPUTUSAN PARKIR MOTOR MAHASISWA FKTI * * * *"),nl,nl,nl,
 write("pilih tujuan ruangan anda! "),nl,
 write("1. 405"),nl,
 write("2. 406"),nl,
 write("3. 407"),nl,
 write("4. 411A"),nl,
 write("5. 411B"),nl,
 write("Pilih (1-5)"),nl,
 readchar(X),
 write(X),nl,nl,nl,
 cekk(X).
 cekk(X):-
 	cek(X,'1'),ruang1.
 cekk(X):-
 	cek(X,'2'),ruang2.
 cekk(X):-
 	cek(X,'3'),ruang3.
 cekk(X):-
 	cek(X,'4'),ruang4.
 cekk(X):-
 	cek(X,'5'),ruang5.
 cekk(_):-
 	jalan.
 	
ruang1:-
 write("Bagaimana Cuaca saat ini? "),nl,
 write("1. Cerah"),nl,
 write("2. Panas"),nl,
 write("3. Mendung"),nl,
 write("4. Hujan"),nl,
 write("Pilih (1-4)"),nl,
 readchar(X),
 write(X),nl,nl,nl,
 cek1(X).
 cek1(X):-
 	cek(X,'1'),jalan11.
 cek1(X):-
 	cek(X,'2'),jalan12.
 cek1(X):-
 	cek(X,'3'),jalan13.
 cek1(X):-
 	cek(X,'4'),jalan14.	
 cek1(_):-
 	ruang1.

jalan11:-
 areaparkir(11,Kondisi),write(Kondisi),nl,
 write("Silahkan parkir di belakang 405"),nl,
 write("Silahkan parkir di samping 407"),nl. 	
 
jalan12:-
 areaparkir(12,Kondisi),write(Kondisi),nl,
 write("Silahkan parkir di belakang 405"),nl,
 write("Silahkan parkir di samping 407"),nl,
 write("Silahkan parkir ditempat yang beratap"),nl.

jalan13:-
 areaparkir(13,Kondisi),nl,write(Kondisi),nl,
 write("Silahkan parkir ditempat yang beratap"),nl.

jalan14:-
 areaparkir(14,Kondisi),nl,write(Kondisi),nl,
 write("Silahkan parkir ditempat yang beratap"),nl.
 
ruang2:-
 write("Bagaimana Cuaca saat ini? "),nl,
 write("1. Cerah"),nl,
 write("2. Panas"),nl,
 write("3. Mendung"),nl,
 write("4. Hujan"),nl,
 write("Pilih (1-4)"),nl,
 readchar(X),
 write(X),nl,nl,nl,
 cek2(X).
 cek2(X):-
 	cek(X,'1'),jalan21.
 cek2(X):-
 	cek(X,'2'),jalan22.
 cek2(X):-
 	cek(X,'3'),jalan23.
 cek2(X):-
 	cek(X,'4'),jalan24.	
 cek2(_):-
 	ruang2.
jalan21:-
 areaparkir1(["406","Cerah"]),nl,
 write("Silahkan parkir di belakang 405"),nl,
 write("Silahkan parkir di samping 407"),nl.
 
jalan22:-
 areaparkir1(["406","Panas"]),nl,
 write("Silahkan parkir di belakang 405"),nl,
 write("Silahkan parkir di samping 407"),nl,
 write("Silahkan parkir ditempat yang beratap"),nl.

jalan23:-
 areaparkir1(["406","Mendung"]),nl,
 write("Silahkan parkir ditempat yang beratap"),nl.

jalan24:-
 areaparkir1(["406","Hujan"]),nl,
 write("Silahkan parkir ditempat yang beratap"),nl.
 
ruang3:-
 write("Cuaca saat ini "),nl,
 write("1. Cerah"),nl,
 write("2. Panas"),nl,
 write("3. Mendung"),nl,
 write("4. Hujan"),nl,
 write("Pilih (1-4)"),nl,
 readchar(X),
 write(X),nl,nl,nl,
 cek3(X).
 cek3(X):-
 	cek(X,'1'),jalan31.
 cek3(X):-
 	cek(X,'2'),jalan32.
 cek3(X):-
 	cek(X,'3'),jalan33.
 cek3(X):-
 	cek(X,'4'),jalan34.	
 cek3(_):-
 	ruang3. 
 
jalan31:-
 areaparkir1(["407","Cerah"]),nl,
 write("Silahkan parkir di belakang 405"),nl,
 write("Silahkan parkir di samping 407"),nl.
 
jalan32:-
 areaparkir1(["407","Panas"]),nl,
 write("Silahkan parkir di belakang 405"),nl,
 write("Silahkan parkir di samping 407"),nl,
 write("Silahkan parkir ditempat yang beratap"),nl.

jalan33:-
 areaparkir1(["407","Mendung"]),nl,
 write("Silahkan parkir ditempat yang beratap"),nl.

jalan34:-
 areaparkir1(["407","Hujan"]),nl,
 write("Silahkan parkir ditempat yang beratap"),nl.
 
ruang4:-
 write("Cuaca saat ini "),nl,
 write("1. Cerah"),nl,
 write("2. Panas"),nl,
 write("3. Mendung"),nl,
 write("4. Hujan"),nl,
 write("Pilih (1-4)"),nl,
 readchar(X),
 write(X),nl,nl,nl,
 cek4(X).
 cek4(X):-
 	cek(X,'1'),jalan41.
 cek4(X):-
 	cek(X,'2'),jalan42.
 cek4(X):-
 	cek(X,'3'),jalan43.
 cek4(X):-
 	cek(X,'4'),jalan44.	
 cek4(_):-
 	ruang4.
 	
jalan41:-
 areaparkir1(["411 A/B","Cerah"]),nl,
 write("Silahkan parkir di belakang 411"),nl.

 
jalan42:-
 areaparkir1(["411 A/B","Panas"]),nl,
 write("Silahkan parkir di belakang 411"),nl,
 write("Silahkan parkir ditempat yang beratap"),nl.

jalan43:-
 areaparkir1(["411 A/B","Mendung"]),nl,
 write("Silahkan parkir ditempat yang beratap"),nl.

jalan44:-
 areaparkir1(["411 A/B","Hujan"]),nl,
 write("Silahkan parkir ditempat yang beratap"),nl.
 
ruang5:-
 write("Cuaca saat ini "),nl,
 write("1. Cerah"),nl,
 write("2. Panas"),nl,
 write("3. Mendung"),nl,
 write("4. Hujan"),nl,
 write("Pilih (1-4)"),nl,
 readchar(X),
 write(X),nl,nl,nl,
 cek5(X).
 cek5(X):-
 	cek(X,'1'),jalan41.
 cek5(X):-
 	cek(X,'2'),jalan42.
 cek5(X):-
 	cek(X,'3'),jalan43.
 cek5(X):-
 	cek(X,'4'),jalan44.	
 cek5(_):-
 	ruang5.
GOAL
save("projek_akhir.txt"),
jalan.