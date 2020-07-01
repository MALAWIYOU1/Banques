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

{ #category : #getters }
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
	  montant:= 0.
	  numero:= 0.
	  etat:= true
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
Compte >> numero: aNumber [
	numero:= aNumber 
]
