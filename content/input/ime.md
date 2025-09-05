---
title: IME/ typing
---

## Multi-platform solutions
- Keyman (from the christian org SIL)
  - Downloaded site [here](https://keyman.com/).
  - devanAgarI ITRANS-based vedic keyboard - [KM cloud](https://keyman.com/keyboards/itrans_devanagari_sanskrit_vedic).
    - web based version [here](https://sanskritdocuments.org/learning_tools/sanskritvedic.html).
- [medhA](https://github.com/lalitaalaalitah/medhA-keyboard_layout)

## Linux
- fcitx
- See multiplatform options

### m17n with ibus.

#### Necessary packages
- debian search [here](https://packages.debian.org/search?searchon=names&keywords=m17n).
- Suggested ubuntu packages: ibus sanskrit iBus-m17n ibus-qt4 m17n-db m17n-contrib ttf-indic-fonts . See our [note here](https://sites.google.com/site/sanskritcode/optitrans).

#### Debugging / update tips

- Restart ibus:  ibus-daemon -Rd
- MDEBUG_INPUT=1 m17n-edit --im hi-optitransv2
- Configure: m17n-im-config or [http://i.imgur.com/vtq0njh.png](http://i.imgur.com/vtq0njh.png)

#### Optitrans
- Linux ibus hindi/ sanskrit/ kannada users: For your typing convenience download and use - see [optitrans](optitrans.md).

## Windows

- [Bhasha IME](https://sites.google.com/site/bhashaime/)

<details><summary>Installation (द्रष्टुं नोद्यम्)</summary>

- Download the zip file provided at the bottom of the page [Bhasha IME](https://sites.google.com/site/bhashaime/) 
- Extract that folder/ directory to C:\Program Files\bhashaime
- Run the file named BhashaIME-RunMe.vbs from the above folder. You will get some green square in the taskbar (the bottom part of the screen, where time, date etc.. are shown). You can click on it, select devanAgarI there. Then type.
- Also read BhashaIME User Reference 742.pdf (from the same folder) to understand how various letters are typed.

Some helpful images:

{{< figure src="../images/bhAShA_IME_contents.png" title="" class="thumbnail">}}
</details>



- See multiplatform options
- [pramukh IME](https://www.pramukhime.com/)
- [Ibus](http://en.wikipedia.org/wiki/Intelligent_Input_Bus)
- [Ggoogle](http://www.google.com/ime/transliteration/), 
- [MSN](http://specials.msn.co.in/ilit/WebEmbed.aspx?language=Kannada)
- [UBC devanagarI](https://ubcsanskrit.ca/keyboards.html)
  
to input Indic script directly without copy-pasting.

## MAC

- See **multiplatform options**. keyman is best.
- Lipika IME for IOS and OS X - [github wiki](https://github.com/ratreya/lipika-ime).
- See [here](http://www.hpnadig.net/blog/typing-kannada-mac-uim-and-m17n-mac-os-x).  [Mac UIM](https://github.com/e-kato/macuim/) lets you use m17n (shrIvatsa uses this).
- for IAST: [EasyIAST](https://shreevatsa.wordpress.com/2013/01/22/a-better-keyboard-layout-for-typing-iast-on-mac-os-x-based-on-easyunicode/).
- [UBC devanagarI](https://ubcsanskrit.ca/keyboards.html)

## Android
- Google Devanagari handwriting input
- [pramukh IME](https://www.pramukhime.com/)
