# In-app purchases (Swift)
Bronnen: 
https://www.youtube.com/watch?v=zRrs7O5yjKI
https://developer.apple.com/in-app-purchase/

## Hypothese
Microtransacties zijn tegenwoordig een miljardenindustrie, kijk bijvoorbeeld naar grote bedrijven als Apple en EA die miljarden op jaarbasis verdienen puur aan in-app/in-game purchases. Binnen de Recrowd app kan dit ook worden toegepast door middel van bijvoorbeeld het kopen van fast-lane tickets. Ikzelf denk dat de app zich loont voor microtransacties en wil daarom gaan kijken naar in-app purchases voor Swift. 

Daarom luidt de hypothese als volgt:
**Het is mogelijk om in-app purchases te kunnen toepassen in Swift.**


## Testopzet
Als eerste ga ik de video kijken en kijk ik of het me lukt om het gedeelte van de aankopen werkende te krijgen. Hierbij ga ik niet echt een rekening koppelen en ga ik ook niet de app in de app-store zetten. Om deze reden ben ik benieuwd of ik het aankoop gedeelte kan "mocken" (doen alsof). Mocht dit niet lukken, dan ga ik uitzoeken hoe dit zou moeten werken en schrijf ik een soort handleiding. Code kan ik wel alvast schrijven en in de live-applicatie stoppen mocht het zo ver komen.

## Resultaat
Allereerst begon ik met het registreren van de app binnen de Apple developer console. Na het doorlopen van de stappen binnen de console, moest ik naar Itunes connect gaan om het registreren van de app te voltooien. Toen ik naar Itunes connect wilde gaan, bleek ik deze niet te kunnen vinden binnen de gegeven pagina uit de tutorial. Het bleek dat ik me er uiteindelijk voor moest registreren en jaarlijks 100 euro moest betalen om ervoor te zorgen dat ik een geregistreerd developer werd. Omdat ik ook niet met Itunes connect kon verbinden via de HAN organisatie, kon ik de app niet volledig registreren en ging ik proberen het aan de praat te krijgen zonder te registreren.

Uit de tutorial blijkt dat er een aantal verschillende types aankopen kunnen worden gedaan: 
- verbruikbare items
Items die door de gebruiker verbruikt kunnen worden en opnieuw gekocht kunnen worden.

- niet verbruikbare items
Items die door de gebruiker niet verbruikt kunnen worden, items die blijvend zijn.

- Automatisch verlengt abbonoment
Abbonomenten die automatisch verlengt worden door de app zoals bijvoorbeeld een Netflix abbonoment.

- Niet automatisch verlengt abbonoment
Een abbonoment die niet automatisch verlengt wordt zoals bijvoorbeeld een catalogus.

In de voorbeeld wordt een verbruikbaar items gemaakt. Hieraan wordt een titel, id en prijs meegegeven. Ook moeten deze aankopen worden gereviewd door Apple zelf, hierbij moet een foto en text worden meegegeven aan de request. Ook wordt een niet verbruikbaar item toegevoegd, dit is in de vorm van een functie die de advertenties weghaalt.

Gezien het registreren niet lukte, weet ik niet zeker in hoeverre de aankopen gedaan kunnen worden. Wel programmeer ik mee met de tutorial (ondanks dat de app hierdoor wellicht niet compileert), zodat ik de code klaar heb staan wanneer dit toegepast moet worden. 

Ik begin met het maken van buttons en voeg actions toe aan deze knoppen. Ook maak ik labels waar ik vervolgens ook outlets van maak. Daarna schrijf ik de functies die achter de aankopen zitten en maak ik een lijst aan van SKProducts. Dit is een lijst van koopbare items. Daarna schrijf ik een functie die alle in-app purchase items voor mij ophaalt vanuit de apple servers. Daarna schrijf ik een functie die ervoor zorgt dat als een aankoop gedaan is, de juiste code wordt uitgevoerd. Daarna maakte ik een aantal cases die ervoor moeten zorgen dat als er iets mis gaat, dit ook opgevangen wordt. Als dat gedaan is, schrijf ik een stuk code die ervoor moet zorgen dat de knoppen pas enabled zijn op het moment dat de koopbare items zijn geladen.


## Conclusie


