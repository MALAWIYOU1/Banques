"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestBanques,
	#superclass : #PackageManifest,
	#category : #'Banques-Manifest'
}

{ #category : #'code-critics' }
ManifestBanques class >> ruleGRIvarNeitherReadNorWrittenRuleV1FalsePositive [
	^ #(#(#(#RGClassDefinition #(#Banque)) #'2020-06-30T11:49:23.649238+01:00') )
]
