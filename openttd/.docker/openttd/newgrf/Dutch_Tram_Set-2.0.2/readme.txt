Dutch Tram Set 2.0.2
-----------------------------------

Contents:

1 About
2 Requirements
3 Installation
  3.1 Parameter settings
  3.2 Upgrading from RC1
4 Usage
  4.1 List of vehicles
5 Credits
6 License
7 Obtaining the source



-------
1 About
-------

The Dutch Tram Set is New Graphics Set which adds a great number of both 
historical and current Dutch trams to OpenTTD.

Dutch Tram Set 2.0.2
MD5Hash:  {{GRF_MD5}}
Version:  5740
GRF ID:   

The Dutch Tram Set attempts to give an historical overview of Dutch 
trams while ensuring quality gameplay. It works well with OpenTTD's 
realistic road vehicle acceleration and for that purpose includes as 
much actual vehicle properties as possible.

Vehicle capacity is optimized for gameplay (higher than actual seated 
capacity, but lower than seated+standee capacity) and based on actual 
vehicle length to maintain historic differences between vehicles. By 
default, the vehicles can carry passengers only, but a parameter option 
allows refitting to all cargo types.

Vehicles are drawn to their historic liveries. Some vehicles even come 
in multiple liveries. A parameter option allows to change all liveries 
to company colours (2CC), aimed at multiplayer games.

Vehicle prices are balanced against the default TTD buses. Tram purchase
is more expensive than bus purchase, but tram running costs are lower 
than bus running costs to compensate for the higher initial investment 
costs. Vehicles in the Dutch Tram Set are furthermore balanced between 
themselves. Purchase costs depend on vehicle weight (material cost), 
power (engine cost) and length (furniture cost). Running costs depend 
on capacity (cleaning cost), speed (maintenance cost) and power 
(electricity consumption).



--------------
2 Requirements
--------------

You need at least OpenTTD 1.2.0 or nightly r23166 to be able to use the 
Dutch Tram Set. A recent version of OpenTTD can be obtained from 
http://www.openttd.org/

If you play TTDPatch, you can get Dutch Tram Set Release Candidate 1 
from http://www.tt-forums.net/viewtopic.php?t=45456
That version is optimized to work within the limitations of TTDPatch. It 
comes with its own readme.txt with instructions on installation and 
configuration.



--------------
3 Installation
--------------

By far the easiest way to install is to aquire the Dutch Tram Set 
via the ingame Content Download feature. How to do this is explained at
http://wiki.openttd.org/Online_content.

If you somehow cannot use the Content Download feature, you need to copy
the Dutch Tram Set grf-file to the OpenTTD data directory. The OpenTTD 
readme explains where you can find this directory.

The final step is to activate the Dutch Tram Set.
This is done via the NewGRF Settings window, which is explained here:
http://wiki.openttd.org/NewGRF.
Now you can use the Dutch Tram Set in your new games.


3.1 Parameter Settings
----------------------

The Dutch Tram Set comes with two parameter settings. These can be 
easily configured ingame, but if you for some reason want to edit the 
configuration file manually the following details will be of use:

1st parameter: Set vehicle liveries
0: Real liveries (default)
1: Company colours

2nd parameter: Set vehicle refit options
0: Passengers only (default)
1: Town cargo types (passenger, mail and express cargo classes only)
2: All cargo types


3.2 Upgrading from RC1
----------------------
The Dutch Tram Set 2.0.0 should be compatible with the earlier RC1. You 
can upgrade all your games at once by removing the Dutch Tram Set RC1 
from OpenTTD's data directory or content_download/data directory. Make 
sure you have the new version downloaded and installed before you do so 
though. When loading an existing savegame, OpenTTD will now automatically 
select the new version as compatible version.

However, if you really want to play safe, just keep both versions and 
only use the new version in new games.

A known issue with upgrading existing savegames is that articulated 
vehicles will look as if they have fallen apart. While this looks weird, 
it should not give further problems. Once the vehicle has visited a 
depot it should look normal again.



-------
4 Usage
-------

Make sure the Dutch Tram Set is activated in the NewGRF Settings and
that you have started a new game. The first tram will be available 
starting from around 1905 (the game randomizes this, so it can be a 
little earlier or a little later).

You can access the tramway construction tools by holding the road 
construction button in the main toolbar and selecting tramway 
construction from the drop-down menu. Be aware that you can only 
purchase trams inside a tram depot and that trams will only run on tram 
tracks, not on rail tracks nor roads.


4.1 List of vehicles
--------------------

Intr | Vehicle Name
-----|----------------------------
1905 | HTM 21-168 'Little Fords'
1908 | RET 127-151 'Threewindows' 
1913 | RET 152-201 'Parkwagons' 
1929 | GETA 70-75
1929 | HTM 821-830
1929 | HTM 821-830 + 751-781
1940 | NBM 50 + 3 trailers
1948 | GVB 491-550 'Threeaxles'
1948 | GVB 491-550 + 951-1000 'Threeaxles'
1948 | HTM 201-216 'Swiss' 
1948 | HTM 201-216 + 751-781 'Swiss' 
1957 | RET 231-244 'Schindlers'
1964 | RET 351-386 'Düwags'
1971 | HTM 1301-1340 'PCCs'
1971 | HTM 1301-1340 + 2101-2130 'PCCs'
1974 | GVB 725-779 (8G) 'Airwagons'
1981 | HTM 3001-3147 'GTL8'
1983 | Connexxion 5001
1990 | GVB 817-841 (12G) 'Stairwagons'
2002 | GVB 2001-2151 'Combino'
2003 | RET 2001-2060 'Citadis'
2006 | HTM 4001-4072 'Citadis'
2012 | Future 2001 'Flexity Outlook'
2022 | Future 4001 'Rendallyne'
2032 | Future 6001 'SlrTrm'



---------
6 Credits
---------

The Dutch Tram Set is created by:
* Rendall
* FooBar

Code:
-----
* FooBar

Graphics:
---------
* Rendall  (all vehicles but the ones below)
* FooBar   (GVB 725-779 (8G) 'Luchtwagens', GVB 2001-2151 'Combino', 
            RET 2001-2060 'Citadis', HTM 4001-4072 'Citadis')
* Bastiaan (Connexxion 5001-5027)
* Ameecher (initial drawings Flexity Outlook)
* Purno    (pantographs)

Makefile system:
----------------
* Ingo von Borstel (planetmaker)

Special Thanks to:
------------------
* Translators
* NML developers
* Everybody who helped during development of RC1
* Over 136836 people who downloaded RC1
* #openttdcoop DevZone for providing the repository, bug tracker, 
  nightly builds and much more!



---------
5 License
---------

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



----------------------
7 Obtaining the source
----------------------

The source code can be obtained from the #openttdcoop DevZone at
    http://dev.openttdcoop.org/projects/dutchtramset
or via mercurial checkout
    hg clone http://hg.openttdcoop.org/dutchtramset

How to build from source and the requirements for that are included 
with the source in the file /docs/building_from_source.txt.
