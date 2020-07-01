Class {
	#name : #Banque,
	#superclass : #Object,
	#instVars : [
		'clientList',
		'compteList'
	],
	#category : #Banques
}

{ #category : #accessing }
Banque >> clientList [
	^ clientList
]

{ #category : #accessing }
Banque >> clientList: unClient [
	 clientList addFirst: unClient
]

{ #category : #accessing }
Banque >> compteList [
	^ compteList
]

{ #category : #accessing }
Banque >> compteList: unCompte [
	  compteList addFirst: unCompte
]

{ #category : #operation }
Banque >> creerCompte: unCompte client: unClient [
	| compte client banque tail|
	banque := self .
	client := unClient.
	compte := unCompte.

	client compte: compte.
	self compteList: compte.
	self clientList: client.
	 
 	client  id: (banque clientList at: 1 )id + 1 .
 
 compte  numero: (banque compteList at: 1 )numero + 1 
 
		
 
	
	 
]

{ #category : #initalize }
Banque >> initialize [ 
	"comment stating purpose of message"
		super initialize.
		 compteList:= OrderedCollection new.
		  clientList:= OrderedCollection new 
]
