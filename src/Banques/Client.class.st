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
Client >> depot:aNumber [
	(aNumber <1)
		ifTrue: [ ^0 ]
		ifFalse: [ 
			(self compte) montant:(self compte + aNumber).
			^1 
			]
	

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
	self nom: ''.
	self id: 0.
	self compte: nil
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
	^False ].
	(aNumber <1)
		ifTrue: [ ^0 ]
		ifFalse: [ 
			(self compte montant > aNumber )
			ifFalse: [ Transcript show: 'Solde insuffisant';cr.
				^False]
			ifTrue:[
				(self compte) montant:(self compte - aNumber).
				^True
				]	 
			]
	

]

{ #category : #operation }
Client >> transferer:aNumber a: unClient [
( self compte etat) ifFalse: [ Transcript show: 'Votre compte est fermé';cr.
	^False ].
	(aNumber <1)
		ifTrue: [ ^False ]
		ifFalse: [ 
				(self retirer: aNumber) 
					ifTrue: [
						(unClient depot: aNumber)
								ifTrue: [^True]
								ifFalse: [ ^False ]
						]	
					]
]
