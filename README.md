# Banques
mini programme d'une banque en smalltalk
Ce Projet a été mis sur pieds dans le cadre du TPE de POO4
ce projet contient Trois classes principales :
 -  La classe Banques permet de creer une banque dans laquelle on retrouve tous les comptes des clients dans la variable compteList et tous les clients
  dans la vai=riables clientlist. La banque crée des comptes et les assigne au client
  - La classe Compte contient le numero de compte et le solde du client
  -La classe Client elle, permet de créer un client, qui n'a qu'un identifiant unique, un nom et una variable compte de type unCompte
    * un client peut alors effectuer des depots, retrait, transferer de l'argent à un autre client, consulter son solde
    illustration
 Copiez de la ligne 12 à la ligne 40 puis coller dans votre Playground(après que vous ayez cloner le projet sur pharo)
|b ass mey elise jacky co |
b:= Banque new.
co:= Compte new montant: 60000000.
ass:= Client new.
ass nom: 'ASSOO Jean Marie'.
b creerCompte: co client: ass.
	ass depot:  500000 .
	
	
co:= Compte new montant: 40000000.
elise:= Client new.
elise nom: 'Mbengone Elise'.
b creerCompte: co client: elise.
ass transferer: 2000000 a: elise.

co:= Compte new montant: 200000000.
mey:= Client new.
mey nom: 'Meyobeme Jean Dieudonné'.
b creerCompte: co client: mey.

co:= Compte new montant: 100000000.
jacky:= Client new.
jacky nom: 'Mballa Jacky'.
b creerCompte: co client: jacky.
jacky transferer: 500000 a: elise .

b  fermerCompte: mey .
mey transferer: 300000 a: elise .
b
