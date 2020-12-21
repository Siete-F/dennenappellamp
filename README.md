# Introductie

Dennenappel lampen op internet zijn mooi, maar veel te symmetrisch naar mijn smaak. De echte dennenappel heeft zijn bladen gerangschikt op een bijzondere manier en dit wordt vaak vereenvoudigd voor ontwerp doeleinden. Elk blad groeit vanuit de basis onder een hoek van 137.508 (+/-) graden ten opzichte van het vorige blad. Deze ‘golden angle’ staat het verst af van elke afgeronde verhouding wat maakt dat de bladen zo komen te staan dat er een maximale water/zon vangst is van de harde bladen van de dennenappel (en praktisch alle bladeren van andere planten). Probeer je maar eens in te denken hoe overlappend de bladen gerangschikt zouden zijn wanneer je telkens 1/8e van een cirkel zou draaien t.o.v. het vorige blad, het 9e blad zal dan weer overlappen met het eerste. Ook de bladeren van planten groeien wisselend met deze hoek rond de steel en vangen zo maximaal zonlicht.

Uit frustratie voor de afgezaagde (mathematische) representaties van de echte dennenappel die ik veelvuldig op internet vind, bij pogingen van anderen om er een lamp ontwerp op te baseren, ben ik op onderzoek uitgegaan en heb ik mij verdiept in hoe deze verdeling werkelijk in elkaar steekt.

Ter illustratie hoe nauw deze hoek komt:

![]( https://3.bp.blogspot.com/-dGn-JxA7D3A/WsceaDCCn-I/AAAAAAAAFzw/VnLycyU8324bfEgL_H8EpMKRVM0Ojnf6wCLcBGAs/s1600/Screen%2BShot%2B2018-04-06%2Bat%2B09.14.03.jpg)

# Ontwerp proces

Er zijn iig twee wetmatigheden die de vorm bepalen waarvan er met name één voor mij van belang is. Dit is de plaatsing van de bladen rondom de hartlijn van de lamp. Naast deze wetmatigheid volgt de dennenappel nog een tweede definitie. Als je vanaf de punt van de dennenappel de hoeveelheid bladen per laag telt, dan vind je de Fibonacci reeks [1, 1, 2, 3, 5, 8, 13, …]. Deze reeks maakt dus ook dat de dichtheid van de bladen verhoogd tot het breedste punt en uiteindelijk de oorsprong.

Voor mijn project is alleen de eerste wetmatigheid van belang omdat ik zelf de dichtheid van het bladerdek en de afstand vanaf de hartlijn wil bepalen.

Een 2D representatie van de positionering van de bladen (met gelijke verticale afstand toename van 5mm) helpt me om begrip te krijgen hoe deze 'golden angle' verdeling in zijn werk gaat. Het is heel gaaf dat je kan zien dat de verschillende Fibonacci nummers weer terug te vinden zijn in de hoeveelheid spiralen die je kan tellen onder verschillende hoeken (zie rechts van de schets). Dit klopt alleen voor de 8 elementen om elk element heen, door welke 4 spiralen vormen, de n=2, 5, 8 en 13 spiraal (wat feitelijk een 'spoed' aanduiding is zoals bij een schroefdraad).

<img src="images/1_golden_angle_2d_exploration.jpeg" width="700">

Na met een 3D model te hebben geëxperimenteerd in Solidworks ben ik overgestapt op een schets en wat berekeningen in een [R script](src/main.R). Dit gaf mij de gewenste abstractie en programmeer mogelijkheden.

De vorm van de bladen (in R versimpeld met een scherpe punt, maar in realiteit afgerond met r=1.5) heb ik laten afhangen van waar het blad hangt in de dennenappellamp die ik maak. De bladen zijn op verschillende hoogten en onder verschillende neerwaartse hoeken bedacht. Slechts de rotatie laat ik aan de golden angle over. De wanden van het blad staan onder een hoek zodat de doorgetrokken lijnen zouden snijden in de hartlijn van de lamp. En zo heb ik nog wat regels opgesteld die de vorm definiëren, maar die laat ik hier verder terzijde.

Vanwege de golden angle is de positionering van de bladen dusdanig random dat het niet mogelijk is om met een rib te werken waarop ik de bladen kan monteren (zoals alle andere ‘pinecone lamp’ ontwerpen het aanpakken). Om deze reden heb ik besloten elk blad met een los ijzerdraad te positioneren.

Het bladerdek ziet er straks vanaf de bovenkant zo uit. De bovenste bladen zijn weergegeven in groen, aflopend in rood, donker bruin en licht bruin:

<img src="images/0_pinecone_lamp_top_view.PNG" width="500">

Een vereenvoudigd zijaanzicht (eentje waarbij de rotatie rond de hardlijn niet is meegenomen) ziet er zo uit:

<img src="images/0_zij_aanzicht_ongeroteerd.PNG" width="300">

De bladen zelf kan ik ook gewoon plotten om ze vervolgens over te kunnen tekenen op papier. De verkregen papieren mal kan ik dan weer op het fineer en vanaf het uitgeknipte papier op het fineer te zetten.

<img src="images/0_all_leaves_stacked.PNG" width="600">

# Aan de slag

Ik heb besloten 26 bladen te maken en deze wil ik een bolling meegeven om het nog natuurlijker te laten ogen. Dit doe ik door 2 lagen fineer op elkaar te lijmen in een mal. Deze mal, waarvan ik er 3 heb gemaakt, zie je op de foto achterin staan en is met stof bekleed.

<img src="images/3_alle_bladen_gelijmt.jpeg" width="600">

Uit de hand boor ik 26 gaten in een houten schijf op basis van de golden angle waar ik de nummers van de bijbehorende bladen bij noteer.

<img src="images/4_schijf_geboord_en_genummerd.jpeg" width="600">

Nu kan ik ook de industrial look 95mm lampen bol en fitting monteren.

<img src="images/5_fitting_lamp_schijf_snoer_gemonteerd.jpeg" width="600">

De van fineer gemaakte bladen heb ik geschuurd (wat uit wat experimenten mooier bleek te zijn) en heb ik met blanke lak afgewerkt. Dit zorgt er met name voor dat het hout niet gaat verkleuren door de zon.

<img src="images/6_bladen_lakken.jpeg" width="600">

Na het buigen van de ijzerdraden kan ik de eerste bladen ophangen.

<img src="images/7_eerste_bladen_gemonteerd.jpeg" width="600">

Hier is goed te zien hoe ik de bladen heb voorzien van een spiraal van dun draad zodat ik daar mijn montage mee kan realiseren.

<img src="images/8_eerste_bladen_gemonteerd_detail.jpeg" width="600">

Na alle bladen gemonteerd te hebben moet ik alleen de ‘drop’ of ‘val’ hoek nog wat afstellen om zo het meest esthetische resultaat te behalen.

<img src="images/9_leave_nose_drop_nog_wat_afstellen.jpeg" width="600">

<img src="images/10_onder_aanzicht.jpeg" width="600">

**De lamp is klaar!** De stationaire kraan heb ik in een avondje in elkaar gebeund, maar daar komt later nog wel een echte oplossing voor.
Hij is nu, dankzij de gepatenteerde strop om de radiatorbuis, zowel in hoogte verstelbaar als dat hij kan draaien. De lamp is ook dimbaar en geeft echt heel mooi licht. Ik ben blij met het resultaat! Het creëert een mooie lees hoek in de kamer en de lamp heeft een winter achtige uitstraling.

<img src="images/11_klaar_zij_aanzicht.JPG" width="700">
<img src="images/12_klaar_schuin_onder_aanzicht.JPG" width="700">
<img src="images/13_klaar_lamp_aan.JPG" width="700">
