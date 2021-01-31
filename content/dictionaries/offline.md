---
title: Offline dicts
---

## Tools elsewhere

- Apps! \[[sp](http://sparshapps.com/), [SJ](https://play.google.com/store/apps/developer?id=Srujan+Jha), [GP](https://play.google.com/store/search?q=sanskrit&c=apps&docType=1&sp=CAFiCgoIc2Fuc2tyaXR6BRgAwAECigECCAE%3D:S:ANO1ljKT9XE), [BV_GOI](http://sanskrit.bharatavani.in/it-tools/)\]
    - Make them available on phones as convenient apps ([S](http://sparshapps.com/)) and as stardict/ goldendict files ([here](https://sites.google.com/site/sanskritcode/dictionaries), **[A](http://www.aupasana.com/stardict)**, **[H](http://sanskrit.inria.fr/goldendict.html)**).
    - On windows [here](https://sourceforge.net/projects/sandic/files/stats/timeline?dates=2012-03-01+to+2017-04-24).

## Stardict

Introduction: Stardict dictionaries are versatile and easy to use with a number of programs on a variety of devices. This project focuses on making available Indian language dictionaries in this format and enabling their easy installation and use.

### Motivation
There are so many dictionary apps. What is the advantage of using this system?

- Usually dictionary apps carry one dictionary, perhaps 5 at most. This system brings many more (100+) dictionaries in one single app.
- So, a user can easily see the descriptions of a word in a dozen dictionaries one below the other.
- Also, both devanAgarI and latin-based scripts are supported for lookups (sometimes even others, like telugu).

### Dictionaries

- We collect and offer several dictionaries (including those prepared elsewhere). A complete list of dictionary indices [is here](https://github.com/sanskrit-coders/stardict-dictionary-updater/blob/master/dictionaryIndices.md) (and, mirrored with some delay [here](https://github.com/nangia/pydictupdater/blob/master/downloader.py#L7)).

- These include:
    - [stardict-sanskrit project](https://github.com/indic-dict/stardict-sanskrit)  \- see these [tars.MD files](https://github.com/indic-dict/stardict-sanskrit/search?utf8=%E2%9C%93&q=filename%3Atars.MD). 
    - [stardict-kannada project](https://github.com/vvasuki/stardict-kannada) :   \- see these [tars.MD files](https://github.com/indic-dict/stardict-pali/search?utf8=%E2%9C%93&q=filename%3Atars.MD).. Announcement [here](https://groups.google.com/forum/#!topic/sanskrit-programmers/qrYQWRU4zhU).
    - [stardict-pali](https://github.com/indic-dict/stardict-pali) project: See dictionary archive links in [tars.MD](https://github.com/indic-dict/stardict-pali/blob/master/en-head/tars/tars.MD). Announcement [here](https://groups.google.com/forum/#!topic/sanskrit-programmers/5XBms03IRus).
    - [stardict-hindi](https://github.com/indic-dict/stardict-hindi).
    - stardict-telugu. stardict-tamil.  stardict-bengali.  stardict-assamese.  stardict-marathi. 
    - And others

#### Stardict dictionaries elsewhere:
- aupAsana.com collection (with very useful installation / usage tips) : [here](http://www.aupasana.com/stardict). Further tips for Linux and Android [here](https://groups.google.com/d/msg/sanskrit-programmers/6kvUHtJfzQE/WrQLZeS-n_AJ).
- sanskrit.infria.fr [here](http://sanskrit.inria.fr/goldendict.html).

### How to install and use dictionaries on your device?

- Overview:
    - install the dictionaries on your device (see recommendations and notes below).
    - install a dictionary app (see recommendations and notes below).
- Installation of dictionary data is very simple in most cases!
- Instructions from aupAsana.com [here](http://old.aupasana.com/stardict).
- Video tutorials: [koshadarshanam series](https://www.youtube.com/watch?v=bkhD--yCrBI&list=PLmozlYyYE-EQJygdRR0vGVdRtSzvrlFXc) by Chandrasekharan Raman of Vyoma pAThashAla

#### Android:
- Handouts: [2019](https://drive.google.com/file/d/18H3E7MFiZGVdwvHFyWjJXqlT7eJvk8UW/view).
- If you have Android 5.0+: easy with Stardict Dictionary Installer app on android; available from [play store](https://play.google.com/store/apps/details?id=sanskritcode.sanskritdictionaryupdater) or [amazon store](https://amazon.com/dp/B07HBPZ7P6) or as an [apk](https://raw.githubusercontent.com/sanskrit-coders/stardict-dictionary-updater/master/app/release/app-release.apk)
    - Ratings certificate: [here](https://iarcweb.azurewebsites.net/Dashboard/Certificate/74e40614-671c-421e-9969-1c80da21a267).
    - Code for this is available for any one to copy and modify [here](https://github.com/indic-dict/stardict-dictionary-updater). (May a 1000 apps bloom!) If you want to contribute new dictionaries to the [stardict-sanskrit project](https://github.com/vvasuki/stardict-sanskrit), that is welcome too.
- On other Android devices, use [https://github.com/nangia/pydictupdater](https://github.com/nangia/pydictupdater) .
- Still having trouble despite the above? Further workaround tips (if they are necessary) for Android are [in this email](https://groups.google.com/d/msg/sanskrit-programmers/6kvUHtJfzQE/WrQLZeS-n_AJ).

#### Desktop computer options:
- In windows: [SanskritDictionariesInstaller.jar](https://archive.org/download/SanskritDictionariesInstaller/SanskritDictionariesInstaller.jar)  ([github source](https://github.com/avinashvarna/SanskritDictionariesInstaller))
- Install Java and use [dict-tools](https://github.com/sanskrit-coders/dict-tools) jar:
  - Download [dict-tools.jar](https://github.com/sanskrit-coders/dict-tools/raw/master/bin/artifacts/dict-tools.jar).
  - `java -jar bin/artifacts/dict-tools.jar install --destinationPath=/home/vvasuki/sanskrit-coders/stardict-dicts-installed/ --dictRepoIndexUrl=https://raw.githubusercontent.com/sanskrit-coders/stardict-dictionary-updater/master/dictionaryIndices.md`
- Arch linux : [stardict-indic-update/](https://aur.archlinux.org/packages/stardict-indic-update/).
- Install python 2.7 and use [https://github.com/nangia/pydictupdater](https://github.com/nangia/pydictupdater)
- You could just use the instructions analogous to the ones supplied [here](https://github.com/indic-dict/stardict-sanskrit/blob/master/README.md). 

### Recommendations for dictionary apps
#### Android:

- Goldendict (paid): [here](https://play.google.com/store/apps/details?id=mobi.goldendict.android).

Free alternatives:
- ebdic.
  - Google play link, inactive as of 2018-08: [com.twn.ebdic](https://play.google.com/store/apps/details?id=com.twn.ebdic)
  - lalitAlAlita strongly endorses this \[[link](https://groups.google.com/d/msg/sanskrit-programmers/z1tCiCwvk04/sU9NEdxQBQAJ)\].
  - Install via downloading [apk](https://apkpure.com/ebdic/com.twn.ebdic).
- [colordict](https://play.google.com/store/apps/details?id=com.socialnmobile.colordict).
    - Cannot handle dict.dz files without uncompressing. Slightly higher rate of error reports from this app.
- Goldendict free
    - The number of active dictionaries is limited to 5. Buy the paid version for ad-free unlimited dictionaries experience.
- DictAide ([play store](https://play.google.com/store/apps/details?id=com.arjerine.dictaide&rdid=com.arjerine.dictaide))
    - Ad supported.
    - Poor unicode support, rather clunky as of 2017.  

#### iphone
2019 handout [here](https://drive.google.com/file/d/1C-5Nxmwtax7xWjFNDK7wbksMH60pg5gc/view) replicating aupasana.com instructions.
                
#### Desktop computers: 
- [Goldendict](http://goldendict.org/download.php).
- Special handout for windows users: [2019](https://docs.google.com/document/d/1j8HQ9ySOXekgD56yNsfMAjlWv8XOF4_k-gtUhQVtoYA/edit#).

##### Mac 
- use [0.8 dmg](http://downloads.sourceforge.net/goldendict/goldendict-0.8.0-macosx.dmg).
    - Note from ajita: "The one problem I have with that version is that if I leave it running in the background, and allow the laptop to go to sleep, it crashes. So, I typically exit out of goldendict once I'm done with it."
- Use the native dictionary app after some conversion (DictUnifier) \[[BVP13](https://groups.google.com/forum/#!searchin/bvparishat/Dictunifier%7Csort:relevance/bvparishat/oAIJWNnosh8/Idx0N9rGQVgJ)\].
- Native osx dictionaries are available at:
  - [ArShadRShTi site](https://arshadrishti.org/sanskrit-tools/#dictionaries)
  -  [osx-sanskrit](https://github.com/indic-dict/osx-sanskrit)
  -  [osx-sanskrit-kAvya](https://github.com/indic-dict/osx-sanskrit-kAvya)
  -  [osx-sanskrit-vyAkarana](https://github.com/indic-dict/osx-sanskrit-vyAkarana)

  

### Feedback

*   [BVP201702](https://groups.google.com/forum/#!searchin/bvparishat/stardict%7Csort:relevance/bvparishat/HfXleEXdvWM/u8P97bbGAAAJ)  
    

## For Dict makers
### Wiki downloading

- Catscan [here](http://tools.wmflabs.org/catscan2/catscan2.php?language=sa&project=wikiquote&depth=1&categories=%E0%A4%B8%E0%A5%81%E0%A4%AD%E0%A4%BE%E0%A4%B7%E0%A4%BF%E0%A4%A4%E0%A4%BE%E0%A4%A8%E0%A4%BF&ns%5B0%5D=1&ns%5B14%5D=1&get_q=1&doit=1).
        

### Plans

- Make new dictionaries
    - gAndhArI dictionary (" Once it is complete and correct (a goal we hope to achieve in the next few years), we will publish it under a Creative Commons license that will allow redistribution.")
    - DSAL ("We are preparing apps for some of the Hindi and other dictionaries under new grant funding. But the Hindi Shabdasagar is under a license which does not permit production of a mobile version.")
    - sandic DP [here](https://sourceforge.net/projects/dhatu-patha/files/sources/).
    - Monier williams : sanskrit terms in entries.
    - ChandaH
    - alankArAH
    - हिन्दी-कोशाः
        - wiktionary
    - कन्नड-कोशः
        - kittel
    - पद-साधुता-कोशः from DCS।  
    - Others from IITS Koeln [here](http://www.sanskrit-lexicon.uni-koeln.de/index.html).
        - pALI devanAgarI dictionaries.
    - GOI bhAratavANI [here](http://bharatavani.in/dictionary-surf/?did=2&letter=%E0%A4%85&start=0&language=Hindi).
    - संस्कृतम्
        - अमरकोशः
            - बहुभाषा-अमरकोशः [अत्र](http://sanskrit.jnu.ac.in/amara/viewdata.jsp?varga=27)।
            - अजितस्य हिन्दी-अमर-कोशः।
        - तिरुपतिस्थ-राष्ट्रियसंस्कृतविद्यापीठस्य प्रकाशनानि [अत्र](http://www.wilbourhall.org/sansknet/)।
        - ए​वं प्र​त्येकस्याऽपि शब्दस्य व्याकरण-विशेषप्रदर्शकास् स्युः कोशाः। 
            - कश्चित् स्वकोशे "जक्ष्"धातुं पश्यतीति चिन्त्यताम्। यदि तत्क्षणं सः अदादिगणे धातुरयं जक्षाद्यन्तर्गने पाठित इति सूच्यते, शुद्धप्रयोगे तल् लाभाय। अथवा कश्चित् "अन्य"-शब्दपरीक्षको ज्ञाप्यते चेत् "सर्वादिगणे दृश्यते शब्दोऽयम्" इति, पुनस् स एव लाभः।
        - मनीषस्य संस्कृत-कोशाः।
        - संस्कृत-कन्नड-कोशः। (अर्जुनेन चर्च्यते।)
        - संस्कृतभारती-प्रकाशनानि
    - rAmAyaNa-vyAkhyA-koshaH [itaH](http://www.valmiki.iitk.ac.in/content?field_kanda_tid=1&field_sarga_value=1&field_sloka_value=78&language=dv&enable_contplay=1&sckt=1&scgr=1&scty=1&scaa=1&scmt=1&scnb=1&scss=1).
    - Sanskrit picture dictionary. (Useful in producing illustrated versions of kAvya-s.)
    - Ayurveda
        - e-nighaNTu koshas [here](http://niimh.nic.in/ebooks/e-Nighantu/?mod=read). (copy pasting complete chapters, do minor processing to get prAtipadika-s)
- Fix defects
    - mAdhavIya-dhAtu-vRtti etc.. \[Details [here](https://groups.google.com/forum/#!topic/samskrita/Lv8pWfV1ZAw)\]
- Package dictionaries better
    - For linux
    - For Android
    - Provide an online interface.


### General guidelines


- Never reinvent the wheel - for example, if you can exploit preexisting dictionary format software, don't waste time writing a new one. Same with dictionaries.
- Always publish and maintain the dictionary sources in some simple form parseable by both humans and machines, so that you can make/ accept corrections; and people can transform it easily into whatever format they're comfortable with - say text or html files or stardict or babylon.
- When you make dictionaries out of certain published sources (such as IITS Koeln), please do so with (I'd suggest python or scala) scripts which can be reused to update the stardict/ babylon files when the source files are updated with corrections. That is - don't do it manually in a text editor.

