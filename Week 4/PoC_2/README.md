# MongoDB
Bronnen:
https://www.codeschool.com/courses/the-magical-marvels-of-mongodb

## Hypothese
Voor het tweede PoC wil ik gaan kijken naar database technieken. Een van die technieken, die mij vrij onbekend zijn, is MongoDB - of om precies te zijn: document-georiënteerd dataopslag. Document-georiënteerd dataopslag is wat anders dan de bekende relational database. 
Omdat het waarschijnlijk is dat er uiteindelijk iets van een database geïmplementeerd wordt voor het uiteindelijke systeem, lijkt mij het interessant MongoDB te onderzoeken.

Daarom luidt de hypothese als volgt:
Kan je document-georiënteerde databases implementeren als je bekend bent met relationele databases?

## Testopzet
Voor dit onderzoek pak ik het een keer anders aan: ik doe (een gedeelte van) een Codeschool course en reflecteer daarna hoeveel MongoDB op bijvoorbeeld Microsoft SQL Server lijkt. De link van de course valt bij de bronnen te vinden.
Gezien er te weinig tijd is alle levels te doen van de Codeschool course, zal ik gaan kijken naar levels 1, 2 en 3.

## Resultaat
In het eerste level heb ik geleerd dat MongoDB een NoSQL-database is, dat hij open source is en dat NoSQL goed werkt voor ongesorteerde data. 
Ook heb ik gezien dat er al een aantal verschillen zijn tussen SQL en NoSQL, waaronder andere naamgeving. Ik heb gezien dat de models van een collection kunnen verschillen. De data staat als een key-value pair opgeslagen en wordt eigenlijk als soort van JSON in de database ge-insert. Tijdens de eerste les ben ik erachter gekomen dat het eigenlijk class/OO-achtig werkt en dat een object rechtstreeks in de "insert" wordt aangemaakt. Kennelijk kan een object worden meegegeven met waardes om meerdere records (die overeenkomen) te kunnen vinden. In de course werdt verteld dat MongoDB gebruik maakt van BSON, anders dan het eerder door mij veronderstelde JSON.
Wat ik raar vind, is dat maanden binnen MongoDB vanaf 0 beginnen, maar de dagen en jaartallen niet. Arrays kunnen daarentegen eenvoudig worden toegevoegd door middel van "[]". Validatie in MongoDB vind ik daarentegen minder mooi gezien er geen specifieke types worden geset in een collection. Wat ik ook nog onlogisch vindt is dat er voor iedere query "db" moet worden gezet. Dit lijkt mij een beetje overbodig.

![Afbeelding 1](https://github.com/BillyJean1/Colin-van-der-Geld/blob/master/Week%204/PoC_2/level1.PNG?raw=true)

En dat is 1! Snel verder met het volgende level: "Mystic modifications".

In het tweede level ga ik documenten verwijderen en bewerken. Dit lijkt erg op het "finden", afgezien van het "update operator" gedeelte. Kennelijk werkt deze update alleen voor het eerste gematchte document. De returnwaardes (writeResult) geeft genoeg informatie om te kunnen zien of de query goed is gegaan. Kennelijk is het belangrijk de update operator toe te voegen (indien gewenst), gezien anders het huidige document wordt overschreven. Met de multi operator kan er gekozen worden of er maar een of alle gematchte documenten moeten worden bewerkt. Ook bestaat er een increment (inc) operator die ervoor zorgt dat de waarde wordt opgehoogd.
Ook kan er met een update een nieuw document worden aangemaakt indien deze nog niet bestaat. 

Eigenlijk is het eerste deel van de update-query een find-query en is het tweede deel het gedeelte dat aangepast kan worden. Als derde kunnen nog extra gegevens worden ingevuld over op wat voor manier dit gedaan moet worden. Het updaten en verwijderen van een document vind ik niet heel veel voorstellen, dit valt vrij goed te doen.
Nieuwe veldnamen zetten vind ik daarentegen een mooie en opvallende functie. In arrays kan eenvoudig worden genavigeerd door middel van de ".n" (waar n een geheel getal is) te gebruiken, het lijkt een beetje op de "[n]" die ik ken vanuit Java. Het gedeelte "positional operator" vind ik best wel mooi. Het duurde even voordat ik doorhad wat het precies was, maar na even oefenen vond ik het een erg mooie functie

![Afbeelding 2](https://github.com/BillyJean1/Colin-van-der-Geld/blob/master/Week%204/PoC_2/level2.PNG?raw=true)

Two down, one to go! Het volgende level heet "Materializing potions". Hierbij wordt gekeken naar filters.

Er zijn een aantal verschillende comparison operators die ik kan gebruiken. Dit zijn waardes als bijvoorbeeld "groter dan", "kleiner dan" en "niet gelijk aan". Deze kunnen in de find query meegegeven worden. Een "between"-query van SQL kan na worden gemaakt door een "$gt" (greater than) en "$lt" (less than) te combineren. Ook kan er met elementMatch worden gezocht op een array, of een van deze waardes binnen de geselecteerde range valt. Deze operators vindt ik lastiger te schrijven dan in SQL, waar een "WHERE"-statement wordt meegegeven en door middel van bijvoorbeeld "<", ">" en "!=" kan worden gefilterd. Ik heb zo'n vermoeden dat als ik deze operators moet gaan gebruiken, het de eerste paar keer Googelen wordt. Het aantal curly braces bij een element match vind ik ook erg veel. Tot nu toe vind ik dit een hele andere manier van denken.

Nu ga ik de "SELECT"-query leren. Dit kan eenvoudig gedaan worden door bepaalde waardes op true of false te zetten in de query. Bij een find wordt kennelijk maximaal maar 20 records meegegeven. Door middel van "it" (van iterate) te typen, worden de volgende 20 records getoond. Ook kan er na een find een ".count()" worden toegevoegd. Hierdoor worden het aantal gevonden records weergegeven zonder deze daadwerkelijk op te halen. Ook kan er gebruik gemaakt worden van ".sort()", waarbij een veld kan worden meegegeven om gesorteerd op te worden. Kennelijk kunnenn deze zogehete "cursor methods" aan elkaar worden gechained (currying?). Pretty cool!
Uiteindelijk heb ik ook dit level voltooid. 

![Afbeelding 3](https://github.com/BillyJean1/Colin-van-der-Geld/blob/master/Week%204/PoC_2/level3.PNG?raw=true)

## Conclusie
Nu ik ervaring opgedaan heb met MongoDB, kan ik een oordeel geven of dit eenvoudig te leren is of enigzins op relational databases lijkt.
Het antwoord op de hypothese is daarom als volgt:

**Nee, het is een te groot verschil tussen relational databases en document-oriented databases om met de kennis van SQL een NoSQL database te maken.**
Hierbij moet ik wel zeggen dat het erg goed te doen is als diegene ervaring heeft met OO-programmeren (wat binnen de projectgroep het geval is). Ik denk daarom dat document-georiënteerde databases zoals bijvoorbeeld MongoDB eenvoudig door personen uit mijn projectgroep gemaakt kunnen worden.
