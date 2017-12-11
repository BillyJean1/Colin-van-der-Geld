# Apple maps
Bronnen: 

https://developer.apple.com/maps/ 
Voornamelijk: https://developer.apple.com/library/content/documentation/IDEs/Conceptual/AppDistributionGuide/AddingCapabilities/AddingCapabilities.html#//apple_ref/doc/uid/TP40012582-CH26-SW9

https://www.youtube.com/watch?v=Idzn65L4p-A

https://stackoverflow.com/questions/41800302/how-to-set-custom-pin-image-in-mapview-swift-ios

https://stackoverflow.com/questions/36217710/how-to-launch-maps-app-and-start-navigation

## Hypothese
Vorige PoC heb ik gekeken naar locaties, maar het zou leuk zijn als ik deze op een kaart kan weergeven. Ook ben ik benieuwd wat er allemaal mogelijk is binnen iOS op het gebied van kaarten. Ik weet dat Google Maps dingen ondersteunen als custom icons, informatie en navigeren naar een bepaald punt (te voet). Ik wil dus gaan kijken naar hoe moeilijk het is kaarten werkende te krijgen binnen iOS (Swift), kijken of het mogelijk is thumbnails en custom icons toe te voegen aan de map en of er mogelijk (geïntegreerde) navigatie kan worden toegevoegd aan de map, met eventueel de optie om te voet te gaan (de meeste evenementbezoekers zullen te voet willen navigeren). Deze functionaliteiten kunnen handig zijn als we op een bepaalde plek op de kaart een aanbeveling doen voor onze app en de gebruiker erheen wilt navigeren. Het zou bijvoorbeeld leuk zijn een reuzenrad als icoon in te stellen en informatie over deze attractie op het kaartje weer te kunnen geven. 

Daarom luidt de hypothese als volgt:
** Is het mogelijk custom icons, informatie en (geïntegreerde) navigatie te tonen binnen Apple Maps? **

## Testopzet
Allereerst zal ik beginnen om te kijken of ik mijn eigen locatie kan weergeven op de Map zodat ik een basis heb om aan te werken. Vervolgens zal ik een marker op de kaart zetten op een bepaalde coördinaat op de kaart. Hieraan ga ik proberen informatie te koppelen die getoond wordt als er bijvoorbeeld op geklikt wordt. 
Daarna ga ik kijken wat de mogelijkheden zijn betreft het veranderen van de marker naar een bepaald icoontje. 
Als laatste zal ik gaan proberen om routebeschrijving te krijgen naar een bepaald punt op de kaart vanaf mijn huidige locatie. Ik zal uiteindelijk de eerdere uitwerking van PoC 1 gebruiken als basis voor het bepalen van mijn locatie. 

Ik zal daarvoor eerst de documentatie moeten lezen die vanuit Apple geleverd is (de eerste bron). Vervolgens zal ik de Youtube tutorial volgen en eventueel daarop aanvullen. Ik heb iets gevonden van Stackoverflow wat mogelijk werkt voor het vervangen van de location pin van Maps, dit zal ik ook uit gaan proberen. Als laatste zal ik gaan kijken naar hoe ik navigeer naar een bepaald punt (openen navigatie) en kijk ik of het daarbij mogelijk is te navigeren te voet (in plaats van een auto-route). Mocht er tijd over zijn dan kijk ik of het mogelijk is de routebeschrijving geïntegreerd te krijgen (in plaats van de Maps app te openen).

## Resultaat
Allereerst ben ik in de Apple documentatie gaan duiken, daar kwam ik op een configuration guide terecht van Apple zelf. Ik zette allereerst de Maps functionaliteit in bij de capabilities pagina in Xcode en zette pedestrian aan (gezien ik de app wil testen met voetgangers). Voor routebeschrijving moet ik me aanmelden bij Apple, maar heb een vermoeden dat het hierbij gaat om routebeschrijving in de vorm van tekst, daarom kijk ik eerst even verder. 

Ik volg de Youtube tutorial. Hierbij zag ik dat er iets bestaat als een "mapkit view". Deze zette ik in mijn view en maakte hem mooi groot en paste de constraints aan. Ik maak een outlet van de map naar mijn viewController en haalde de inhoud van de locatie-update weg. Hier wil ik (anders dan in de tutorial) de locatie van de map weergeven op de locatie van waar ik me op dat moment bevindt. Hiervoor moest ik totaal andere code gebruiken dan in de tutorial gegeven werd, waarschijnlijk gezien de tutorial een verouderde versie betreft. Toen moest ik een titel en subtitle toevoegen aan de annotation, ik heb dus een vermoeden dat hetgeen wat ik "informatie" noem, een annotation heet. Ik voer de code uit op mijn apparaat en krijg als ik er op klik het volgende te zien:
[Afbeelding 1]

Het is dus inderdaag hetgeen wat ik verwacht had dat ik kreeg. Annotations en markers lukken dus, ik zal later proberen een custom icon daaraan toe te voegen. 

Ik ga verder met de tutorial en zorg dat de app automatisch focust op het punt dat ik eerder geselecteerd heb op de kaart (dit zou bijvoorbeeld een attractie kunnen zijn). Vervolgens zoom ik ver in op de gekozen locatie, dit kan handig zijn als je bijvoorbeeld de wegen ernaartoe wilt weten.

Nu wordt het tijd om te kijken of ik een custom icon kan toevoegen als pin in Apple Maps. Ik Googelde een mooi icoontje van een attractie en volgde de tutorial van de derde bron. Ik verplaatse het setten van de delegate naar de viewDidLoad toe van de controller. 

## Conclusie