# Bluetooth beacons
Bronnen:
https://estimote.com/
https://ionicframework.com/docs/native/estimote-beacons/

## Hypothese
Voor mijn PoC onderzoek 1 ga ik kijken of het mogelijk is een Estimote location beacon werkende te krijgen in appvorm en ga ik ontdekken wat de mogelijkheden hiermee zijn.

Daarom luidt de hypothese als volgt:
Zijn er nuttige toepassingen om een Estimote location beacon in te zetten voor het M-project?

## Testopzet
Allereerst zal ik gaan proberen of de beacons werken (handig om te doen voordat ik vastloop met programmeren en erachter kom dat ze anders werken dan dat ik dacht).
Daarna zal ik met Ionic een hybride Android app maken om te kijken of ik kan ontdekken welke beacons hoe dichtbij zijn.
Als laatste - indien er genoeg tijd over is - zal ik proberen om mijn app iets uit te laten voeren wanneer een bepaalde beacon in de buurt is. Zo moet de app bijvoorbeeld een rode achtergrond tonen als een roze beacon binnen 5 meter afstand is, een gele als de gele beacon binnen 3 meter is en een oranje kleur als ze alletwee in de buurt zijn. 

## Resultaat
Allereerst heb ik de Estimote app gedownload en gekeken of de beacons werkte. Dit lukte:
[afbeelding 1]
Ik moest alleen de beacon "claimen" om hem een naam te geven en de gegevens te wijzigen. Gezien de beacons geleend waren, wilde ik deze niet claimen (a.d.h.v. mijn email). Ik weet niet of dit in de toekomst problemen oplevert, maar dit is in ieder geval iets wat ik in mijn achterhoofd moet houden.
Het is mooi om te zien dat de Estimote app de afstand tot een beacon toont en toont welke kleur beacon het is, hierdoor denk ik dat het voor mij mogelijk is om er leuke dingen mee te kunnen doen.

Allereerst heb ik een nieuw Ionic project gestart en kwam tot mijn verbazing tegen dat er een Cordova plugin is voor de Estimote Beacon (zie bron 2).
Na installeren hiervan heb ik de usage code geimplementeerd en ben ik wat code uit gaan proberen. Het duurde even voordat ik Ionic weer aan de praat had, ik ben namelijk geswitcht van laptop en dat leverde problemen op met het debuggen van een Ionic project op een extern device.
Ondanks dat er een hele plugin van Ionic was, duurde het lang voordat mij iets lukte met de code. Dit kwam doordat ik dacht dat de documentatie van de plugin niet klopte, maar in werkelijkheid de beacons afgeschermd waren door de eigenaar. 

[Afbeelding 2]
De beacons die ik gebruik waren geleend (van school) waardoor ze op naam stonden van iemand. Zoals mijn vermoedens al eerder waren, leverde het problemen op dat ik de beacon niet kon claimen. Door de beacon te claimen, kan ik de UUID's terugvinden samen met de major en de minor. Als ik die had, kon ik met de beacons verbinden en de waardes bekijken. In eerste instantie ben ik van alles gaan proberen en onderzoeken om de code werkende te krijgen, waarna bleek dat de documentatie niet optimaal was. Hierin stond dat de beacons gescand konden worden door middel van het meegeven van alleen maar 'null'-waardes. Als ik dit doe, krijg ik een melding dat het UUID niet null mag zijn. Hierdoor kon ik er niet achter komen wat de UUID's waren en de minor/major.
Ook via de officiele app was het achterhalen van deze waardes verborgen en alleen beschikbaar voor de eigenaar ervan. Helaas! Ik had graag wat dingetjes geprobeerd met de beacons.

Om terug te komen op de hypothese, ik denk dat er dusdanig wel potentie zit in het gebruik van deze beacons. Zo kan dit bijvoorbeeld worden gebruikt om erachter te komen hoe druk het op bepaalde plaatsen is in het pretpark, zodat hier crowd control op toegepast moet kunnen worden.


## Conclusie
Het is zeker mogelijk om de beacon als een oplossing of verrijking te gebruiken voor crowd control. Helaas heb ik niet uit kunnen vinden hoe de beacons precies in elkaar staken (maar begrijp wel hoe ik de beacon werkende zou moeten krijgen als ik erbij kon). De beacons kunnen bijvoorbeeld handig zijn als je erachter wilt komen hoeveel mensen zich op een bepaald punt bevinden.