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
[Afbeelding 1]

Zoals te zien is, faalde de test die verwacht was te falen. Na het oplossen van het probleem en het opnieuw draaien van de unit tests, slaagde alle tests.
Om te kunnen kijken hoeveel code coverage ik op dat moment had, gebruikte ik de derde bron. Tot mijn verbazing kwam ik erachter dat de hoeveelheid coverage op 0% zat van de zojuist geteste class. Uiteindelijk bleek dat deze class uit de "compile sources" gehaald moest worden om ervoor te zorgen dat dit meegenomen moest worden in de code coverage. Hierdoor kwam ik uit op 66.67% code coverage. Nadat ik de laatste unit test had geschreven (voor het kwadrateren), werd de code coverage zelfs 100%!
[Afbeelding 2]

Nu ik weet hoe ik moet werken met XCTAssert en unit tests moet schrijven, ga ik dit toepassen op de ReCrowd applicatie. 

Allereerst begin ik met het aanmaken van een Login test. Vervolgens probeerde ik een test te schrijven, maar dit lukte niet gezien er gezegd werd dat de Firebase module missende was. Hieruit bleek dat ik in mijn Podfile zijn testimports de Firebase Database ook erbij moest zetten. Toen ik weer een pod install had uitgevoerd, kon ik 


## Conclusie
