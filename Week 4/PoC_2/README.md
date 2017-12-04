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

## Conclusie
