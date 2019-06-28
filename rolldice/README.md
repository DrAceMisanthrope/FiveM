# RollDice
**A simple FiveM script for rolling dice.** Based on Alphie's RollTheDice, this was expanded to roll a single 6 sided dice by default, with the ability to define the number of dice and the sides on each dice. This supports 1-6 dice, with 2-100 sides on each, with these maximums available for edit in `client.lua`.


## Installation
1. Place `rolldice` folder in the server's `resources` folder
2. Add `start rolldice` in the `server.cfg`
3. Enjoy!

## Usage
* `/roll numOfDice numOfSides`
* eg. `/roll` for a single 6 sided dice
* eg. `/roll 3` for 3, 6 sided dice
* eg. `/roll 6 100` for 6, 100 sided dice

*Providing an invalid argument won't break anything, it will just use the defaults where needed.*

## Credits
* [Dr. Ace Misanthrope](https://github.com/FlyingAce015) - Author
* [Alphie](https://www.twitch.tv/alphietv) - RollTheDice using 3dme (3 dice, 6 sides)
* [Elio / Sheamle](https://github.com/Sheamle/3dme) - 3dme; 3D display of `/me` command

## License
    PacificGL FiveM GitHub Repository
    Copyright (C) 2019 Pacific Gaming League.

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
https://github.com/PacificGL/FiveM/blob/master/LICENSE
