Summary
=======

I needed to layout full strings for a project so I extended donb's wonderful DraFont library. This version will dump all ascii characters from a font by default, and provide a method for laying out strings.

New in version 1.1: String spacing settings!

For the brave, there is a git repo at github.com/pipakin/OpenSCAD-Font-Importer (This is not for the faint of heart, my python skills are substandard at best)

NOTE: Complicated glyphs can take a long time to render, and I've managed to crash OpenSCAD a LOT by using long strings. For example, "FONTZ!" takes 1 minute 30 seconds to render, while "This is a test string." takes significantly longer (on the order of 13 minutes). So if you are going to use this for something, I recommend generating your string, rendering it, and then outputting an STL to use in your design with import_stl.

Instructions
============

Prerequisites:
- Python
- Freetype (2.4.4)
- Freetype-py

    USAGE: python full_ddump -f [font file] -o [output file] -m [module name]

Optional Parameters:
    --strings [name of strings file] (default none)
    --size [size of characters] (default 12)
    --height [z height of characters] (default 10)
    --startcode [hex unicode value to start at] (default 021)
    --endcode [hex unicode value to end at] (default 07E)
    --spacing [size in mm of spacing between letters] (default 0)
    --space [character to base the size of spaces after] (default 'x')
    --spacewidth [specific size of the space character in mm] (default none)

Your scad file must include the produced scad. The produced scad references the font_base.scad file, so you'll need it too.
example: `include <FreeSerif.scad>`

To render a letter, you call the module with that letter (or ordinal)
Example: `FreeSerif("S");` or `FreeSerif("0x41");` or `FreeSerif(65);`

To use string layouts, you have to provide a string file. This file is a list of strings (separated by newlines). To use a string, it must match this file exactly. Then you can call the module with those strings.
Example: `FreeSerif("FONTZ!");`
