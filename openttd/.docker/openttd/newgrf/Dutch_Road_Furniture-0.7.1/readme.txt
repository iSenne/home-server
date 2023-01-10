Dutch Road Furniture 0.7.1
-----------------------------------
Dutch Road Furniture is an eyecandy object NewGRF that features 
road furniture which can be found alongside Dutch roads.

----------
0 Contents
----------

1   About
2   General information
    1.1 Requirements
    1.2 Installation
    1.3 Parameter settings
    1.4 Usage
3   Background information
    3.1 Fingerposts
    3.2 Road signs
    3.3 Hard Shoulders
    3.4 Motorway Medians
    3.5 Motorway Direction Sign
    3.6 Motorway Direction Gantry
    3.7 Motorway Matrix Signs
    3.8 Hard shoulder end pieces
    3.9 Median end pieces
    3.A Matrix Sign Activators
4   Known issues
5   Frequently Asked Questions
6   Credits
7   Contact information
    7.1  Bug reports
    7.2  Other problems
    7.3  General enquiries
8   License
9   Obtaining the source



-------
1 About
-------

Dutch Road Furniture is an eyecandy object NewGRF that features 
road furniture which can be found alongside Dutch roads.

It includes things such as traffic signs and direction signs, multiple
building blocks to create motorways including hard shoulders, gantries
and more.

Dutch Road Furniture 0.7.1
MD5Hash:  {{GRF_MD5}}
Version:  5755
GRF ID:   



---------------------
2 General information
---------------------

1.1 Requirements
----------------
- OpenTTD 1.2.0-beta4 and newer or nightly r23842 and newer.
- TTDPatch is not supported.


1.2 Installation
----------------
OpenTTD:
  see http://wiki.openttd.org/NewGRF
  This NewGRF is available from the ingame Online Content.

TTDPatch:
  not applicable.

1.3 Parameter settings
----------------------
This NewGRF comes with two parameter settings. One parameter allows you
to manually override the automatic road set support. Currently OpenGFX
roads and UK Roads are included. The other parameter allows to re-enable
roadside trees and streetlights. These are disabled by default as they
look particularly bad on motorways.

Set the parameters before starting a new game. Once started they 
cannot be changed any longer.

Useful details if you need to set the parameters manually in the
configuration file:

1st parameter: Road set support
0: Automatic detection (default)
1: OpenGFX Roads
2: UK Roadset / UK Roads with Signs
3: American Road Replacement Set

2nd parameter: Roadside trees and streetlights in towns
0: Disabled (default)
1: Enabled
Note that other NewGRFs can override this, so make sure that Dutch 
Road Furniture is below those NewGRFs in the NewGRF configuration list
when using this setting.

3rd parameter: Ignore introduction and end of life dates
0: Disabled (default)
1: Enabled


1.4 Usage
---------
Everything in this set are so-called objects. This means that they have
no other purpose than just sit there and look nice. Road vehicles can't 
use the motorway tiles and road signs don't help them to find their
destinations. It's all eye-candy.

Objects can be built from the Landscaping toolbar. Click the (rightmost)
Place Object button from that toolbar to access the Object Selection
window. The objects from this NewGRF are listed in the "Dutch Road
Furniture" categories. Select an object of your choice, then select the 
orientation you want to build and finally click on the tile on the map
you want the object built on.

For the usage of the "Matrix Activators" please consult the pertaining 
section in the following chapter.



------------------------
3 Object information
------------------------

In order of appearance

3.1 Fingerposts
---------------
The fingerposts come in four objects for one, two, three or four 
directions.

First available:    1894
                    First Dutch fingerpost installed by ANWB (General 
                    Dutch Cyclists Association). Used as firewood in the
                    winter of 1894. Steel replacements in same style 
                    from 1896.
Second generation:  1946
                    Redesign with larger fingers. Intro year not 
                    historically correct.
Third generation:   1961
                    Again a complete redesign. This design was 
                    modernized around the year 2000, but differences 
                    are too small to display in TTD scale.


3.2 Road signs
--------------
There are road signs available as separate object. Please note that
they still consume a whole tile, making the rest of the tile unusable.

The signs are what you make of it, but what they're intended to be is
indicated in the object's descriptions.


3.3 Hard Shoulders
------------------
Introduced April 15, 1937. This is the exact date that the first Dutch 
motorway opened between Voorburg and Zoetermeer (Rijksweg 12).

Corners are formed automatically by detecting adjacent hard shoulder 
tiles in case the shoulder doesn't continue straight on. Outside corners
are preferred over inside corners.

Because the hard shoulders "step outside their tiles" they may glitch 
slightly reveiling some corners of the underlaying terrain, but generally
this isn't too bad.


3.4 Motorway Medians
--------------------
Introduced April 15, 1937. If you build the two carriageways of your 
motorway one tile apart, you can add the medians in the middle. These 
also add a third lane to each of the two carriageways (not realistic 
in 1937).

The medians initially come with a hedge between the two carriageways.
From September 28, 1963 newly built medians will feature steel guardrails
instead of the hedge.

With these medians you must do your terraforming a little more carefully 
than with the hard shoulders. You will be warned by a symbol if you do 
something that isn't supported:
* Traffic incident sign: this slope combination isn't possible 
  graphically as this would lead to weird slopes in the road that 
  vehicles impossibly can drive on safely.
* Road works sign: you have some unnecessary slopes in the underlaying 
  terrain. Do some digging as a more simple terrain is possible.

Other remarks of the hard shoulder also apply here.


3.5 Motorway Direction Sign
---------------------------
First available:    1946
                    First sign of this type, showing both destination of
                    motorway and destinations of exit.
Second generation:  1969
                    Redesign now only showing exit destinations.
Third generation:   1982
                    Adding of N route numbers.
Fourth generation:  1997
                    Change to retroreflecting materials.
Fifth generation:   2008
                    Redesign based on German style motorway signs (but 
                    essentially we're just going back to a modernised 
                    version of the 1946 signs).

The signs are designed to be placed instead of a hard shoulder tile and
for that purpose come with their own hard shoulder.


3.6 Motorway Direction Gantry
-----------------------------
First available:    1967
                    First sign of this type, showing both destination of
                    motorway and destinations of exit. With vertical 
                    supports.
Second generation:  1974
                    Addition of light units to illuminate the signs at
                    night.
Third generation:   1977
                    New /\-shaped support design.
Fourth generation:  1982
                    Adding of N route numbers.
Fifth generation:   1997
                    Change to retroreflecting materials.
Sixth generation:   2008
                    Redesign based on German style motorway signs.

The signs are designed to be placed instead of a hard shoulder tile and
and a median tile. When placed on opposite sides of a road they together 
will form a single gantry. Has some checks in place to prevent bad 
construction, but is not entirely fool-proof.


3.7 Motorway Matrix Signs
-------------------------
Available from 1979.

Building requirements are identical to the Motorway Direction Gantry.

Use the Matrix Sign Activators (see section 3.7) to display something
on the matrix signs.


3.8 Hard shoulder end pieces
----------------------------
Use these end pieces to give your hard shoulders a tapered end (or 
beginning). They will select start/end automatically depending on 
ajacent shoulder tiles.

Available in two flavours with signs and one without signs. The version
with the highway end sign will produce a highway start sign when used
at the beginning of a hard shoulder.


3.9 Median end pieces
---------------------
Combined start and ending for motorway third lanes. If you build 
multiple of these in a line you'll get arrows on the road surface 
incidating that the third lane ends.

Corners are not supported, you must build this object in a straight line.


3.A Matrix Sign Activators
--------------------------
The Matrix Sign Activators are used to display certain predefined 
signs on the Motorway Matrix Signs. By default the matrix signs display
nothing, but by buiding an Activator next to the gantry they will 
display something (what they display depends on the Activator you've 
built).

The Activators need to be built right next to the gantry support. You 
can choose to build the Activator on either side of a gantry. In case of
a single-side gantry you can also build the Activator on the exact 
opposite side of the motorway.

If you build two different Activators on either side, the northernmost
Activator will take precedence.

Examples:
      A               A               A
- - - G - - - G - - - G - - - G - - - - - - - - - - - 
= = = = = = = = = = = = = = = = = = = = = = = = = = = 
| | | G | | | G | | | G | | | G | | | G | | | G | | | 
= = = = = = = = = = = = = = = = = = = = = = = = = = = 
- - - G - - - G - - - - - - - - - - - G - - - G - - - 
              A               A               A
Key:
- Shoulder
= Road
| Median
G Gantry
A Activator



--------------
4 Known issues
--------------

- UK Roads and American Road Replacement Set support is incomplete 
  for left-hand-drive median end pieces.
  > FooBar doesn't need this, so he isn't drawing this. If you like 
  this added to the set, please get someone (perhaps yourself) to draw 
  the graphics. Then FooBar will happily include it in the set. Please 
  see the source file gfx/ogfx/derderijstrook_eindstukken_links.png for 
  the sprites required.
  
- Object order in purchase menu is subobtimal.
  > To maintain compatibility with previous releases new objects are 
  added to the end of the list.



----------------------------
5 Frequently Asked Questions
----------------------------

If your question is not answered by the text above, you may find an 
answer here.

Q: Will other road sets be supported?
A: Yes, if somebody provides the graphics for it. Contact FooBar if
   you're interested in making these graphics.

Q: <insert object> is glitching, why is that?
A: Many objects glitch because they are drawn outside their tile. If you
   think you've found a bug, please post a screenshot in the topic.

Q: Can I have the matrix signs display X?
A: Yeah, why not. Ask in the topic.

Q: Will you add (sign) X from country Y?
A: No. It's a Dutch set. But you're free to fork the source and change
   it so that it matches your country. Just make sure you adhere to
   the GPL license.

Q: Will you add traffic sign X?
A: Probably not. At TTD scale all signs with the same basic shape will
   look the same. All triangular and circular white signs with a red
   border are already in the set. So use the basic shape provided, and 
   your imagination!

Q: Will there be motorway medians that don't require a tile between the
   two roadways?
A: No, that's unfortunately not possible without heavy glitching.
   See http://dev.openttdcoop.org/issues/3079#note-6 for an example
   grf and screenshot.



---------
6 Credits
---------

Code:
 Jasper Vries (FooBar)
 
Graphics:
 Richard Wheeler (Zephyris)
  - Parts of OpenGFX road graphics are reused for the hard shoulders
    and third lanes.
 Leanden
 - Road surface graphics matching UK Roadset / UK Roads with Signs.
 RL Conroy
 - Matrix signs used on gantries.
 Soeb (Stanislaw Gackowski)
 - OpenGFX farm hedges are reused for the medians.
 oberhümer
 - Median end pieces are drawn from his example.
 Quast65
 - UK Roadset median end pieces
 zooks
 - American Road Replacement Set support.
 Jasper Vries (FooBar)
 - All other graphics.

Makefile system:
 Ingo von Borstel (planetmaker)



-----------------------
7   Contact information
-----------------------

7.1 Bug reports
---------------
Please report any bugs you find at
  bug tracker: http://dev.openttdcoop.org/projects/dutchroadfurniture/issues
  or forum topic: http://www.tt-forums.net/viewtopic.php?t=58107

Always included a detailed description of the bug, preferrably with
screenshot and savegame. Also state the exact game version you're using, 
as well as the version of this NewGRF.

If you have a savegame that includes NewGRFs not available on OpenTTD's 
Online Content, then please try to reproduce the bug in a new game 
which has all NewGRFs easily accessible.

If you're using a patched version of the game, please try to reproduce
the bug on an official game build. If you can't reproduce the bug, then
don't report it here but in the forum topic of the patch(pack) instead.


7.2 Other problems
------------------
If you have any problems using this NewGRF that are not covered in the 
Frequently Asked Questions above, then you can ask your questions in the
forum topic: http://www.tt-forums.net/viewtopic.php?t=58107


7.3 General enquiries
---------------------

If you have any queries that cannot be asked in the forum topic, then
contact FooBar via Private Message at www.tt-forums.net or send
an email to FooBar at foobar@jaspervries.nl.



---------
8 License
---------

Dutch Road Furniture - Eyecandy for OpenTTD
Copyright (C) 2011-2012 Jasper Vries (FooBar)

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
9 Obtaining the source
----------------------

The source code can be obtained from the #openttdcoop DevZone
via source browser:
    http://dev.openttdcoop.org/projects/dutchroadfurniture/repository
or via mercurial checkout:
    hg clone http://hg.openttdcoop.org/dutchroadfurniture
or via a source bundle download (releases and nightlies only):
    http://bundles.openttdcoop.org/dutchroadfurniture/

How to build from source and the requirements for that are included 
with the source in the file other/building_from_source.txt.
