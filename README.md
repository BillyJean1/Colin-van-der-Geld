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
Bronnen:
https://www.youtube.com/watch?v=aE5f1tV5nU4
http://abhiandroid.com/androidstudio/create-new-activity-android-studio


## Artificial neural networking

### Hypothese
Tijdens dit onderzoek probeer ik erachter te komen of een artificial neural network bruikbaar is voor het verbeteren van crowd control. 

Daarom luidt de hypothese als volgt:
**Is het mogelijk om artificial neural network in te zetten om crowd control te verbeteren?**

### Testopzet

Allereerst zal ik me inlezen op het onderwerp middels bovenste bron . Vervolgens zal ik de Youtube filmpjes gaan kijken van de tweede bron (van poster "3Blue1Brown"). Het laatste deel van die series zal ik niet kijken gezien deze te diep ingaat op de achterliggende wiskunde. Daarna zal ik de code-along volgen van de laatste Youtube bron. 

Het uiteindelijke resultaat van deze code-along zal ik gaan proberen aan te passen naar een proof of concept die betrekking heeft tot crowd control. Gezien dit een proof of concept is en de (programmeer)taal hierbij niet relevant is, zal de code in Processing geschreven worden. Dit is ook handig gezien er bij de laatste tutorial ook gebruik wordt gemaakt van Processing en omdat er eenvoudig een grafische weergave kan worden gemaakt.


### Resultaat
Bij het lezen van de eerste bron kwam ik erachter dat een artificial neural network zijn gelijkenissen heeft met een (menselijk) brein. Zo heeft bijvoorbeeld de manier van dataverwerking zijn gelijkenissen en zijn ze alletwee zelflerend. 
Ook zijn er verschillen: een atrificial neural network is veel sneller met dataverwerking, een brein kan niet serieel data verwerken en is een atrificial neural network beperkt tot de onderliggende code.

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
Gezien een neural network vooral kan worden gebruikt om patronen te voorspellen, lijkt dit een geschikte oplossing voor crowd control. Een keerzijde is de complexiteit van deze techniek. Ik vond het in ieder geval erg lastig om snel te kunnen begrijpen, het had allemaal wat tijd nodig. Ik denk dat het lastig haalbaar is om binnen de korte periode van het project het concept van een artificial neural network te begrijpen en vervolgens een zelflerend netwerk te ontwerpen en te ontwikkelen. Het lijkt mij goed om deze stof te laten bezinken en hier een andere week mee verder gaan, om dan te proberen zelf een beter antwoord te kunnen geven op de hypothese en duidelijk te krijgen of het daadwerkelijk inzetbaar is voor dit project.


## Android native apps

### Hypothese
Tijdens het semester MAD heb ik kennis gemaakt met het maken van apps in Swift (xcode) en met het maken van hybride apps. Tijdens deze courses heb ik geen les gehad in het maken van native Android apps. Gezien de ICT-kant van mijn projectgroep hetzelfde profiel heeft (dezelfde Java-achtergrond) en dezelfde minor heeft gedaan, leek het mij interessant om te kijken hoe moeilijk het is om over te stappen op Android Studio en daarmee een native Android app te maken. Het kan namelijk zomaar het geval zijn dat er uit het concept komt dat er een app moet worden gemaakt, en dat dit een native Android app moet zijn.

Daarom luidt de hypothese als volgt:
**Is het haalbaar om gedurende het project een native Android app te maken, rekening houdende met het kennisniveau op dit gebied van de projectgroep?**

### Testopzet
Voor het onderzoek zal dus gebruik worden gemaakt van Android Studio. Hierbij zal voornamelijk gekeken worden naar de herkenbaarheid en de verschillen van Xcode en Android Studio. Er zal getest worden met de volgende onderdelen (Xcode terminologie):
* Labels
* Buttons
* Snackbar + toasts
* Labels wijzigen
* Tables
* Segues + navigation

Hierbij zal gekeken worden naar hoe makkelijk het implementeren hiervan is en wat de verschillen zijn tussen Android Studio (Java) en Xcode (Swift). Omdat de ICT-kant van mijn groep bekend is met de programmeertaal Java, zal er niet worden gekeken naar de verschillen van de programmeertaal van Java en Swift. 



### Resultaat
Allereersts ben ik begonnen met een label aanmaken. Dit was niet zo heel erg moeilijk, het was alleen zoeken naar waar ik het label vandaan kon halen (kennelijk heet dat menu het 'palette'). Ik had bij het aanmaken van het project al 'gratis' een main activity gekregen (wat overeenkomt met een view), dus kon ik het label er zo inslepen. 
Wat meteen opviel was dat de pagina twee verschillende views had: een voor het design en de andere voor de blueprint. Wat ook opviel was dat Android Studio dezelfde "lijnen" ondersteunt als Xcode. Hiermee worden de lijnen bedoeld waarmee een object opgelijnd kan worden in de view. Een nadeel van Android Studio vond ik dat de simulator niet altijd evengoed werkt, waardoor ik gebruik moest maken van mijn eigen telefoon voor het testen. Xcode heeft daarentegen een mooiere simulator.

Een button was ook zo in de view aangemaakt. De kleur van de button was eenvoudig aangepast naar de huisstijl van de app door de "style" aan te passen. Nu kwam het lastige: hoe maakte ik nou een 'outlet' zodat ik de button in de code kan gebruiken? Hiervoor heb ik een tutorial moeten volgen (zie eerste Youtube video). Gezien ik de app op een extern apparaat draai, was het even zoeken naar waar ik de logs kon terugvinden. Kennelijk stonden deze binnen de Android Monitor en kwamen de berichten niet binnen via de standaard debugger.

Het aanmaken van toast en snackbars was ook vrij eenvoudig. Hetgeen waar ik tegenaan liep was het alignen van de components: alle components vielen over elkaar heen waardoor bijvoorbeeld de textview niet meer zichtbaar was. Dit was eenvoudig op te lossen door gebruik te maken van de alignments. 
Vervolgens ging ik proberen door op de knop te drukken, het textview te wijzigen. Ik probeerde dus allereerst het label te koppelen zoals ik eerder in de tutorial gezien had voor het koppelen van de knop. Dit lukte en kon de kleur van de textview wijzigen evenals de tekst ervan. 

Een tabel aanmaken was daarentegen wat lastiger, voornamelijk omdat de constraints niet goed stonden waardoor de tabel de inhoud niet weergaf. In Swift is het mogelijk een prototype van een cell te maken. Ik wil proberen of dit ook gedaan kan worden in Android Studio.

Na een tijdje zoeken op het internet lijkt er niet echt een manier te zijn om dit te doen. De rijen zullen dus handmatig toe moeten worden gevoegd, deze code heb ik uitgeschreven in de functie "addRow()".

Het laatste punt dat ik wil gaan bekijken is (wat in Swift genoemd wordt) segues, ook wel bekend als navigation. Ik wil proberen om van de ene view naar de andere view te gaan door op een knop te klikken. Hiervoor heb ik allereerst een nieuwe button aangemaakt in de view en heb ik een nieuwe activity aangemaakt. Het duurde even voordat ik doorhad hoe een nieuwe activity gemaakt wordt, maar naar even goed Googlen kon ik het vinden (zie tweede bron). Het wisselen tussen views (segue-en) bleek achteraf niet zo moeilijk als dat ik verwacht had dat het was. Navigatie wordt hierbij volledig gedaan door middel van code - in tegenstelling tot Xcode waarmee visueel op het storyboard de navigatie wordt uitgevoerd. Jammer is dat hierdoor niet automatisch de pijlen linksboven in beeld terecht komen waarmee terug kan worden gegaan naar de parent activity. Wat wel werkt is op de terug-toets van het toestel drukken, hierdoor wordt wel teruggegaan naar de vorige pagina.

### Conclusie
