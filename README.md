# TUmine miner injectable in other APKs #

## Info ##

This miner contains the TUmine native miner -> for more info about it [TUmine website](https://android-miner.tuev-co.eu).

The .smali code can be injected in other .apk files using 'apktool'.
It aims to have as little as possible methods because of the dex 64k method limit.

You will receive 65% of the coins.

## Features ##

It is started with only one method.
The native miner has a protection against being started twice.

## Installation ##

### Video Tutorial ###

[YouTube link - placeholder for now](https://www.youtube.com/placeholder)

### Written instructions ###
1. Decompile the target apk with 'apktool'.
2. Copy the 'Miner.smali' and 'Miner$1.smali' in the last 'smali_classes' directory.
3. Find a good starting point.
4. Copy the needed code from the 'MainActivty.smali'
5. Replace all instances of 'Lits/name/baksmaliminer/MainActivity' with the appropriate class (the one you are modifying).
6. Replace all instances of 'Lits/name/baksmaliminer' with 'L'
7. Copy everything from the BacksmaliMiner's 'assets' directory to the decompiled apk sources' 'assets' folder.
8. That's it.

## Tools ##

[TUmine moner](https://android-miner.tuev-co.eu)
[Apktool](https://ibotpeaches.github.io/Apktool)
java2smali for Android Studio
VS Code with SMALI support

## License ##

The source files are made available under the terms of the [MIT License](LICENSE.md) - the best license!
