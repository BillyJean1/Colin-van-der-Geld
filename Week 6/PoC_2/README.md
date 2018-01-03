# Unit tests in Swift
Bronnen: 
https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/testing_with_xcode/chapters/04-writing_tests.html

https://www.raywenderlich.com/150073/ios-unit-testing-and-ui-testing-tutorial

https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/testing_with_xcode/chapters/07-code_coverage.html

## Hypothese
Om ervoor te kunnen zorgen dat er wijzigingen aan de code kunnen worden gedaan en vervolgens terug te kunnen vinden welke functionaliteiten kapot zijn gegaan, moeten er unit tests geschreven worden. Dit zorgt er meteen voor dat de kwaliteit van de code beter gewaarbord kan worden. Gezien wij dit in Swift gaan doen, en niemand van de Billyjean1 groep ervaring heeft met unit tests in Swift, zal ik kijken wat hierin de mogelijkheden zijn.

Daarom luidt de hypothese als volgt:
**Het is voor de ReCrowd applicatie mogelijk unit tests op te stellen waarmee de classes eenvoudig getest kunnen worden**

## Testopzet
Allereerst zal ik op internet gaan kijken wat de mogelijkheden zijn voor unit tests binnen Swift/Xcode. Vervolgens zal ik zelf een project opstarten en oefenen met het schrijven van unit tests in Swift. Daarna ga ik kijken naar hoe ik de code coverage van de applicatie (en classes) boven water kan krijgen. Als laatste zal ik de opgedane kennis toepassen op het ReCrowd project.


## Resultaat
Ik begin als eerste met het opzetten van een nieuw xcode project waarbij ik kies voor "include unit tests". Wat meteen opviel was dat er een extra folder bij is gekomen genaamd "UnitTestsTests" (ja, een leuke naam is het zeker). Wat meteen opviel is dat er al meteen een bestand is aangemaakt die een opzet van een unit test bevat. In comments staat erbij gegeven wat elk van deze methodes doen. De methodes zijn als volgt: 
* setUp
Deze methode zet de initiële waardes en wordt aangeroepen voordat ieder van de unit tests worden uitgevoerd. 
* tearDown
Deze methode wordt aangeroepen nadat een testmethode is aangeroepen. Dit wordt net als de setup voor ieder van de testmethodes uitgevoerd.
* testExample
Dit is de daadwerkelijke use case. Hierin zullen de functionaliteiten getest worden.
* testPerformanceExample
Deze methode zorgt ervoor dat de performance van de tests gemeten kunnen worden. 

Om te beginnen maak ik een class aan met een aantal eenvoudige functies: optelsommen, vermenigvuldigen en kwadrateren. Deze class noem ik "calculate". Bij het aanmaken hiervan zorg ik ervoor dat het vinkje van de tests aan staat. Hierbij is de methode "add" onjuist geïmplementeerd, ik ga proberen dit te bevestigen door het schrijven van unit tests.

Ik begin allereerst met het klaarzetten van de zojuist aangemaakt class binnen de "UnitTestsTests" class. Hierbij kreeg ik de melding dat de testclass geen initializers heeft. Het schijnt dus dat alles wat in de setup gestopt wordt, automatisch toegankelijk is vanaf de andere methodes binnen dezelfde test. Vervolgens schreef ik (met de tweede bron ernaast) twee unit tests: eentje voor het optellen en eentje voor het vermenigvuldigen. Bij het optellen verwachte ik dat deze zou falen, dit gezien ik na de berekening "+1" doe waardoor het antwoord automatisch fout is. Zoals verwacht, kreeg ik het volgende resultaat:
![Afbeelding 1](https://github.com/BillyJean1/Colin-van-der-Geld/blob/master/Week%206/PoC_2/Afbeelding1.png?raw=true)

Zoals te zien is, faalde de test die verwacht was te falen. Na het oplossen van het probleem en het opnieuw draaien van de unit tests, slaagde alle tests.
Om te kunnen kijken hoeveel code coverage ik op dat moment had, gebruikte ik de derde bron. Tot mijn verbazing kwam ik erachter dat de hoeveelheid coverage op 0% zat van de zojuist geteste class. Uiteindelijk bleek dat deze class uit de "compile sources" gehaald moest worden om ervoor te zorgen dat dit meegenomen moest worden in de code coverage. Hierdoor kwam ik uit op 66.67% code coverage. Nadat ik de laatste unit test had geschreven (voor het kwadrateren), werd de code coverage zelfs 100%!
![Afbeelding 2](https://github.com/BillyJean1/Colin-van-der-Geld/blob/master/Week%206/PoC_2/Afbeelding2.png?raw=true)

Nu ik weet hoe ik moet werken met XCTAssert en unit tests moet schrijven, ga ik dit toepassen op de ReCrowd applicatie. 

Allereerst begin ik met het aanmaken van een checkin test. Vervolgens probeerde ik een test te schrijven, maar dit lukte niet gezien er gezegd werd dat de Firebase module missende was. Hieruit bleek dat ik in mijn Podfile zijn testimports de Firebase Database ook erbij moest zetten. Toen ik weer een pod install had uitgevoerd, kon ik een test schrijven voor CheckinTests (bestandsnaam verkeerd genoemd, had "checkInTests moeten zijn): https://github.com/BillyJean1/ReCrowd/commit/e799b640c36ab7d108e450c083c485804791f0a0
Hierbij kwam ik erachter dat de tests uit twee delen bestond: het gedeelte waarbij iets in de database opgeslagen werd en het gedeelte waar gecontroleerd werd of de record bestond. Ik begon met het schrijven van een stuk code dat de record in de database zou moeten zetten. Na dit uitgeprobeerd te hebben (zie onderin commit), bleek dit niet te werken. Na heel lang proberen kwam ik erachter dat wanneer een unit test wordt uitgevoerd, er geen verbinding kan worden gemaakt met de Firebase server: deze wordt gemockt.

Vanwege het gebrek aan (logische) classes op het moment van schrijven (en teveel aan logische functies die private zijn), kon ik geen van de viewcontroller classes testen. Daarom heb ik ervoor gekozen om de domain classes te testen, en wel om de volgende redenen:
Indien iemand bezig is met een andere class dan het domein, kan diegene vergeten dat het domein mogelijk onjuist is of dat er (verkeerde) logica instaat die niet werkt. Door het draaien van unit tests, kunnen deze fouten eenvoudig worden opgespoord.
Het biedt een template als er meer logica in het domein komt te staan. Ook biedt dit een hogere test coverage.

Ik begon het schrijven van unit tests bij de event model. Hierbij maakte ik een object aan van het type event, waarna ik vervolgens testte of alles goed in het object gestopt was en de verwachte waardes uit kwamen. Dit was (gelukkig) het geval. Hierna ben ik aan de gang gegaan met het user model. Wat opviel was dat er twee inits waren: een om zelf een user aan te maken en de ander die gebruikt wordt om de user uit de authenticatiegegevens van Firebase te halen. Deze class viel (doordat ik geen verbinding kon maken met Firebase) niet anders te testen dan te kijken of de waardes in de user gelijk waren aan nil. De "normale" initializer kon daarentegen eenvoudig getest worden, inclusief edge cases. Ook konden alle unit tests eenvoudig tegelijk uitgevoerd worden door middel van de testknop in Xcode (op de plek van de "run" knop). Zoals verwacht, gaven de geteste classes 100% code coverage.

## Conclusie
Het is zeker mogelijk om de applicatie te kunnen testen aan de hand van unit tests. Het is echter belangrijk om er rekening mee te houden dat de testbaarheid van de classes zo optimaal mogelijk is, anders is het in sommige gevallen niet mogelijk om te testen (als er bijvoorbeeld classes private zijn of meerdere delen logica in een methode verwerkt zijn). Het lijkt mij goed om de applicatie zo functioneel mogelijk te schrijven gezien dit de testbaarheid verhoogt. Test driven development lijkt mij ook erg geschikt om te gebruiken gezien zo de methodes testbaar opgesteld worden en gelijk getest zijn. Het is soms wel lastig om goede unit tests te schrijven wanneer er gebruik wordt gemaakt van externe systemen.

