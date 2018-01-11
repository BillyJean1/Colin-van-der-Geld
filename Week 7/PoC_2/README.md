# Feedback in Swift
Bronnen: 
https://developer.apple.com/documentation/avfoundation/avaudioplayer
https://stackoverflow.com/questions/31126124/using-existing-system-sounds-in-ios-app-swift
https://github.com/TUNER88/iOSSystemSoundsLibrary
https://stackoverflow.com/questions/32036146/how-to-play-a-sound-using-swift
https://www.youtube.com/watch?v=QozQ3RYlBSA

## Hypothese
Om de gebruiker een betere gebruikerservaring te kunnen bieden, is het belangrijk de gebruiker op verschillende manieren feedback te geven. Manieren die toegepast kunnen worden (die nu nog niet benut worden binnen de app) zijn bijvoorbeeld het trillen van de telefoon of het gebruik maken van geluiden. Ik denk dat hier een aantal kansen liggen voor de app, zoals bijvoorbeeld feedbackgeluid wanneer een gebruiker een "beloning verzilvert" of trilling wanneer er een aanbeveling pop-up komt in de app. 

Daarom luidt de hypothese als volgt:
**Het is mogelijk om de gebruiker binnen Swift feedback te geven door middel van trilling en geluid.**


## Testopzet
Allereerst ga ik proberen om ervoor te zorgen dat ik een geluidje kan afspelen op het moment dat een bepaalde knop wordt geklikt in de app. Ik kijk hierbij of ik gebruik kan maken van de iOS standaard geluiden en ga daarna proberen of ik een eigen geluid kan importeren en gebruiken. Als laatste zal ik proberen om het toestel te laten trillen. 

## Resultaat
Ik ben begonnen met het aanmaken van een nieuw project met Xcode. Daarna heb ik een button toegevoegd waar, als er op geklikt wordt, er een geluidje hoort af te spelen. Een andere button zou ervoor moeten zorgen dat het geluidje een aantal keer herhaalt. Nadat ik deze had gekoppeld aan mijn viewcontroller, werd het tijd dat de werking ervan werd uitgeprogrammeerd. Uit de Apple documentatie blijkt dat ik AVFoundation nodig heb, daarom importeer ik deze. 

Op internet had ik een lijst gevonden met standaard (systeem)geluiden en welke code bij ieder van deze hoort. Het schijnt dus zo te zijn dat standaard systeemgeluiden eenvoudig kunnen worden afgespeeld door een ID mee te geven en vervolgens deze af te laten spelen. Ik probeerde de code uit vanuit de tweede bron, koos een leuk geluidje uit via de derde bron en plaatste deze in de applicatie. Om ervoor te kunnen zorgen dat het geluidje nog een keer afspeelde (loopte), leek het mij handig om een completion block voor het geluid te schrijven en daar wat logica in te plaatsen.

Toen ik de completion block schreef, kwam ik erachter dat ik moeilijk kon bijhouden hoe vaak de loop al was gebeurt gezien ik te maken heb met pointers die mogelijk kunnen verdwijnen en ik asynchroon programmeer. Ik kon in de completion block geen eerder aangemaakte variabelen gebruiken en kon ook geen gebruikmaken van "weak self". Ook heb ik geprobeerd de lengte van de file te kunnen achterhalen, zodat ik iedere x aantal seconden het geluid kan herhalen. Dit is helaas ook niet gelukt. 

Ik ben daarom gaan proberen gebruik te maken van een AVAudioPlayer, hierbij kon namelijk wel gebruik worden gemaakt van een loop-functie. Jammergenoeg werkte dit ook niet, gezien de url niet gepakt werd door Xcode. Dit zou een leuke functie zijn geweest voor bijvoorbeeld het geven van een tromgeroffel bij het openen van een beloning. 

## Conclusie


