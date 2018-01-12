# Onderzoeken Colin van der Geld

## Techs

Deze week zal ik aan de gang gaan met de volgende techs:
* Feedback in Swift
* In-app purchases

## Reflectie

### Takenlijst week 7
* PoC onderzoeken uitvoeren
* Bijwerken services
* Bepalen structuur Firebase database
* Controleren en doorlopen concept tests
* Mergen van branches UI met code en losse codebranches
* Uitprogrammeren use case "punten verzilveren" (full-stack)
* Pair programmen met Kevin: uitwerken inchecken
* Bugs oplossen inchecken + oplossen bug die eigenlijk helemaal geen bug bleek te zijn (evt. toelichting tijdens gesprek of zie kopje "Mergen")


### Wat ging er afgelopen week goed?
#### Programmeren
Een ding wat afgelopen week was het programmeren, zowel het pair programmen als het "gewone" programmeerwerk. Bij pair-programmen heb ik vooral geholpen wanneer mijn partner er niet uitkwam of vragen had. Tussendoor ben ik bezig geweest met het vinden/oplossen van een aantal bugs bij inchecken (onder andere dat inchecken niet ging omdat het middelpunt van de efteling bij de ingang geplaatst) en het maken van benodigde functies voor de incheck feature (functie toevoegen die gegevens vanuit de Firebaseservice doorgeeft en variabele aanmaken waarbij wordt bijgehouden waar de gebruiker is ingecheckt). Dit ging goed gezien we op deze manier veel voortgang boekte en niet "nutteloos" met z'n twee rond een laptop zaten. Bij het mergen was daarentegen wel twee personen nodigd omdat het een na het andere probleem opdook (zie kopje "Mergen" hieronder). Wat ook goed ging was het uitprogrammeren in mijn eentje. Zo heb ik de use case "punten verzilveren" binnen een hele korte periode uitgeprogrammeerd. Hierbij kwam het bedenken van databasestructuur voor "rewards", het uitprogrammeren van de service die de data ophaalt, het programmeren van de logica (back-end) en voor een klein stukje het maken/koppelen van de UI aan bod. Dit ging eerst snel, mede door goede hulp wanneer nodig en door bestaande code te kunnen hergebruiken.

### Wat ging er niet goed, waar heb je je aan geërgerd, wat moet er niet meer gebeuren?
#### Sneller op idee van PoC komen
Tijdens mijn vakantie (kerstvakantie) heb ik enigzins wat stress ervaren wat betreft PoC's. Toen de schoolweek weer begon, wist ik nog steeds niks en schoot ik in de stress. Ik heb hierbij totaal een uur moeten nadenken over welke PoC's ik wilde gaan uitvoeren. Dit heeft er uiteindelijk voor gezorgd dat ik mijn PoC niet binnen de op school gereserveerde tijd afkreeg en dat ik hiermee thuis verder moest gaan. (lees verder hieronder bij "Eerst kijken naar taken voordat ik PoC kies")

#### Designs (technisch)
Nu de deadline steeds meer in zicht komt en we te horen hebben gekregen dat het meer om concept gaat dan om de daadwerkelijke app, hebben we onze aandacht lichtelijk verschoven. Dit hield ook in dat er minder de nadruk werd gelegd op technisch ontwerp en meer op de app voor de deadline af te krijgen, waardoor bijvoorbeeld niet alle sequence diagrams zijn gemaakt. Er werd daarbij alleen in het geval van moeilijkere stukken code de whiteboardstift gepakt en iets uitgetekend op het bord. Hierdoor is hetgeen wat ik eerder in een reflectie benoemd heb (het afhankelijk van elkaar zijn), opnieuw aan bod gekomen.

#### Mergen 
Het mergen was ook iets wat problemen opleverde. Samen met Kevin was ik bezig om de (nieuwe) UI te combineren met de logica (code). Dit was een hoop gedoe en leverde veel merge conflicts op gezien sommige naamgevingen van id's veranderd waren (storyboard id en segue id), actions/outlets hernoemd waren, UI items verwijderd waren etc. Ook is er tijdens het bouwen een paar buttons toegevoegd om te kunnen testen, dit leverde ook een paar conflicten op tijdens het mergen. Omdat het zo'n grote merge was, dacht iemand dat er door de merge een bug was ontstaan. Ik ben deze op gaan pakken en kwam er maar niet uit met waar deze bug vandaan kwam. Achteraf bleek dit helemaal geen bug te zijn maar juist een feature, een bewuste keuze van ons met een apart stuk code die dit hoort te doen. De verwarring ontstond vooral omdat deze zogenaamde "bug" voor de merge nog niet voorkwam, ook op mijn versie niet. 
Zie kopje "Vaker mergen" voor vervolg.

### Wat ga je komende tijd proberen te verbeteren?

#### Eerst kijken naar taken voordat ik PoC kies
(Dit is de laatste week dat PoC's uitgevoerd worden binnen dit project, onderstaande tekst beschrijft dus meer hoe ik het zou verbeteren dan wat ik ga verbeteren.)

Ik ben uiteindelijk binnen een paar minuten op alletwee de ideeën gekomen voor de PoC's. Dit heb ik heel eenvoudig gedaan: ik heb gekeken welke taken/use cases er open stonden en ben gaan bedenken hoe de featurues verbeterd kunnen worden of wat er besloten is dat erin moest komen. Vanuit hieruit ben ik vrij snel op het idee gekomen om bovenstaande onderwerpen uit te voeren als PoC. Voortaan is het verstandiger om de takenlijst/use cases erbij te pakken, kijken wat er open staat en welke PoC's daarop aansluiten.

#### Vaker mergen
De oplossing hiervoor is vaker mergen. We hebben ongeveer 2 weken werk vanuit twee verschillende branches in een keer samengevoegd. Dit leverde een dag werk op aan oplossen van merge conflicts, bugs oplossen en opnieuw koppelen van UI aan de code. Mij lijkt het handig als er een development branch komt waar de meest actuele code op komt te staan. Telkens als een taak af is, moet deze door de persoon die deze taak heeft uitgevoerd gemerged worden met de development branch. Momenteel hebben we namelijk alleen maar losse feature branches en een master branch.
