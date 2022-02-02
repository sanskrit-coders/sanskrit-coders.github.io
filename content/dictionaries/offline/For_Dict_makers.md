+++
title = "For Dict makers"

+++
## Wiki downloading

- Catscan [here](http://tools.wmflabs.org/catscan2/catscan2.php?language=sa&project=wikiquote&depth=1&categories=%E0%A4%B8%E0%A5%81%E0%A4%AD%E0%A4%BE%E0%A4%B7%E0%A4%BF%E0%A4%A4%E0%A4%BE%E0%A4%A8%E0%A4%BF&ns%5B0%5D=1&ns%5B14%5D=1&get_q=1&doit=1).
        

## Plans

- Make new dictionaries
    - gAndhArI dictionary (" Once it is complete and correct (a goal we hope to achieve in the next few years), we will publish it under a Creative Commons license that will allow redistribution.")
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
    - Others from IITS Koeln [here](http://www.sanskrit-lexicon.uni-koeln.de/index.html).
        - pALI devanAgarI dictionaries.
    - GOI bhAratavANI [here](http://bharatavani.in/dictionary-surf/?did=2&letter=%E0%A4%85&start=0&language=Hindi).
    - संस्कृतम्
        - अमरकोशः
            - बहुभाषा-अमरकोशः [अत्र](http://sanskrit.jnu.ac.in/amara/viewdata.jsp?varga=27)।
            - अजितस्य हिन्दी-अमर-कोशः।
        - तिरुपतिस्थ-राष्ट्रियसंस्कृतविद्यापीठस्य प्रकाशनानि [अत्र](http://www.wilbourhall.org/sansknet/)।
        - एवं प्रत्येकस्याऽपि शब्दस्य व्याकरण-विशेषप्रदर्शकास् स्युः कोशाः। 
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


## General guidelines


- Never reinvent the wheel - for example, if you can exploit preexisting dictionary format software, don't waste time writing a new one. Same with dictionaries.
- Always publish and maintain the dictionary sources in some simple form parseable by both humans and machines, so that you can make/ accept corrections; and people can transform it easily into whatever format they're comfortable with - say text or html files or stardict or babylon.
- When you make dictionaries out of certain published sources (such as IITS Koeln), please do so with (I'd suggest python or scala) scripts which can be reused to update the stardict/ babylon files when the source files are updated with corrections. That is - don't do it manually in a text editor.