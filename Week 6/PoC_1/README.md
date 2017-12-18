# Firebase in Swift
Bronnen: 
https://firebase.google.com/docs/ios/setup
https://www.youtube.com/watch?v=joVi3thZOqc
https://firebase.google.com/docs/database/ios/read-and-write

## Hypothese
Gezien we zeer waarschijnlijk gaan werken met Firebase en dit nieuw voor mij is,leek het mij verstandig om hier een proof of concept voor te maken. We zullen dit gaan gebruiken in combinatie met Swift, daarom zal deze uitwerking toegespitst op Swift zijn. Hierbij zal voornamelijk gekeken worden naar het database gedeelte. 

Daarom luidt de hypothese als volgt:
**Het is mogelijk om Firebase te gebruiken bij een Swift project en dit toe te passen op de ReCrowd applicatie.**


## Testopzet
Ik zal allereerst een leeg project aanmaken en proberen een connectie te leggen met de Firebase database. Hierbij zal ik gaan proberen om data op te slaan, data te updaten, data te lezen en data te verwijderen. Bij het aanmaken van dit project zal ik gebruik maken van de Firebas handleiding van Google.

Wanneer het mij lukt met een leeg project te werken met Firebase, zal ik dit vervolgens gaan proberen toe te passen op de ReCrowd applicatie. Hierbij moet ervoor gezorgd worden dat als een evenement bezoeker incheckt, de locatie en overige gegevens worden opgeslagen in de database. 


## Resultaat
Ik ben begonnen met het aanmaken van een nieuw Xcode project. Ook heb ik via de Firebase console een nieuwe app aangemaakt zoals beschreven stond in de handleiding. Toen moest ik het een en ander aan gegevens invullen (bundle-id, appnaam etc.). Ik kreeg een aparte Firebase '.plist' die ik toe moest voegen aan mijn bestaande project. 
Toen moest ik de SDK toevoegen aan de hand van een Podfile. Google gaf een aantal commands die uitgevoerd moesten worden, waardoor ik Firebase eenvoudig kon toevoegen aan mijn project. Uiteindelijk kreeg ik vanuit de documentatie initialisatiecode die in de Appdelegate kon worden gestopt, wat ervoor zorgde dat Firebase overal bruikbaar was in mijn applicatie.

Toen ik al deze stappen had doorlopen, zag ik een tal van mogelijkheden binnen Firebase. Omdat ik met een database wilde werken, koos ik voor de optie "database". Al snel kwam ik erachter dat dit een NoSQL database is. Ik ben een tutorial via Youtube gaan kijken (zie tweede bron) om erachter te komen hoe dit precies werkt. Ik voegde Firebase/Database toe aan mijn Podfile en deed nog een install. Toen ik een reference naar de database wilde maken, kwam ik erachter dat de tutorial die ik volgde, verouderd was een het een en ander was gerenamed. Ook was FirebaseDatabase benodigd, anders draaide de applicatie niet. 

Vervolgens ben ik gaan kijken naar de derder bron (hoe er met data gewerkt kon worden). Hierbij maakte ik zelf een button aan waar, indien erop gelikt wordt, er data wordt toegevoegd aan mijn Users tabel. Hierbij was het id "1" en was de gebruikersnaam "colin123". Voordat ik dit verzoek verstuurde, zorgde ik ervoor dat ik zeker wist dat mijn database leeg was, en dat was hij:
[afbeelding 1]

Ik klikte op de knop en... een error:
"[Firebase/Database][I-RDB038012] setValue: or removeValue: at /users/1 failed: permission_denied"
Oke, kennelijk zal ik dus iets moeten gaan doen met authenticatie. Na de regels aangepast te hebben van de database, lukte het mij een record toe te voegen aan de database. Laten we er nog een aanmaken en kijken of ik vervolgens alle users kan bekijken. Na even stoeien heb ik dit uiteindelijk voor elkaar gekregen. Ik heb deze tekst uiteindelijk in een label gezet. Door de code van SingleEvent om te zetten (een eenmalige read) naar een observe, werd de waarde van het label uiteindelijk ook bijgewerkt wanneer de waarde in de database aangepast werd. Uiteindelijk kon ik door middel van het schrijven van een update functie de waarde van "colin123" aanpassen naar "nietColin". Het schrijven van de remove functie leek erg op het schrijven van de update functie, waardoor dit vrij eenvoudig ging.

Uiteindelijk heb ik geprobeerd dit toe te passen op de ReCrowd applicatie, en met succes! Het was uiteindelijk gelukt om een event in de database te zetten vanuit een object. Deze valt te vinden in de FirebaseService class. Ik denk dat dit als goede eerste opzet kan dienen voor het project.


## Conclusie
Het is zeker mogelijk om Firebase te gebruiken bij een Swift project. Het is erg handig om Firebase als Database te gebruiken gezien er observers in zitten die je (indien gewenst) de meest recente data toont door bijvoorbeeld zelf de labels te updaten. Firebase is ook erg handig om gebruik van de maken voor de ReCrowd applicatie, dit gezien er snel, veel en live data moet worden bijgehouden zoals bijvoorbeeld de locaties van de gebruikers. Ook bied Google een duidelijke uitleg hiervoor, wat ervoor zorgt dat we in een korte periode tijd er goed mee kunnen werken.
