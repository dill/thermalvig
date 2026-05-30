`thermalvig`: Momir with a thermal printer
==========================================


**This is work in progress** This text will disappear when the project is ready to use.

[Momir](https://mtg.wiki/page/Momir) is a Magic: The Gathering format which is primarily played electronically. This is because the "deck" consists of:

- exactly 60 basic lands.
- exactly 1 [Momir Vig, Simic Visionary Avatar](https://scryfall.com/card/pmoa/61/momir-vig-simic-visionary-avatar)

Momir Vig, Simic Visionary Avatar has the following ability

"X generic mana, Discard a card: Create a token that's a copy of a creature card with mana value X chosen at random. Activate this ability only any time you could cast a sorcery and only once each turn."

So one needs to be able to draw a creature (with X converted mana cost) from all of the creatures in Magic, at random. This makes things a bit tricky for paper players.

Enter cheap thermal printers.

This repo has code to:

1. draw random creatures from the database held at [Scryfall](https://scryfall.com/docs/api/bulk-data)
2. print a creature "card" using a thermal printer (in this case a Phomemo M110)

The idea being that one can build a neat little package using either a small laptop or a RaspberryPi-a-like.


# Getting started

1. Download the current card database.
  - This can be done via the api, see [here](https://scryfall.com/docs/api/bulk-data)
2. Setup the shuffler.
3. Setup printer.
4. Play!



