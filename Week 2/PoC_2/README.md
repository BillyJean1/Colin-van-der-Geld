# Android native apps
Bronnen:
https://www.youtube.com/watch?v=aE5f1tV5nU4
http://abhiandroid.com/androidstudio/create-new-activity-android-studio

## Hypothese
Tijdens het semester MAD heb ik kennis gemaakt met het maken van apps in Swift (xcode) en met het maken van hybride apps. Tijdens deze courses heb ik geen les gehad in het maken van native Android apps. Gezien de ICT-kant van mijn projectgroep hetzelfde profiel heeft (dezelfde Java-achtergrond) en dezelfde minor heeft gedaan, leek het mij interessant om te kijken hoe moeilijk het is om over te stappen op Android Studio en daarmee een native Android app te maken. Het kan namelijk zomaar het geval zijn dat er uit het concept komt dat er een app moet worden gemaakt, en dat dit een native Android app moet zijn.

Daarom luidt de hypothese als volgt:
**Is het haalbaar om gedurende het project een native Android app te maken, rekening houdende met het kennisniveau op dit gebied van de projectgroep?**

## Testopzet
Voor het onderzoek zal dus gebruik worden gemaakt van Android Studio. Hierbij zal voornamelijk gekeken worden naar de herkenbaarheid en de verschillen van Xcode en Android Studio. Er zal getest worden met de volgende onderdelen (Xcode terminologie):
* Labels
* Buttons
* Snackbar + toasts
* Labels wijzigen
* Tables
* Segues + navigation

Hierbij zal gekeken worden naar hoe makkelijk het implementeren hiervan is en wat de verschillen zijn tussen Android Studio (Java) en Xcode (Swift). Omdat de ICT-kant van mijn groep bekend is met de programmeertaal Java, zal er niet worden gekeken naar de verschillen van de programmeertaal van Java en Swift. 



## Resultaat
Allereerst ben ik begonnen met een label aanmaken. Dit was niet zo heel erg moeilijk, het was alleen zoeken naar waar ik het label vandaan kon halen (kennelijk heet dat menu het 'palette'). Ik had bij het aanmaken van het project al 'gratis' een main activity gekregen (wat overeenkomt met een view), dus kon ik het label er zo inslepen. 
Wat meteen opviel was dat de pagina twee verschillende views had: een voor het design en de andere voor de blueprint. Wat ook opviel was dat Android Studio dezelfde "lijnen" ondersteunt als Xcode. Hiermee worden de lijnen bedoeld waarmee een object opgelijnd kan worden in de view. Een nadeel van Android Studio vond ik dat de simulator niet altijd evengoed werkt, waardoor ik gebruik moest maken van mijn eigen telefoon voor het testen. Xcode heeft daarentegen een mooiere simulator.

Een button was ook zo in de view aangemaakt. De kleur van de button was eenvoudig aangepast naar de huisstijl van de app door de "style" aan te passen. Nu kwam het lastige: hoe maakte ik nou een 'outlet' zodat ik de button in de code kan gebruiken? Hiervoor heb ik een tutorial moeten volgen (zie eerste Youtube video). Gezien ik de app op een extern apparaat draai, was het even zoeken naar waar ik de logs kon terugvinden. Kennelijk stonden deze binnen de Android Monitor en kwamen de berichten niet binnen via de standaard debugger.

Het aanmaken van toast en snackbars was ook vrij eenvoudig. Hetgeen waar ik tegenaan liep was het alignen van de components: alle components vielen over elkaar heen waardoor bijvoorbeeld de textview niet meer zichtbaar was. Dit was eenvoudig op te lossen door gebruik te maken van de alignments. 
Vervolgens ging ik proberen door op de knop te drukken, het textview te wijzigen. Ik probeerde dus allereerst het label te koppelen zoals ik eerder in de tutorial gezien had voor het koppelen van de knop. Dit lukte en kon de kleur van de textview wijzigen evenals de tekst ervan. 

Een tabel aanmaken was daarentegen wat lastiger, voornamelijk omdat de constraints niet goed stonden waardoor de tabel de inhoud niet weergaf. In Swift is het mogelijk een prototype van een cell te maken. Ik wil proberen of dit ook gedaan kan worden in Android Studio.

Na een tijdje zoeken op het internet lijkt er niet echt een manier te zijn om dit te doen. De rijen zullen dus handmatig toe moeten worden gevoegd, deze code heb ik uitgeschreven in de functie "addRow()".

Het laatste punt dat ik wil gaan bekijken is (wat in Swift genoemd wordt) segues, ook wel bekend als navigation. Ik wil proberen om van de ene view naar de andere view te gaan door op een knop te klikken. Hiervoor heb ik allereerst een nieuwe button aangemaakt in de view en heb ik een nieuwe activity aangemaakt. Het duurde even voordat ik doorhad hoe een nieuwe activity gemaakt wordt, maar naar even goed Googlen kon ik het vinden (zie tweede bron). Het wisselen tussen views (segue-en) bleek achteraf niet zo moeilijk als dat ik verwacht had dat het was. Navigatie wordt hierbij volledig gedaan door middel van code - in tegenstelling tot Xcode waarmee visueel op het storyboard de navigatie wordt uitgevoerd. Jammer is dat hierdoor niet automatisch de pijlen linksboven in beeld terecht komen waarmee terug kan worden gegaan naar de parent activity. Wat wel werkt is op de terug-toets van het toestel drukken, hierdoor wordt wel teruggegaan naar de vorige pagina.


## Conclusie
Uit dit onderzoek kan ik dus concluderen dat het voor dit project haalbaar is om een Android native applicatie te maken samen met de projectgroep, dit gezien de basisfunctionaliteiten ongeveer hetzelfde zijn als in Xcode (Swift) en ik deze PoC binnen de vastgestelde periode kon 'uitvogelen' (vastgestelde periode was 4 uur, ik heb dit binnen 3 uur gered).