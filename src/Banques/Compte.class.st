Class {
	#name : #Compte,
	#superclass : #Object,
	#instVars : [
		'numero',
		'montant',
		'etat'
	],
	#category : #Banques
}

{ #category : #accessing }
Compte >> etat [
"permet de savoir si un compte est fermer ou pas "
	^ etat
]

{ #category : #accessing }
Compte >> etat: aBoolean [
"Lorque l etat est à false, le compte est bloqué et à true , il est ouvert"
	etat := aBoolean
]

{ #category : #initalize }
Compte >> initialize [
	self montant: 0.
	self numero: 0.
	self etat: True
]

{ #category : #getters }
Compte >> montant [
	^ montant
]

{ #category : #accessing }
Compte >> montant: aNumber [
	montant := aNumber
]

{ #category : #getters }
Compte >> numero [
	^ numero
]

{ #category : #accessing }
Compte >> numero: anObject [
	numero := anObject
]
