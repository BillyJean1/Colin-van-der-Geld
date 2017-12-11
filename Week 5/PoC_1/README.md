# Locaties in iOS (GPS)
Bronnen: 
https://developer.apple.com/documentation/corelocation/cllocationmanager
https://www.youtube.com/watch?v=XyncTJdXbbw&t=249s
https://www.gps-coordinates.net/
https://stackoverflow.com/questions/33304340/how-to-find-out-distance-between-coordinates

## Hypothese
Gezien we een app gaan maken die rekening moet houden met drukte, moeten we ervoor zorgen dat de locaties van de bezoekers bekend zijn. Ik heb eerder gekeken naar het gebruik van Bluetooth beacons, het is nu tijd om te kijken naar de meest bekende techniek: GPS. 

Gezien het zeer waarschijnlijk is dat we iOS gaan gebruiken, zal dit het platform zijn waarop deze demo gebouwd wordt. Hierbij zal er gekeken worden hoe makkelijk het is om te kijken hoe dicht een GPS-coördinaat in de buurt is (in meters of kilometers) zodat er gekeken kan worden of (in onze applicatie zijn geval) de gebruiker in de buurt is van een attractie.


Daarom luidt de hypothese als volgt:
Is het mogelijk om in iOS nauwkeurig te kunnen bepalen

## Testopzet
Allereerst zal ik gaan kijken naar de huidige documentatie van apple zelf. Vervolgens zal ik gaan kijken naar een tutorial van Youtube en ga ik proberen mee te programmeren. Ik zal voor deze opdracht een extern apparaat aan de gang proberen te krijgen met Xcode zodat ik niet gebonden ben aan de simulator.

Als laatste zal ik gaan kijken of ik kan vinden hoe ik de afstand tussen twee locaties bereken.

## Resultaat
Ik begin met het lezen van de documentatie van apple van CLLocationManager, dit was hetgeen van Apple waarbij ik terecht kwam toen ik "swift gps" googelde. In de overview lees ik dat er events kunnen worden geset wanneer de gebruiker een bepaalde regio/gebied ingaat, misschien is het interessant om te kijken wat hiermee gedaan kan worden. Ook kan het rapporteren naar beacons in de buurt. Ook zie ik dat ik te maken krijg met de CLLocationManagerDelegate. De afstand waarop een update moet worden gedaan (distanceFilter) en de nauwkeurigheid (desiredAccuracy) kunnen alletwee worden ingesteld volgens de documentatie.

Daarna ga ik de tutorial volgen en meedoen. Ik start een nieuw project en doe de import zoals hij ook doet. Wat mij opvalt is dat hij de delegate in de viewcontroller zet. Wat ik al verwachte was dat er iets met rechten moest gebeuren. Swift ondersteunt twee verschillende modus van authorizatie voor GPS: altijd ophaalbaar en alleen wanneer de app in gebruik is. Ik ga voor de eerste, gezien gebruikers van onze app soms de telefoon in hun broekzak hebben en/of de app niet eens geopend hebben staan.

Kort daarna set ik de delegate en set ik de accuracy. Ik zie dat hiervoor een aantal accuracy's zijn: de nauwkeurigste stand, in kilometers, binnen honderd meters, drie kilometer, dichtsbijzijnde tien meters en de beste voor navigatie. Daarna start ik de updates en implementeer ik het protocol zodat ik updates kan ontvangen. Hierin print ik de locatie en zie dat "location.coordinate" (van het type CLLocationCoordinate2D) twee attributen heeft: latitude en longitude, iets wat bij mij bekend is als GPS coordinaten. Als ik deze zou printen, zou hij als het goed is al de GPS-coördinaten moeten weergeven. Ook moet ik de property list aanpassen om GPS-permissies te verkrijgen. Ik start mijn simulator (om mee te beginnen) om te kijken of dit werkt en merkte al gauw dat het niet werkte. De tutorial is inmiddels een paar maanden oud en gaf een melding dat er een key moest zijn in de plist die "always on and when in use" was (in plaats van twee losse). Dit zal waarschijnlijk zijn gekomen door de laatste update. Het duurde even voordat ik gevonden had wat er was (ondanks dat dit achteraf duidelijk aangegeven werd), maar kon daarna gauw weer verder.

Bij het opstarten van de app kwam meteen een popup die vroeg of de app gebruik mocht maken van mijn GPS. Nadat ik deze had geaccepteerd, werden de GPS-coordinaten geprint in de console. Het is heel leuk dat ik onbekende GPS-coördinaten in mijn console kreeg, maar eerst eens kijken of ik dit ook op mijn apparaat werkende krijg, zodat ik de coördinaten om kan zetten en kan kijken of ik op mijn huisadres uitkom. Ik sluit mijn iPad aan, kies als apparaat de iPad en druk op launch. Ik kreeg vrijwel meteen de melding dat het apparaat in gebruik is. Daarom start ik het apparaat opnieuw op en sluit ik iTunes (die automatisch opent) op mijn macBook. Nog steeds niks... hmm. Ik plug de USB opnieuw in en krijg de melding dat ik het certificaat moet vertrouwen op het apparaat. Ik ben in ieder geval een stap verder. Ik doe wat er aangegeven wordt en vertrouw de app. Ik launch en het werkt! Ik krijg in mijn console weer coördinaten door, ik vul deze in op de site van de derde bron en kom precies terecht op de locatie waar ik op dat moment ben! Het werkt :).

Vervolgens ga ik verder met de video en ga ik verder met het afvangen van het "weigeren" van de applicatie. Dit wordt gedaan in de vorm van een popup. Na het implementeren van de code in de tutorial, werkt dit vrijwel meteen out of the box.

## Conclusie
