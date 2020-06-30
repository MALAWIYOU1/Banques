Class {
	#name : #Banque,
	#superclass : #Object,
	#instVars : [
		'clientList',
		'compteList',
		'etat'
	],
	#category : #Banques
}

{ #category : #accessing }
Banque >> clientList [
	^ clientList
]

{ #category : #accessing }
Banque >> clientList: unClient [
		clientList:= (self clientList) addFirst: unClient 
]

{ #category : #accessing }
Banque >> compteList [
	^ compteList
]

{ #category : #accessing }
Banque >> compteList: unCompte [
	compteList:= (self compteList )addFirst: unCompte 
 
]

{ #category : #operation }
Banque >> creerCompte:unCompte client: unClient [
	|compte client banque|
	client:= unClient.
	compte:= unCompte.
	compte initialize.
	client initialize.
	banque:= self.
	compte numero: ((banque compteList ) first ) numero + 1.
	client id: ((banque clientList ) first ) id + 1 .
	client compte: compte
]

{ #category : #initalize }
Banque >> initialize [ 
	"comment stating purpose of message"
		super initialize.
		self compteList: OrderedCollection new.
		self clientList: OrderedCollection new 
]
