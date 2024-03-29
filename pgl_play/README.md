# PGL Play!
**A small collection of fun commands.** Configurations available for edit in `config.lua`.


## Dependencies
* [3dme](https://github.com/Sheamle/3dme) - 3D Display `/me` commands

## Installation
1. Download **[3dme](https://github.com/Sheamle/3dme)** & **pgl_play**
2. Place `3dme` & `pgl_play` folders in the server `resources` folder
3. Add `start 3dme` & `start pgl_play` in the `server.cfg`
4. Enjoy!

*Already using 3dme? Easy, just install pgl_play!*

*Using an alternative to 3dme? In `client.lua`, look for `TriggerServerEvent("3dme:shareDisplay", text)` and change that line to call the display function of your 3D display script.*

## Usage
Each command contains a usage suggestion as you begin to type it, so typing `/roll` will show `/roll [Dice] [Sides]` with tooltips on each argument. Providing an invalid argument won't break anything, it will just use the defaults where needed.

## Commands
* `/roll [Dice] [Sides]` - Rolls x dice with y sides (Default 1 dice, 6 sides)
* `/rps [r/p/s]` - Rock, Paper Scissors (Choose one)
* `/flip` - Flips a coin (Heads or Tails)

There will be improvements and more commands with each new version.

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

## Version History
*Version number can be found in `__resource.lua`*

**0.0.4 Stable**
* Improved roll animation, thanks to AlphieTV

**0.0.3**
* Initial Release to GitHub
