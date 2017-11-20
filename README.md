# Onderzoeken Colin van der Geld

## Techs

Deze week zal ik aan de gang gaan met de volgende techs:
* Neural networking (machine learning)
* Android native apps

### (Artificial) neural networking
Bronnen:
* https://www.xenonstack.com/blog/overview-of-artificial-neural-networks-and-its-applications
* https://www.youtube.com/watch?v=aircAruvnKk&t=1031s (part 1 t/m 3)
* https://www.youtube.com/watch?v=ntKn5TPHHAk&t=2387s (part 1)

### Android native apps



## Artificial neural networking

### Hypothese
Tijdens dit onderzoek probeer ik erachter te komen of een artificial neural network bruikbaar is voor het verbeteren van crowd control. 

Daarom luidt de hypothese als volgt:
**Is het mogelijk om artificial neural network in te zetten om crowd control te verbeteren?**

### Testopzet

Allereerst zal ik me inlezen op het onderwerp middels bovenste bron . Vervolgens zal ik de Youtube filmpjes gaan kijken van de tweede bron (van poster "3Blue1Brown"). Het laatste deel van die series zal ik niet kijken gezien deze te diep ingaat op de achterliggende wiskunde. Daarna zal ik de code-along volgen van de laatste Youtube bron. 

Het uiteindelijke resultaat van deze code-along zal ik gaan proberen aan te passen naar een proof of concept die betrekking heeft tot crowd control. Gezien dit een proof of concept is en de (programmeer)taal hierbij niet relevant is, zal de code in Processing geschreven worden. Dit is ook handig gezien er bij de laatste tutorial ook gebruik wordt gemaakt van Processing en omdat er eenvoudig een grafische weergave kan worden gemaakt.


### Resultaat
Bij het lezen van de eerste bron kwam ik erachter dat een artificial neural network zijn gelijkenissen heeft met een (menselijk) brein. Zo heeft bijvoorbeeld de manier van dataverwerking zijn gelijkenissen en zijn ze alletwee zelflerend. Ook zijn er verschillen: een atrificial neural network is veel sneller met dataverwerking, een brein kan niet serieel data verwerken en is een atrificial neural network beperkt tot de onderliggende code.

Een atrificial neural network bestaat uit de volgende onderdelen:
* Inputs - Invoerwaardes, de 'ogen' van de neuron
* Weights - Geeft de sterkte van de connectie weer
* Summer - Voert de berekening uit aan de hand van de inputs, weights en de bias
* Bias - Gebruikt voor het 'shiften' van de uitvoerwaarde
* Treshold unit - Een maximale waarde
* Output - De uitvoerwaarde, het resultaat

Er zijn volgens het artikel een aantal verschillende types atrificial neural networks. Op basis van deze types bestaan er verschillende netwerkarchitecturen voor neural networks. Iedere architectuur heeft weer bijbehorende voor- en nadelen. Ook zijn er verschillende algoritmes die gebruikt worden om het netwerk te trainen - de bekendste hiervan zijn 'Gradient Descent' en 'Back propagation'. Net als bij de netwerken zijn er verschillende types van leren binnen artificial neural networks. 

Neural networks kunnen vooral worden gebruikt om patronen te voorspellen. Dit zou gebruikt kunnen worden om patronen te voorspellen van bezoekers van een evenement, situaties te herkennen en de crowd control te verbeteren. Nadelen van neural networks zijn dat ze training nodig hebben en dat het processorintensief kan zijn bij grote netwerken.

De Youtube video's van de poster "3Blue1Brown" boden vooral veel duidelijkheid en gaven een goede visualizatie over hoe neural networking in zijn werk gaat. Ook was het leuk om herkenning te zien vanuit de netwerkarchitecturen. Voor deze Youtube-video werdt namelijk gewerkt met een 'multi layer perceptron' architectuur. 

De laatste video (de code-along) was iets chaotischer, waarschijnlijk omdat de poster zelf het een en ander kladderde op een white-board en dingen ter plekke verzon zoals bijvoorbeeld zijn aanpak van het uitprogrammeren. Het scheelde dat ik de benodigde kennis had opgedaan in de eerste twee bronnen, anders had ik waarschijnlijk niet kunnen volgen wat er gebeurde. Uiteindelijk heb ik een paar wijzigingen gedaan in de code (zoals bijvoorbeeld refactoren van methodes) om de leesbaarheid en herbruikbaarheid te verbeteren. 

Ik heb uiteindelijk geprobeerd om een applicatie te maken in processing met de bestaande code die een aantal personen aanmaakt en een wachtrij toegewezen kregen. Het idee was dat er twee wachtrijen waren en dat de computer bepaald welke rij iedere persoon het beste aan kan sluiten om zo min mogelijk te hoeven wachten. Helaas was ik te lang bezig met de bronnen te bestuderen en om het concept te begrijpen, waardoor hier geen tijd meer voor over was. Ik hoopte vanuit mijn proof of concept de hypothese te kunnen beantwoorden, maar omdat er onvoldoende tijd was om dit volledig uit te werken, moet ik de conclusie trekken vanuit de informatie van de bronnen en op basis van de bevindingen tot nu toe.

### Conclusie
