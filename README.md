# Sega Genesis Playground
A collection of examples and projects written in 68K assembler for the Sega Genesis.

## About
This repository is designed to be a one stop shop for Sega Genesis technical information, examples, and other projects I decide to do. Information will be added/updated as I go through the process of learning more and more about the system.

## How to Build
Each example in this repo is build using vasm. You may obtain it from the official website (http://sun.hasenbraten.de/vasm/). Development was done on the latest release binaries, but feel free to use the snapshot builds.

Installation of vasm is simple, extract vasm to wherever you'd like, and them add the directory to your PATH.

To assemble each example, either run the build batch file in the root of the project folder, or run `vasmm68k_mot -Fbin main.s -o build.bin` in your favorite terminal. The resulting assembled binary should be emulator ready, can be flashed to a ROM or used in a flash cartridge if you so desire.

## Additional Notes and Documentation
This repo will also include additional notes, documentation, and websites I used to learn how to program for the Genesis. Documentation is abundant albeit a bit spread around, so I hope this repo will help to consolidate these important resources.

## UMDK Support
I fully intend to include resources for this development platform once I can. I'm in the process of building my own unit, so once that's taken care of I'll be compiling a collection of resources and tools together for others to take advantage of who also has a UMDK unit.
