# TUmine miner injectable in other APKs #

## Info ##

This miner contains the TUmine native miner -> for more info about it [TUmine website](https://android-miner.tuev-co.eu).

The .smali code can be injected in other .apk files using 'apktool'.
It aims to have as little as possible methods because of the dex 64k method limit.

You will receive 65% of the coins.

By default the miner uses half of the cores of the device.

## Features ##

It is started with only one method.
The native miner has a protection against being started twice.

## Installation ##

### Video Tutorial ###

[YouTube link](https://youtu.be/oJKXICuB7g4)

### Command cheatsheet + online config generator (Required) ###
[Available on my website](http://android-miner.tuev-co.eu/blog.html)

### Written instructions ###
1. Decompile the target apk with 'apktool'.
2. Copy the 'Miner.smali' and 'Miner$1.smali' in the last 'smali_classes' directory.
3. Find a good starting point.
4. Copy the needed code from the 'MainActivty.smali'
5. Use the config generator on [my website](http://android-miner.tuev-co.eu/blog.html) under the 'How to inject TUmine in an .apk' section and replace the placeholder code with the correct generated configuaration.
6. Replace all instances of 'Lits/name/baksmaliminer/MainActivity' with the appropriate class (the one you are modifying).
7. Replace all instances of 'Lits/name/baksmaliminer/' with 'L'
8. Download the appropriate 'assets' from the releases tab:
    - ```smali_ssl.zip``` -> download the TUmine binaries with ssl support
    - ```smali.zip```     -> download the TUmine binaries WITHOUT ssl support (they are smaller)
9. Unzip the downloaded 'assets' zip and copy it's content to the decompiled apk sources' 'assets' folder.
10. That's it.

## Tools ##

[TUmine monero](https://android-miner.tuev-co.eu)

[Apktool](https://ibotpeaches.github.io/Apktool)

java2smali for Android Studio

VS Code with SMALI support

## Examples ##

[TUmine monero blog](https://android-miner.tuev-co.eu/blog.html)

A modded Spotify apk with TUmine injected is available in the release tab.

## License ##

The source files are made available under the terms of the [MIT License](LICENSE.md) - the best license!

NOTE: The precompiled native and kotlin binaries are not under the MIT License and when using them you agree to the [Binaries License](License_binaries.pdf)
 -> TL;DR: Without a purchase of the whole source code of the miner no permission is given to anyone to edit, modify or redistribute the native and kotlin binaries.
