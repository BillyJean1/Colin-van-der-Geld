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