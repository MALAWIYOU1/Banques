Class {
	#name : #Client,
	#superclass : #Object,
	#instVars : [
		'id',
		'nom',
		'compte'
	],
	#category : #Banques
}

{ #category : #accessing }
Client >> compte [
	^ compte
]

{ #category : #accessing }
Client >> compte: uncompte [
	compte := uncompte
]

{ #category : #operation }
Client >> depot: aNumber [
	self compte etat
		ifFalse: [^ false ].
	aNumber < 1
		ifTrue: [ ^ false ]
		ifFalse: [ self compte montant: self compte+ aNumber.
			^ true ]
]

{ #category : #accessing }
Client >> id [
	^ id
]

{ #category : #accessing }
Client >> id: anObject [
	id := anObject
]

{ #category : #initialize }
Client >> initialize [ 
	super initialize.
	  nom:= ''.
	  id:= 0.
	  compte:= nil
]

{ #category : #accessing }
Client >> nom [
	^ nom
]

{ #category : #accessing }
Client >> nom: anObject [
	nom := anObject
]

{ #category : #operation }
Client >> retirer:aNumber [
  ( self compte etat) ifFalse: [ Transcript show: 'Votre compte est fermé';cr.
	^false ].
	(aNumber <1)
		ifTrue: [ ^false ]
		ifFalse: [ 
			(self compte montant > aNumber )
			ifFalse: [ Transcript show: 'Solde insuffisant';cr.
				^false]
			ifTrue:[
				(self compte) montant:(self compte - aNumber).
				^true
				]	 
			]
	

]

{ #category : #operation }
Client >> transferer:aNumber a: unClient [
( self compte etat) ifFalse: [ Transcript show: 'Votre compte est fermé';cr.
	^false ].
	(aNumber <1)
		ifTrue: [ ^false ]
		ifFalse: [ 
				(self retirer: aNumber) 
					ifTrue: [
						(unClient depot: aNumber)
								ifTrue: [^true]
								ifFalse: [ ^false ]
						]	
					]
]
