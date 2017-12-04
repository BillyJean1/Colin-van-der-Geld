# ASP.NET MVC 5
Bronnen: 
https://app.pluralsight.com/paths/skills/mvc5

## Hypothese
De opdrachtgever zei in het begin van het project dat bepaalde aspecten gemanaged moesten worden. Wellicht wordt dit gedaan door middel van een app, maar het kan zomaar zijn dat dit beheerssysteem in de vorm van een website wordt gedaan. Omdat ik nog niet erg bekend ben met ASP.NET en er steeds meer over hoor, ben ik van plan uit te gaan zoeken hoe bruikbaar het is om hiermee een beheersapplicatie te maken. Gezien er bij een beheersapplicatie vaak CRUD-acties worden uitgevoerd en er meestal losse elementen gemanaged moeten worden, heb ik ervoor gekozen te gaan kijken naar de MVC variant van ASP.NET/.

Daarom luidt de hypothese als volgt:
Is het mogelijk om een beheersapplicatie te maken met ASP.NET MVC? 

## Testopzet
Voor dit onderzoek zal ik gaan werken met Microsoft Visual Studio, dit gezien ASP.NET een Microsoft technologie is, en Visual Studio dit ook is. Ik zal hierbij gebruik maken van de Pluralsight course "ASP.NET MVC 5", hierbij zal ik de volgende video's bekijken:
- A Comparison of Microsoft Web Technologies: 
	- 5. Understanding How MVC Works
- ASP.NET MVC 5 Fundamentals:
	- 1. Introduction and Prerequisites
	- 2. OWIN and Katana

Ik had eigenlijk de volgende onderdelen ook willen doen:
- ASP.NET MVC 5 Fundamentals:
	- 3. Identity and Security
	- 5. WebAPI 2
Dit bleek later te veel tijd te kosten en ben er daardoor niet aan toegekomen.

Ik zal de gedeeltes die relevant zijn mee-programmeren.

## Resultaat
Uit het eerste deel van de course (understanding how MVC Works) is gebleken dat het MVC gedeelte vooral gebruik wordt voor de "serpeartion of concerns". Ook is gebleken dat ASP.NET MVC een erg "mature" is en dat er in de toekomst in geïnvesteerd wordt door Microsoft. 
Allereerst begin ik met het aanmaken van een nieuw project. Op dat moment kwam ik erachter dat ik het web pakket miste van Microsoft Visual Studio. Toen ik dit wilde installeren, ging het gehele programma een update draaien, dit duurde helaas enige tijd. Vervolgens kwam ik erachter dat mijn community edition van Visual Studio het ASP.NET MVC framework niet ondersteund... Grrr, erg vervelend. Voorheen heb ik gebruik gemaakt van de Professional versie van Visual Studio, maar gezien dit een trial was, werkt deze nu niet meer. Ik heb vervolgens geporbeerd nog een Dreamspark license te verkrijgen voor de professional versie, maar dit kreeg ik ook niet voor elkaar gezien de site niet werkte.
Even later kwam ik erachter dat de nieuwste versie (2017) dit wel ondersteunt, daarom ben ik deze op de achtergrond gaan installeren terwijl ik de course bekeek, in de hoop dat ik alsnog wat mee kon programmeren richting het einde van de course.
Uiteindelijk kwam ik erachter dat mijn versie van Visual Studio alleen de oude versie van MVC ondersteund (versie 4) en dat dit een course is voor versie 5. Dit kan dus mogelijk impact hebben op het uiteindelijke resultaat.

Ik zal dus de course volgen, mijn bevindingen rapporteren en op basis van deze bevindingen in moeten schatten hoe bruikbaar dit is.

In de eerste course zie ik dat het MVC principe hetzelfde werkt als dat ik gewend ben van CakePHP3. Het heeft ongeveer ook dezelfde folderstructuur. Viewbag is daarentegen een interessant principe, het kan attributen bevatten die meegegeven kunnen worden aan de view. Ook zie ik dat views eenvoudig aangemaakt kunnen worden en eenvoudig gekoppeld kunnen worden. Models kunnen ook erg eenvoudig worden toegevoegd, waarna een view wordt generate. Ik ben erg onder de indruk hoe makkelijk de views gegenereerd kunnen worden en hoe het rekening houdt met de model. Routing is een stuk eenvoudiger dan dat ik gewend ben van CakePHP.

Vervolgens ging ik de tweede course kijken. Ik heb de video "upgrading from 4 to 5" overgeslagen, dit gezien ik niet bekend ben met versie 4 waardoor dit niet relevant is voor mij.
Uit de video blijkt dat het berekenen van gegevens op websites verplaatst is van de server naar de client. Dit houdt dus in dat de computer van de gebruiker het dataverwerkingsgedeelte doet en niet meer de server. 

OWIN blijkt een interface te zijn tussen de web server en de web applicatie. Dit is vooral handig als er binnen meerdere frameworks gewerkt wordt. 
Vervolgens installeer ik een aantal packages met de course mee wat erg lijkt op wat ik ken van NPM. Het lijkt alsof dependencies in Node hier "references" worden genoemd. Het volgende stukje kan ik niet meedoen gezien ik het console framework mis. 

Degene die de course geeft gaat nu verder met het schrijven van een async. functie en zet een listener op poort 8080 naar de writeline die hij schrijft. Hij legt uit dat async ervoor zorgt dat er niks geblockt wordt, het houdt de applicatie gaande. Inmiddels zie ik dat C# zo zijn gelijkenissen heeft met Java: van de manier van returnen, de access modifiers, hoe methodes/classes aangemaakt worden tot aan variabelen. Wat me wel opvalt is dat het gebruik van "var" mag, dit zijn waarschijnlijk komen door type inference. 
Vervolgens definieërt hij een alias voor AppFunc, zodat hij niet overal de lange regel code hoeft te schrijven. Wat me opvalt is dat de debugger in Visual Studio ongeveer hetzelfde werkt als die van het Jetbrains pakket. 

Daarna wordt uitgelegd hoe het middleware gedeelte precies in elkaar steekt. Dit vind ik tot nu toe nog een klein beetje een vaag hoofdstuk. Wat ik er wel van snap is dat het als een pipeline werkt en dat de middleware input krijgt en een bepaalde output. Ik kan me voorstellen dat dit handig is om te kunnen loggen en de quality of service te kunnen meten van het systeem. In de course worden van classes geen .exe bestanden gemaakt, maar .dll bestanden. Dit heb ik tot nu toe nog niet hoeven te genereren/maken. 

## Conclusie
Gedurende dit onderzoek heb ik helaas te weinig kunnen kijken naar het MVC gedeelte van ASP.NET. Door verder te gaan met OWIN/Katana, heb ik mezelf op een dwaalspoor gezet voor dit onderzoek. Ik denk wel dat er met ASP.NET MVC een CRUD-applicatie gemaakt kan worden waarmee de opdrachtgever het systeem kan managen. Wel denk ik dat er een aantal programmeertalen/frameworks zijn die eenvoudiger zijn en makkelijker te leren zijn gedurende dit project. 
** Ja, het is mogelijk om een beheersapplicatie te maken met ASP.NET MVC, maar vanwege de learning curve denk ik dat guderende dit project beter van een andere taal en/of framework gebruik gemaakt kan worden. ** 