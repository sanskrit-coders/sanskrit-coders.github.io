---
title: Transliteration
---

Some tools/ websites ([1W](http://sahityam.net/wiki/Main_Page), [2W](http://stotrasamhita.net/wiki/Main_Page), ) enable viewing text in script of reader's choice. See separate page [here](../content/site_transliteration/).

## Transliteration tools, encoding converters
### Other lists
- **[Technical Hindi list](https://sites.google.com/site/technicalhindi/home/converters)**

### Windows
#### bhAShA-Trans
- [bhAShA IME with BhashaTrans](https://sites.google.com/site/bhashaime/) by venkaTesh is a very powerful free tool for converting archaic encodings to Unicode. Example: [SP19](https://groups.google.com/forum/#!topic/sanskrit-programmers/n5cX1-NJLww). 

Bhashatrans shows only the Systray.menu. You copy the text to be converted to clipboard,, invoke the reqd. conv. through the systray menu. The result will also be on the clipboard.

To convert, run BhashaTrans (may work with wine on Linux). After select-copy of PDF text, invoke the first menu "All Non Unicode -> Unicode". BhashaTrans will take RTF from clipboard, preferably, and try to convert. Wait for the pop-up informing of the fontnames in the RTF and whether they can be handled.

- If the PDF has preserved the original font names, text should be converted properly and will be put up on clipboard which you can copy to Word processor after completion
- If the PDF has mangled the file names, as in this case, BhashaTrans does not do anything. Manual conversion (Nudi encoding as an example): 
  - In this case, if there is one main font to be converted, copy text to notepad and copy back to clipboard, so only puretext (no RTF) is available on clipboard. Invoke BhashaTrans-> "Nudi -> Uni Kan". Converted text will be on clipboard. Paste to any editor. All non-Nudi text is converted to junk. You need to clean it up. 
  - (If you want to preserve non-Nudi text, it can be done with manual labor.)

Batchmode works only in Windows. Select all files in Windows Explorer, press CtrlKey and invoke the systray-menu. Wait for a pop-up and release the ctrl key. BT reads all files selected from the topmost Explorer window and processes them. Solely depends on Explorer UI API.

##### Wine usage
- Download bhAShAIME and bhAShATrans files.
- `wine wscript 'BhashaTrans-RunMe.vbs'` starts the bhAShATrans program in the taskbar. Thence, one can transliterate by copying to the clipboard, clicking on the taskbar icon and selecting the appropriate option .


### Web tools
- [Vindodh's aksharamukha](http://www.virtualvinodh.com/aksaramukha) - [py](https://github.com/virtualvinodh/aksharamukha), [php](https://github.com/nareshv/aksharamukha)
- [Shreevatsa](http://shreevatsa.appspot.com/sanskrit/transliterate.html)
- [LearnSanskrit (Arun) Js](http://learnsanskrit.org/tools/sanscript)
- **[ACzoom](https://www.aczoom.com/itrans/online/) \[flexible table\]**
- [H](http://sanskrit.uohyd.ac.in/scl/transliteration/)
- [Wikimedia](https://github.com/wikimedia/jquery.ime/)
- [BU](http://sanskrit1.ccv.brown.edu/tomcat/sl/TranscodeText), [BU](http://sanskrit1.ccv.brown.edu/Sanskrit/SanskritTransliterate/index2.html)
- [Dicrunch](http://www.granthamandira.com/diCrunch/diCrunch.php)
- [D](http://www.aai.uni-hamburg.de/indtib/INDOLIPI/Indolipi.htm)
- [C](http://sktutils.com/)
- [Rd](http://rishida.net/scripts/uniview/)
- [Rp](http://people.w3.org/rishida/scripts/pickers/devanagari/)
- [Ar](http://www.sanskrit-sanscrito.com.ar/en/essentials_software/index2_software.shtml)
- Other tools to convert old custom fonts to unicode (P, [T](http://hindi-store.tipsadda.com/2010/11/all-hindi-font-converters.html)).
  - Online
      - Unigateway / medha site backend [here](http://sourceforge.net/projects/unigateway/?source=typ_redirect).
  - Linux


### Offline friendly Html/ JS tools
- [baraha-unicode](/fonts/tools/Baraha-to-Unicode-to-Baraha%20Converter01.htm)
- [ISCII - unicode (for PDF)](/fonts/tools/ISCII_to_Unicode_to_ISCII_Converter_16_(for_PDF_files).htm)
- [Roman encodings to devanAgarI unicode](/fonts/tools/Roman%20Encodings%20to%20Devanagari%20%20Converter_05.html)

### Libraries
- Python
  - (https://github.com/sanskrit-coders/indic_transliteration)
- Scala
  - (https://github.com/sanskrit-coders/indic-transliteration)
- JS
  - (https://github.com/sanskrit/sanscript.js)
- PHP
  - (https://github.com/sanskrit/sanscript.php)

