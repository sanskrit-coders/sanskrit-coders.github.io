---
title: Optitrans
---

Objective
-------

OptiTrans defines a simple set of rules to produce characters in Indic scripts using ASCII characters. These rules are defined by a transiteration map, and meta-rules describing contextual changes in the  interpretation of these rules.

Don't worry - It is simple. Though the rules are intelleligently designed (building on prior experience and expertise), there is no machine learning involved in the actual application of these rules.  

Desiderata (Requirements).
----------------------------

The (sometimes competing) objectives are  

*   OptiTrans is optimal. Typing effort is minimal. This often implies the following:

    *   user does not need to press more keys (in terms of number or variety)  than he absolutely needs to.
    *   Lower case is preferable to upper case (it takes effort to press the shift key).
    *   Pressing the same key twice takes less effort than pressing two different keys.

*   OptiTrans is intuitive. The learning curve is not steep, and the scheme is natural.

    *   Where possible, use uniform rules. From this perspective, e = ए and ee = ई would be worse than i = इ, ii = ई.  
        
    *   Mapped keystrokes should correspond to how the characters sounds, rather than how it looks. So, using o.c for ऑ is not optimal.  
        
    *   Note that intuitions vary with regions. A comparison of HK and ITRANS hint at the differences between Indologist and Indian transliteration intuitions. Even within India, south Indians tend to transliterate त as tha, while north Indians use "ta".

*   OptiTrans is suitable for both live transliteration and offline batch processing. This implies:

    *   If इ flashes on the screen before ई appears, that is fine. But, । flashing on the screen before the unrelated symbol  ँ  makes for unintuitive user experience.

*   More frequently typed characters are more important than less frequently used ones. So, when one needs to make a choice, assign shorter keystrokes for more frequently used characters.
*   Where it does not violate the other principles mentioned above, OptiTrans tries to be backward-compatible with commonly used rules from schemes such as ITRANS, Baraha and Harvard Kyoto.  
    

Evolution and contact.
----------------------------

*   More optimality is desirable, and the scheme should be improved when necessary.
*   So suggestions and questions are welcome - try mailing to the following lists: [m](https://lists.nongnu.org/mailman/listinfo/m17n-list)[17n](https://lists.nongnu.org/mailman/listinfo/m17n-list), [sanskrit-programmers](http://groups.google.com/group/sanskrit-programmers). Disagreements will be resolved by Vishvas, who maintains the standard.
*   This web-page will be the standard reference for OptiTrans. Implementations are encouraged to conform to it.

Transliteration map.
---------------------

*   The latest transliteration table is always available in [this online spreadsheet](https://docs.google.com/spreadsheet/ccc?key=0Al_QBT-hoqqVdHQ1MFZLU0FveUU0SlJRMFJ5MWZPWnc). It lists transliteration rules from OptiTrans and several other popular schemes (including Baraha, Harvard-Kyoto, ITRANS, Velthuis, IAST) for easy comparison.
*   The kannaDa OptiTrans map is different from devanAgarI sanskrit map in that e, ee, o, oo are mapped to ಎ, ಈ, ಒ, ಊ.
*   General Indic character map from vinodh's akSharamukhA [here](http://www.virtualvinodh.com/wp/character-matrix/).

Interpreting on OptiTrans encoding
------------------------------------------
*   The context decides whether a dependent or an independent vowel is produced.
*   When the script is used to render languages such as Hindi, the virAma at the end of the word [is deleted](http://en.wikipedia.org/wiki/Schwa_deletion_in_Indo-Aryan_languages).

Examples
--------------
### Optitrans v2

* Avoiding unnecessary 'a's.

    * kml or kamala : कमल 

* Typing vyanjana-s with a virAma

  *      sikkt - सिक्त
  *      sik;t - सिक्त

* Shortcut for typing panchama-s/ anunAsika-s of vargIya-vyanjana-s

    *   shankara or shnnkr- शङ्कर।
    *   snncit - सञ्चित
    *   shann karoti - शङ् करोति।

* Overriding shortcuts

    *   pashyann  karoti - पश्यन् करोति। (Note two spaces here. Avoids पश्यङ् करोति )
    *   s<Commit key>h or s<left arrow, right arrow>h or sah or saha - सह (Avoids श)

### Optitrans v1

*   shankara manju - शङ्कर मञ्जु
*   shiv shankar (while writing hindI) - शिव शङ्कर
*   shiv shankar (while writing Samskrita) - शिव् शङ्कर्
*   ak.ha man.hju - अक्ह मन्जु
*   mukha - मुख
*   shraddhAvAn asi. gacCha. - श्रद्धावान् असि। गच्छ।

History
-------

*   Pick a random Indian off the street and ask him to spell शङ्कर - what you get is "shankara", almost never "sankara" or "saMkara" or "saGkara". ITRANS (developed by an Indian named Avinash) followed this intuitive sense of how it makes sense to type sanskrit sounds in an inadequate alien alphabet. OPTITRANS is but a modification of ITRANS which sought to formalize this intuitive, mostly ITRANS-compatible, spelling.
*   In Oct 2012, OPTITRANS v1  was developed mainly for inputting text conveniently using the (mostly Linux) M17N library (please see below) after a discussion in their mailing list.
*   Later, OPTITRANS v1 was used in one of Google's indic input tool (where the author used to work).
*   In the meantime, OPTITRANS v1 also came to be used to look up words in the stardict dictionary.
*   Later in 2015, the experimental OPTITRANS v2 was developed for potentially more efficient text input.

Known implementations
---------------------

*   optitransv2

    *   In m17n : [hi-optitransv2.mim](https://github.com/sanskrit-coders/m17n-db/blob/master/MIM/hi-optitransv2.mim)

        *   Older versions: ( [hi-itrans](http://git.savannah.gnu.org/cgit/m17n/m17n-db.git/tree/MIM/hi-itrans.mim), [sa-itrans](http://git.savannah.gnu.org/cgit/m17n/m17n-db.git/tree/MIM/sa-itrans.mim))  may be be moved to *-optitrans.
        *   Installation tips [here](ime.md).

*   optitransv1 is used for lookups by the stardict-sanskrit project \[[1](https://github.com/indic-dict/stardict-sanskrit/issues/71)\].
*   Gmail's hindI and sanskrit phonetic input are similar.

Related files
-------------

*   In m17n

    *   lsymbol.mim
    *   ssymbol.mim