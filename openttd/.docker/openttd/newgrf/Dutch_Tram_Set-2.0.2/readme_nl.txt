Dutch Tram Set 2.0.2
-----------------------------------

Inhoud:

1 Over
2 Vereisten
3 Installatie
  3.1 Parameter instellingen
  3.2 Opwaarderen vanaf RC1
4 Gebruik
  4.1 Lijst van voertuigen
5 Credits
6 Licentie
7 De broncode verkrijgen



------
1 Over
------

De Nederlandse Tram Set (Dutch Tram Set) is een NewGRF die een groot 
aantal historische en moderne Nederlandse trams aan OpenTTD toevoegt.

Dutch Tram Set 2.0.2
MD5Hash:      {{GRF_MD5}}
Versie:       5740
GRF ID:       

De Nederlandse Tram Set poogt een historisch overzicht te geven van 
Nederlandse trams, terwijl tegelijkertijd het spelelement behouden
blijft. De set werkt goed met het realistische wegvoertuig acceleratie
model van OpenTTD en bevat daarom zo veel mogelijk echte voertuig-
eigenschappen.

Voertuigcapaciteit is geoptimaliseerd voor het spel (veelal groter dan
de echte hoeveelheid zitplaatsen, maar minder dan zitplaatsen+staan-
plaatsen) en is gebaseerd op echte voertuiglengte om de historische 
verschillen tussen voertuigen zoveel mogelijk te behouden. Standaard 
kunnen de voertuigen alleen passagiers vervoeren, maar een parameter
instelling maakt het mogelijk om te bouwen tot alle goederentypen.

Voertuigen zijn getekend in hun historische kleurstellingen. Sommige
voertuigen hebben zelfs meerdere kleurstellingen. Via een parameter 
instelling kan er voor worden gekozen om de voertuigen in bedrijfs-
kleuren (2CC) te krijgen, bedoeld voor multiplayer spellen.

Voertuigprijzen zijn gebalanceerd met de standaard TTD bussen. Tram 
aankoop is duurder dan de aankoop van een bus, maar de onderhoudskosten
zijn lager dan die van bussen, om te compenseren voor de hogere 
investeringskosten. Voertuigen in de Nederlandse Tram Set zijn ook 
onderling gebalanceerd. Aankoopkosten zijn afhankelijk van voertuig-
gewicht (kosten voor materiaal), kracht (kosten voor motor) en lengte 
(kosten voor inrichting). Onderhoudskosten zijn gebaseerd op capaciteit
(kosten voor schoonmaak), snelheid (kosten voor onderhoud) en kracht
(kosten voor energieverbruik).



-----------
2 Vereisten
-----------

Je hebt ten minsten OpenTTD 1.2.0 of nightly r23166 nodig om de 
Nederlandse Tram Set te kunnen gebruiken. Je kunt een recente versie 
van OpenTTD verkrijgen via http://www.openttd.org/

Als je TTDPatch speelt, dan kun je Dutch Tram Set Release Candidate 1 
downloaden via http://www.tt-forums.net/viewtopic.php?t=45456
Deze versie is geoptimaliseerd om te werken binnen de beperkingen van 
TTDPatch. Hier zit een eigen readme.txt in met instructies voor 
installatie en configuratie.



-------------
3 Installatie
-------------

Zonder meer de makkelijkste weg om te installeren is om de Nederlandse
Tram Set te downloaden via de Online Inhoud binnen het spel. Hoe dat 
moet wordt uitgelegd op http://wiki.openttd.org/Online_content.

Als je de Online Inhoud op een of andere manier niet kunt gebruiken, 
dan moet je het Nederlandse Tram Set grf-bestand naar de OpenTTD data
map kopieren. Waar die map is wordt uitgelegd in de readme van OpenTTD.

De laatste stap is het activeren van de Nederlandse Tram Set. Dit doe je
via het NewGRF-instellingen venster, wat wordt uitgelegd op 
http://wiki.openttd.org/NewGRF.
Nu kun je de Nederlandse Tram Set gebruiken in je nieuwe spellen.


3.1 Parameter instellingen
--------------------------

De Nederlandse Tram Set kent twee parameter instellingen. Deze kun je 
eenvoudig instellen via het spel, maar als je om een of andere reden het
configuratiebestand met de hand wil bewerken, dan heb je iets aan 
de volgende details:

1ste parameter: Zet voertuig kleurstellingen
0: Echte kleurstellingen (standaard)
1: Bedrijfskleuren

2de parameter: Zet voertuig ombouw opties
0: Alleen passagiers (standaard)
1: Goederentypen uit steden (passagies, post en expresse voertuigklassen)
2: Alle goederentypen


3.2 Opwaarderen vanaf RC1
-------------------------
De Nederlandse Tram Set versie 2.0.0 zou compatibel moeten zijn met de
eerdere RC1. Je kunt al je spellen in een keer opwaarderen door Dutch 
Tram Set RC1 te verwijderen uit de OpenTTD data of content_download/data 
map. Zorg ervoor dat je de nieuwe versie gedownload en geinstalleerd 
hebt voor je dat doet. Zodra je een opgeslagen spel inlaadt zal OpenTTD
nu automatisch de nieuwe versie als compatibele versie selecteren.

Echter, als je op veilig wilt spelen, hou dan gewoon beide versies en 
gebruik de nieuwe versie alleen voor nieuwe spellen.

Een bekend probleem met het opwaarderen van bestaande spellen is dat 
gelede voertuigen er uit zien alsof ze uit elkaar zijn gevallen. Hoewel
dit er raar uit ziet, moet het geen problemen geven. Zodra een voertuig
een depot bezocht heeft zou deze er weer normaal uit moeten zien.



---------
4 Gebruik
---------

Verzeker je ervan dat de Nederlandse Tram Set is geactiveerd in het
NewGRF-instellingen venster. De eerste tram is beschikbaar vanaf 1905
(het spel maakt dit willekeurig, dus het kan iets eerder of later zijn).

Je kunt werkbalk voor het bouwen van tramwegen vinden door de knop 
om wegen te bouwen in hoofdwerkbalk vast te houden en te kiezen voor
bouw tramwegen uit het omlaagvalmenu. Hou er rekening mee dat je alleen
trams kunt kopen in tramdepots en dat trams alleen werken op tramsporen,
niet op treinsporen of wegen.


4.1 Lijst van voertuigen
------------------------

Intr | Voertuignaam
-----|----------------------------
1905 | HTM 21-168 'Fordjes'
1908 | RET 127-151 'Drieramers' 
1913 | RET 152-201 'Parkwagens' 
1929 | GETA 70-75
1929 | HTM 821-830
1929 | HTM 821-830 + 751-781
1940 | NBM 50 + 3 trailers
1948 | GVB 491-550 'Drieassers'
1948 | GVB 491-550 + 951-1000 'Drieassers'
1948 | HTM 201-216 'Zwitsers' 
1948 | HTM 201-216 + 751-781 'Zwitsers' 
1957 | RET 231-244 'Schindlers'
1964 | RET 351-386 'Düwags'
1971 | HTM 1301-1340 'PCCs'
1971 | HTM 1301-1340 + 2101-2130 'PCCs'
1974 | GVB 725-779 (8G) 'Luchtwagens'
1981 | HTM 3001-3147 'GTL8'
1983 | Connexxion 5001
1990 | GVB 817-841 (12G) 'Trapwagens'
2002 | GVB 2001-2151 'Combino'
2003 | RET 2001-2060 'Citadis'
2006 | HTM 4001-4072 'Citadis'
2012 | Toekomst 2001 'Flexity Outlook'
2022 | Toekomst 4001 'Rendallyne'
2032 | Toekomst 6001 'SlrTrm'



---------
6 Credits
---------

De Nederlandse Tram Set is gemaakt door:
* Rendall
* FooBar

Code:
-----
* FooBar

Grafische credits:
------------------
* Rendall  (alle voertuigen, behalve onderstaand)
* FooBar   (GVB 725-779 (8G) 'Luchtwagens', GVB 2001-2151 'Combino', 
            RET 2001-2060 'Citadis', HTM 4001-4072 'Citadis')
* Bastiaan (Connexxion 5001-5027)
* Ameecher (initieel ontwerp van Flexity Outlook)
* Purno    (stroomafnemers)

Makefile systeem:
-----------------
Ingo von Borstel (planetmaker)

Speciale dank aan:
------------------
* Vertalers
* NML ontwikkelaars
* Iedereen die heeft geholpen tijdens de ontwikkeling van RC1
* Meer dan 136836 mensen die RC1 hebben gedownload
* #openttdcoop DevZone voor het voorzien van het repository, bug tracker,
  nightly builds en meer!



----------
5 Licentie
----------

Dutch Tram Set - Trams of The Netherlands for OpenTTD
Copyright (C) 2007, 2008, 2011, 2014  Rendall, FooBar and others

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License along
with this program; if not, write to the Free Software Foundation, Inc.,
51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.



------------------------
7 De broncode verkrijgen
------------------------

De broncode kan verkregen worden via de #openttdcoop DevZone op
    http://dev.openttdcoop.org/projects/dutchtramset
of via mercurial checkout
    hg clone http://hg.openttdcoop.org/dutchtramset

Hoe te bouwen vanaf de broncode en de vereisten hiervoor zijn opgenomen
in de broncode in het bestand /docs/building_from_source.txt.
