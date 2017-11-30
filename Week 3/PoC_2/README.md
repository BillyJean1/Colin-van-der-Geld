# Titel
Bronnen:
https://ionicframework.com/docs/native/google-analytics/
https://www.thepolyglotdeveloper.com/2014/06/using-google-analytics-ionicframework/
https://ionicframework.com/docs/native/firebase/

## Hypothese
Als eenmaal je app draaiende is, wil je natuurlijk informatie krijgen over bijvoorbeeld welke aspecten van de applicatie het meest gebruikt worden en hoeveel gebruikers er actief zijn. Dit wil je doen om inzichten te krijgen in het gebruik van je app en verbeterpunten te vinden. Gezien Ionic apps webapps zijn, leek het mij mogelijk om Google Analytics te implementeren op een app, om inzichten te krijgen van bijvoorbeeld de gebruikersflow en het aantal actieve gebruikers. Ik vraag me alleen af of het mogelijk is om dit ook lokaal te gaan testen.

Daarom luidt de hypothese als volgt:
Is het mogelijk om Google Analytics te implementeren op een Ionic WebApp?

## Testopzet
Als basis zal ik een tabbed Ionic project starten en zal ik proberen of ik erachter kan komen in welk tabblad ik me bevind via Google Analytics. 
Ik zal daarvoor ook de tweede bron - de tutorial - volgen en bekijken welke data ik ermee kan achterhalen en op wat voor manier dit inzetbaar is voor ons project.

## Resultaat
Allereerst maakte ik een nieuw tabbed Ionic project aan en voegde ik het Android platform toe. Ik maakte op mijn analytics pagina een nieuw project aan van het type "mobiele app". Het analytics gedeelte was even uitzoeken, gezien Google de analytics pagina heeft omgegooid sinds de laatste keer dat ik ermee gewerkt had (dat is iets van 1 jaar terug) en ik niks meer terug kon vinden. 
[Afbeelding 1]

Nu wil ik ervoor zorgen dat ik kan zien op welke pagina een gebruik terrecht is gekomen. Hiervoor maakte ik voor het Google Analytics een service zodat ik die op elke page kon gebruiken. Ik maakte gebruik van injection en kan did nu op iedere pagina toepassen in de ionViewDidEnter:
```typescript
setTrackViewText(text:string){
    this.ga.trackView(text);
}
```
Het duurt even (ongeveer 30 seconden) voordat het op de analytics page wordt weergegeven. Een nadeel op dit moment is dat er te weinig data is en dat Google Analytics nog niet alle gegevens dus kan tonen, maar ik heb gevonden dat er erg mooie dingen getoond worden zoals bijvoorbeeld:
* Actieve gebruikers
* Besturingssysteem
* Versies
* Meest gekozen pagina 

Analytics implementeren lukt dus, en je krijgt er best leuke data mee waarmee je applicatie verbeterd kan worden, maar er bestaat ook nog zoiets als firebase. Dit is ook van Google, maar schijn je nog meer data mee te kunnen verkrijgen. Ik ben van plan dit werkende te gaan krijgen.
Ik heb hiervoor al een nieuw project aangemaakt, gekeken naar wat je allemaal met Firebase kan en de Ionic Cordova plugin geinstalleerd. Toen kwam ik erachter dat ik over de tijd heen was van het onderzoeken en moest gaan beginnen met documenteren. Ik wil daarom in week 4 verder gaan kijken naar de mogelijkheden ervan en hoe dit geimplementeerd kan worden. Ook moet ik dan uitzoeken wat het verschil is tussen Firebase en Firebase analytics. 

## Conclusie
Het is mogelijk om Google Analytics te implementeren op een Ionic WebApp, sterker nog, dit is vrij eenvoudig te doen. Er moet wel voor iedere pagina rekening gehouden worden met het setten van een juiste pagina-titel, zodat er eenvoudig teruggevonden kan worden om welke pagina het precies gaat.

