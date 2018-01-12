# Feedback in Swift
Bronnen: 
https://developer.apple.com/documentation/avfoundation/avaudioplayer
https://stackoverflow.com/questions/31126124/using-existing-system-sounds-in-ios-app-swift
https://github.com/TUNER88/iOSSystemSoundsLibrary
https://stackoverflow.com/questions/32036146/how-to-play-a-sound-using-swift
https://www.youtube.com/watch?v=QozQ3RYlBSA
https://www.youtube.com/audiolibrary/soundeffects
https://www.youtube.com/watch?v=dqad3XuMwHI
https://stackoverflow.com/questions/26455880/how-to-make-iphone-vibrate-using-swift


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

De standaard systeemgeluiden van Apple zijn leuk, maar ik zou graag een eigen geluid willen importeren. Hiervoor heb ik de op een na onderste Youtube link gebruikt om een gratis audiogeluid vandaan te downloaden (ik koos voor het bestand "Basketball Bounce and Roll"). Dit bestand is in .mp3 formaat, daarom was ik benieuwd of dit ging werken in Xcode. Na even Googelen kwam ik erachter dat AVFoundation, hetgeen dat het audiovisuele regelt, heel veel veschillende audioformaten ondersteund, waaronder .mp3. .Wav schijnt het beste te zijn voor korte geluiden gezien het weinig CPU-usage heeft en een hoge afspeelkwaliteit. Mocht ik dus een app maken, dan zal ik zeer waarschijnlijk de .mp3 bestanden omzetten naar .wav. Voor deze PoC is .mp3 goed genoeg. 

Om het werkende te krijgen, sleepte ik het geluidsbestand naar de assets toe en paste ik de code van "how to play a sound using Swift" toe (zie Stackoverflow bron). Uiteraard paste ik het aan zodat het toepasbaar was op mijn applicatie en maakte ik een knop aan die het custom sound moest afspelen. Bij het testen, bleek de code niet te werken. Dit kwam zeer waarschijnlijk omdat ik de asset naam had veranderd gezien deze te lang was, maar de bestandsnaam hetzelfde was gebleven. Om deze reden verwijderde ik de asset weer, gaf ik het origineel een andere naam en stopte het weer in het project. Ook dit werkte niet en het bleek dat de asset niet kon worden gevonden door Xcode. Om die reden ben ik de onderstende Youtube tutorial gaan gebruiken en kwam ik erachter dat de file zelf in het project moet staan, niet in de assets.

Na een gedeelte van de tutorial te volgen, is het gelukt om een eigen geluid toe te voegen. Ook heb ik hierbij meteen de pauzeerknop toegevoegd. Cool!

Nu over naar het volgende feedback mechanisme: vibratie. Laten we eens kijken voor hoe lang ik de telefoon kan laten trillen. Na even Googelen, kwam ik erachter dat het vibreren van de telefoon eigenlijk gewoon een geluid is (zie laatste Stackoverflow link). Na een knop aangemaakt te hebben voor trilling en de code erin gezet te hebben, ging ik testen. Ik runde de code op mijn simulator en.... niks. Oja, een simulator kan niet trillen. Ik moet hierbij daarom maar geloven dat dit werkt op een fysiek apparaat gezien ik geen iOS device bezit. Eventueel kan er meerdere keren achter elkaar gevibreerd worden door middel van een sleep ertussen te plaatsen. De maximale tijd dat het device getrild kan worden is 1 seconde per keer. 

BONUS:

Mij leek het interessant om te kijken hoe de zaklamp in elkaar steekt in Swift. Ik ben daarom gaan kijken naar bestaande code, en kwam erachter dat dit ook niet zo moeilijk is. Eerst moet gekeken worden of het apparaat een zaklamp heeft, zo ja dan moet gekeken worden wat de staat van de zaklamp is: aan of uit? Als hij aan is, moet hij uit worden gezet, is hij uit dan moet hij aan worden gezet. En dat is alles! Wel waren er heel veel wijzigingen gedaan vergeleken met hetgeen wat er op internet te vinden viel wat betreft naamgeving van methodes. Helaas kon ik dit ook niet testen op een fysiek device, dus zal ik dit ook moeten testen op een fysiek device als ik van plan ben hiermee een functie te maken.

## Conclusie
Het is zeker mogelijk om de functies van de telefoon te gebruiken om de gebruiker meer feedback te geven over wat er gebeurt en een betere gebruikerservaring te bieden. Opvallend is dat de ene sensor veel makkelijker te gebruiken is dan de andere. Ik denk dat geluid zeker een verrijking is voor onze app, vooral bij het gedeelte waarin beloningen als een soort cadeau wordt opengemaakt. Het trillen kan bijvoorbeeld worden gebruikt bij het schudden van het cadeau. Er zijn dus goede toepassingen binnen de Recrowd app op het gebied van feedback door middel van verschillende telefoonfuncties.