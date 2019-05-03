---
title: Corrections
---
## Tools

One can use something like Distributed Proofreaders ([http://www.pgdp.net/](http://www.pgdp.net/)) or Wikisource (see screenshots [here](https://plus.google.com/u/0/109000762913288837175/posts/GzzSj3HNAVv)) to proofread the text by seeing the scanned book page beside it.

[{{< figure src="http://i.imgur.com/Y9fqLZ9.png" title="" class="thumbnail">}}

  

- Using wikisource infrastructure: [see here](https://en.wikisource.org/wiki/Help:Beginner%27s_guide_to_adding_texts). Common steps:
    - Upload file to archive.
    - Use [IA-Upload](https://en.wikisource.org/wiki/Help:IA-Upload) tool which automatically uploads files to Commons.
    - Create an index page ([example](https://sa.wikisource.org/wiki/%E0%A4%85%E0%A4%A8%E0%A5%81%E0%A4%95%E0%A5%8D%E0%A4%B0%E0%A4%AE%E0%A4%A3%E0%A4%BF%E0%A4%95%E0%A4%BE:%E0%A4%AE%E0%A5%87%E0%A4%98%E0%A4%B8%E0%A4%A8%E0%A5%8D%E0%A4%A6%E0%A5%87%E0%A4%B6%E0%A4%83_-_%E0%A4%A6%E0%A4%95%E0%A5%8D%E0%A4%B7%E0%A4%BF%E0%A4%A3%E0%A4%BE%E0%A4%B5%E0%A4%B0%E0%A5%8D%E0%A4%A4%E0%A4%A8%E0%A4%BE%E0%A4%A5%E0%A4%83_-_%E0%A5%A7%E0%A5%AF%E0%A5%A7%E0%A5%AF.djvu)).
        - Copy book details from the djvu upload page, fill Pages field with some variant of  <pagelist />.
    - Note all these links in the README.md file for the book on github.
    - Do the corrections on the pages linked in the index page.
        - ​Warning!! 😇 The ​OCR-ed text you see in wikisource is often from archive-OCR, which does not handle devanAgarI. So, the superior OCR text has not been uploaded at all. You should copy paste it.
        - To distinguish between pages that an individual proofreader has proofread it and a subsequent second-pass reviewer -  see the पृष्ठस्थिति in the bottom of [this screenshot](http://i.imgur.com/GOJP4CE.png%E2%80%8B) \- Just set it appropriately.
    - Transclude your contributions to the main page ([example](https://sa.wikisource.org/wiki/%E0%A4%AE%E0%A5%87%E0%A4%98%E0%A4%B8%E0%A4%A8%E0%A5%8D%E0%A4%A6%E0%A5%87%E0%A4%B6%E0%A4%83_-_%E0%A4%A6%E0%A4%95%E0%A5%8D%E0%A4%B7%E0%A4%BF%E0%A4%A3%E0%A4%BE%E0%A4%B5%E0%A4%B0%E0%A5%8D%E0%A4%A4%E0%A4%A8%E0%A4%BE%E0%A4%A5%E0%A4%83_-%E0%A5%A7%E0%A5%AF%E0%A5%A7%E0%A5%AF)).
        - Transclusion code: <pages index="My example book.djvu" from="20" to="35" header="1" />.
        -   
            
- Using pgdp.
    - Content provider faq [here](http://www.pgdp.net/c/faq/cp.php).

## What is the workflow for a proofreading volunteer on wikisource?

- Pick a text to proofread.
    - Look for issues with the milestone "[ocred](https://github.com/sanskrit-coders/sanskrit-ocr-r0/milestones/ocred)".
    - Index page listings:
        - [अनुक्रमणिका search results](https://sa.wikisource.org/w/index.php?title=%E0%A4%B5%E0%A4%BF%E0%A4%B6%E0%A5%87%E0%A4%B7%E0%A4%83:%E0%A4%B6%E0%A5%8B%E0%A4%A7&limit=500&offset=0&profile=default&search=%E0%A4%85%E0%A4%A8%E0%A5%81%E0%A4%95%E0%A5%8D%E0%A4%B0%E0%A4%AE%E0%A4%A3%E0%A4%BF%E0%A4%95%E0%A4%BE%3A&searchToken=5pkf9y5qmpj5jznpw6vvj1yu6) (Full set!)
        - वर्गः:आनुक्रमणिका
        - विशेषः:IndexPages 
- Proofread!

## Why should I volunteer as a proofreader?

- Your command over the language will dramatically improve.
- Your knowledge will increase.
- You will enjoy the process - especially if you are book-lover.
- You will be generating training data that can help make better sanskrit OCR software!
- You will be helping many other knowledge-lovers. (see "[why digitize](intro.html)?" section here.)

## Desired corrections, markup, proof-reading

Some common error patterns can be automatically corrected, as described here: [SP1601](https://groups.google.com/d/msg/sanskrit-programmers/4kYOv3sfgIo/hgp87CaIBQAJ).

### In dictionary type files

- (Optionally, depending on project) Mark new headwords with a string - say "############".
- Fix egregious errors - especially in the headwords - to facilitate lookup.
- Typo errors in the meanings are more tolerable (usually the fixes are obvious to the reader).
- Don't worry too much about formatting (ie line-breaks within an entry and the like). (Reason: The text is likely to be consumed to make (stardict and other) dictionaries.)

For example: If in the current text we have:

    हेमाब्दानुशासनलधुन्यास a short comm-
    entary on Hemacandra'sSabdanu-
    Sव्रsana written by Devendrastri.
    हेमाब्दानुशासनव्राते a short gloss call-
    ed अवचूरि also, written by a Jain
    grammarian नन्दसुन्दर on the ईम-
    इब्दानुद्भासन. _
    ह्यस्तनी imperfect tense; a term
    used by ancient grammarians for
    the affixes of the immediate past
    tense, but not comprising the
    present day, corresponding to the
    term लङ्क of Pafini. The term is
    found in the Katantra and Haima-
    candra grammars; cf. Kt. III.
    1.23, 27; cf. Hema. III. 3.9.
    इस्व short, a term used in connec-
    tion with the short vowels taking
    a umit of time measured by one
    matra for their utterance: cf.
    ऊकालेोज्इरस्वदीर्घप्लुत: P. I. 2.27.
    

This should be replaced with (note bolded letters such as श ह्र which have been fixed.):

    ############
    हेमाशब्दानुशासनलधुन्यास a short comm-
    entary on Hemacandra's Sabdanu-
    Sव्रsana written by Devendrastri.
    हेमाब्दानुशासनव्राते a short gloss call-
    ed अवचूरि also, written by a Jain
    grammarian नन्दसुन्दर on the हेम-
    शब्दानुद्भासन. _
    ############
    ह्यस्तनी imperfect tense; a term
    used by ancient grammarians for
    the affixes of the immediate past
    tense, but not comprising the
    present day, corresponding to the
    term लङ्क of Pafini. The term is
    found in the Katantra and Haima-
    candra grammars; cf. Kt. III.
    1.23, 27; cf. Hema. III. 3.9.
    ############
    ह्रस्व short, a term used in connec-
    tion with the short vowels taking
    a umit of time measured by one
    matra for their utterance: cf.
    ऊकालेोज्इरस्वदीर्घप्लुत: P. I. 2.27.
