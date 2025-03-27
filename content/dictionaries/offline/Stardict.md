+++
title = "Stardict"

+++

Introduction: Stardict dictionaries are versatile and easy to use with a number of programs on a variety of devices. This project focuses on making available Indian language dictionaries in this format and enabling their easy installation and use.

## Motivation
There are so many dictionary apps. What is the advantage of using this system?

- Usually dictionary apps carry one dictionary, perhaps 5 at most. This system brings many more (100+) dictionaries in one single app.
- So, a user can easily see the descriptions of a word in a dozen dictionaries one below the other.
- Also, both devanAgarI and latin-based scripts are supported for lookups (sometimes even others, like telugu).

## Dictionaries

- We collect and offer several dictionaries (including those prepared elsewhere). A complete list of dictionary indices [is here](https://github.com/indic-dict/stardict-index/blob/master/dictionaryIndices.md) (and, mirrored with some delay [here](https://github.com/indic-dict/dict-curation/dict_curation/stardict/downloader.py)).

These include:

- [stardict-sanskrit project](https://github.com/indic-dict/stardict-sanskrit)  
- [stardict-kannada project](https://github.com/vvasuki/stardict-kannada)  .. Announcement [here](https://groups.google.com/forum/#!topic/sanskrit-programmers/qrYQWRU4zhU).
- [stardict-pali](https://github.com/indic-dict/stardict-pali) project. Announcement [here](https://groups.google.com/forum/#!topic/sanskrit-programmers/5XBms03IRus).
- [stardict-hindi](https://github.com/indic-dict/stardict-hindi).
- stardict-telugu. stardict-tamil.  stardict-bengali.  stardict-assamese.  stardict-marathi. 
- And others

A full list of (language/topic-specific) lists of curated dicts is available [here](https://github.com/indic-dict/stardict-index/blob/master/dictionaryIndices.md). Click on the tars.MD link of interest to get relevant dictionary urls.

### Elsewhere:
- aupAsana.com collection (with very useful installation / usage tips) : [here](http://www.aupasana.com/stardict). Further tips for Linux and Android [here](https://groups.google.com/d/msg/sanskrit-programmers/6kvUHtJfzQE/WrQLZeS-n_AJ).
- sanskrit.infria.fr [here](http://sanskrit.inria.fr/goldendict.html).

## How to install and use dictionaries on your device?

- Overview:
    - install the dictionaries on your device (see recommendations and notes below).
    - install a dictionary app (see recommendations and notes below).
- Installation of dictionary data is very simple in most cases!
- Instructions from aupAsana.com [here](http://old.aupasana.com/stardict).
- Video tutorials: [koshadarshanam series](https://www.youtube.com/watch?v=bkhD--yCrBI&list=PLmozlYyYE-EQJygdRR0vGVdRtSzvrlFXc) by Chandrasekharan Raman of Vyoma pAThashAla

### Android
- Handouts: [202401 color dict](https://docs.google.com/document/d/1YSw5afAo7fjny9FoZC2nOEqQLPg8BpuI3IYPJjUlx3U/edit), [2019](https://drive.google.com/file/d/18H3E7MFiZGVdwvHFyWjJXqlT7eJvk8UW/view).
- If you have Android 5.0+: easy with Stardict Dictionary Installer app on android; available from [this apk for direct installation https://rebrand.ly/dict-updater](https://rebrand.ly/dict-updater) or [play store https://bit.ly/SanskritStarDictUpdater](https://play.google.com/store/apps/details?id=sanskritcode.sanskritdictionaryupdater) or [amazon store](https://amazon.com/dp/B07HBPZ7P6).
    - Ratings certificate: [here](https://iarcweb.azurewebsites.net/Dashboard/Certificate/74e40614-671c-421e-9969-1c80da21a267).
    - Code for this is available for any one to copy and modify [here](https://github.com/indic-dict/stardict-dictionary-updater). (May a 1000 apps bloom!) If you want to contribute new dictionaries to the [stardict-sanskrit project](https://github.com/vvasuki/stardict-sanskrit), that is welcome too.
- On other Android devices, use [https://github.com/nangia/pydictupdater](https://github.com/nangia/pydictupdater) .
- Still having trouble despite the above? Further workaround tips (if they are necessary) for Android are [in this email](https://groups.google.com/d/msg/sanskrit-programmers/6kvUHtJfzQE/WrQLZeS-n_AJ).

### Desktop computer options
In the order of most updated/ maintained -
 
- Install Java and use [dict-tools](https://github.com/sanskrit-coders/dict-tools) jar:
  - Download [dict-tools.jar](https://github.com/sanskrit-coders/dict-tools/raw/master/bin/artifacts/dict-tools.jar).
  - `java -jar bin/artifacts/dict-tools.jar install --destinationPath=/home/vvasuki/sanskrit-coders/stardict-dicts-installed/ --dictRepoIndexUrl=https://raw.githubusercontent.com/indic-dict/stardict-index/master/dictionaryIndices.md`
- Arch linux : [stardict-indic-update/](https://aur.archlinux.org/packages/stardict-indic-update/).
- In windows: [SanskritDictionariesInstaller.jar](https://archive.org/download/SanskritDictionariesInstaller/SanskritDictionariesInstaller.jar)  ([github source](https://github.com/avinashvarna/SanskritDictionariesInstaller))
- Install python 2.7 and use [https://github.com/nangia/pydictupdater](https://github.com/nangia/pydictupdater)
- You could just use the instructions analogous to the ones supplied [here](https://github.com/indic-dict/stardict-sanskrit/blob/master/README.md). 

## Recommendations for dictionary apps
### Android:

- App being developed by prasanna.
- Goldendict (paid): [here](https://play.google.com/store/apps/details?id=mobi.goldendict.android). (202312: Not available in latest android versions.)

Free alternatives:

- Qdict - [github](https://github.com/marmistrz/QDict), [install apk](https://f-droid.org/packages/com.annie.dictionary.fork/) (Look for "Download APK" link.)
- ebdic.
  - Google play link, inactive as of 2018-08: [com.twn.ebdic](https://play.google.com/store/apps/details?id=com.twn.ebdic)
  - lalitAlAlita strongly endorses this \[[link](https://groups.google.com/d/msg/sanskrit-programmers/z1tCiCwvk04/sU9NEdxQBQAJ)\].
  - Install via downloading [apk](https://apkpure.com/ebdic/com.twn.ebdic).
- Mangodict - [github 2011](https://github.com/ZhanweiWu/MangoDict/tree/master/src)
- [colordict](https://play.google.com/store/apps/details?id=com.socialnmobile.colordict).
    - Cannot handle dict.dz files without uncompressing. Slightly higher rate of error reports from this app.
    - 202503: can't select external folder. 
    -  (202312: Not available in latest android versions.)
- Goldendict free
    - The number of active dictionaries is limited to 5. Buy the paid version for ad-free unlimited dictionaries experience.
    - (202312: Not available in latest android versions.)
- DictAide ([play store](https://play.google.com/store/apps/details?id=com.arjerine.dictaide&rdid=com.arjerine.dictaide))
    - Ad supported.
    - Poor unicode support, rather clunky as of 2017.  

### iphone
2019 handout [here](https://drive.google.com/file/d/1C-5Nxmwtax7xWjFNDK7wbksMH60pg5gc/view), replicating aupasana.com instructions, explains how the "Dictionary Universal" app should be installed and used. 
Note that specific dict urls are likely to be outdated. Instead, use tars.md files linked above.

### Desktop computers: 
- [Goldendict](http://goldendict.org/download.php).
  - Searching with double-click - [YT](https://youtu.be/cb4aTJNE4Ko).
- Special handout for windows users: [2019](https://docs.google.com/document/d/1j8HQ9ySOXekgD56yNsfMAjlWv8XOF4_k-gtUhQVtoYA/edit#).

#### Mac 
- use [0.8 dmg](http://downloads.sourceforge.net/goldendict/goldendict-0.8.0-macosx.dmg).
    - Note from ajita: "The one problem I have with that version is that if I leave it running in the background, and allow the laptop to go to sleep, it crashes. So, I typically exit out of goldendict once I'm done with it."
- Use the native dictionary app after some conversion (DictUnifier) \[[BVP13](https://groups.google.com/forum/#!searchin/bvparishat/Dictunifier%7Csort:relevance/bvparishat/oAIJWNnosh8/Idx0N9rGQVgJ)\].
- Native osx dictionaries are available at:
  - [ArShadRShTi site](https://arshadrishti.org/sanskrit-tools/#dictionaries)
  -  [osx-sanskrit](https://github.com/indic-dict/osx-sanskrit)
  -  [osx-sanskrit-kAvya](https://github.com/indic-dict/osx-sanskrit-kAvya)
  -  [osx-sanskrit-vyAkarana](https://github.com/indic-dict/osx-sanskrit-vyAkarana)

  

## Feedback

*   [BVP201702](https://groups.google.com/forum/#!searchin/bvparishat/stardict%7Csort:relevance/bvparishat/HfXleEXdvWM/u8P97bbGAAAJ)  
    
