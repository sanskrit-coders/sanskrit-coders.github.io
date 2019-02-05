---
title: SanskritOCR vs. Google OCR
published: true
date: 2018-06-05
summary: "SanskritOCR vs. Google OCR."
tags: [news]
author: Arun
author_link: "https://github.com/akprasad"
---

As far as I am aware, there are two options for high-quality Sanskrit OCR that
I know of:

- the [SanskritOCR][socr] tool created by Dr. Oliver Hellwig
- the [Google OCR][gocr] API exposed through the Google Cloud Vision API

I was curious to get a sense of how these two tools compared on a sample page,
and whether there was a clear difference in quality between the two. Here I'll
describe how I conducted this comparison and my results.

Doing a fair analysis is time-consuming because a variety of page sizes,
scan qualities, genres, and so on must be tested, and all must be tested for
both the number and the severity of the errors produced.

So rather than make a firm pronouncement of how one tool compares to the other,
I focused on just one page that I found particulary challenging and saw how
the tools compare. Specifically, I focused on page 28 of [this edition]
of the Raghuvamsa, with the commentary by Mallinatha.

This is a reasonable test because the text contains both large type for the
main poem and smaller type (with long compounds) for the commentary. The
print quality ranges from perfectly clear to quite ugly.

Potential biases:
- SanskritOCR does much better with grayscale text. But most of the PDFs I've
  seen on archive.org, and that I'm interested in digitizing, are just
  black-and-white.
- Hard to pick a "representative" sample of Sanskrit literature. But at least
  this is a good heuristic.
- I'm not a SanskritOCR expert but I know that it has several tuning options,
  including training on an unseen character set. For now I just used the default
  settings, since I'm a novice with the tool, but it's possible that more work
  might improve the results here.
- I don't have a Windows setup, so I'll be running SanskritOCR through an
  emulator. I don't think this should have much impact on the quality of
  results, however.

[socr]: http://www.indsenz.com/int/index.php?content=software_ind_ocr_sanskrit
[gocr]: https://cloud.google.com/vision/docs/ocr
[ragh]: https://archive.org/stream/RaghuvamsaKalidasaSanjiviniMallinathaCriticalEdition1885


Ease of use
-----------

## Setup

- SanskritOCR is packaged as an .msi and is Windows only without some kind of
  emulator. But as technical users, it's important for us to remember that Unix
  environments are the small minority.
- The most easily used OCR set up for Google is a Linux-only Python script.
  With some hacky setup, I got something close enough working on OSX.

Conclusion: Google is more easily scriptable, but as long as you can install
it, SanskritOCR is stronger.

## User interface

- SanskritOCR has one, and it's pretty simple, with large, prominent buttons.
  Output is produced per line, and when you click on an digitized word, the
  interface scroll to its counterpart automatically. Really slick.
- Google has a pretty simple command line API. Output is a blob of text -- line
  breaks aren't preserved unless you use the low level API, so comparison with
  the source material is a little harder by default.

Conclusion: Google is easier for technical users to run, but its features are
really basic, but SanskritOCR is easier for non-technical users, and it's also
more pleasant / powerful.

## Runtime

- Google runs in about 2 seconds per page.
- SanskritOCR took more than two minutes on my first sample page -- nearly two
  orders of magnitude difference. Ditto when running in Ubuntu. This may be due
  to how I'm emulating it, though -- I really wish I had a Windows machine handy
  to test.

Conclusion: Google by far, but my case is probably atypical.


Quality
-------

I compared as many errors as I had the time and inclination before. I
pre-committed to check the verse and the first paragraph of each set of outputs.

Each error is given with its approximate [edit distance][edit] when romanized. I
thought this was a reasonable metric of severity because it loosely measures
the work required for a proofreader to correct a word. (The edit distance is
"approximate" because I calculated each mentally and quite quickly. But the
results should be qualitatively correct.)

[edit]: https://en.wikipedia.org/wiki/Edit_distance

## Errors in Google OCR (verse and first paragraph)

- [3] payovāhaṃ -> paryavāhaṃ
- [2] airavatāviva -> eravatāviva
- [1] pīḍati -> pīḍeti
- [2] puraḥsarau -> puraḥsarī
- [1] viśeṣātta -> viśeṣāttu
- [2] sevyamāno -> sevyamānau
- [2] sukhasparśaiḥ -> sukhamparśaḥ
- [1] vārtair -> vārtār
- [1] vidyudairava -> vidyuderava
- [4] tvairāvatāmindra -> vairāvatābhandra
- [2] yābhinna → yorbhinna
- [3] aniṣṭatvādupamādūṣaṇam ? → aniṭatvādupamādṛpaṇaṃ
- [2] rūḍhau → rūdau
- [1] saṃbandhaḥ → saṃvandhaḥ
- [2] airāvato → erāvato
- [1] gair → gar
- [1] tvāca → tvācca
- [2] tvādabhra → tva।dabhra
- [1] tvāt → tvān
- [1] sāhacaryaṃ → sāhacarya
- [2] ghaṭate → paṭate
- [2] airāvatas → airāvanam
- [2] erāvatasya → airāvatasya
- [1] stryair → strayair
- [3] suṣṭūktaṃ → muṣṭataṃ
- [1] iveti → ivati
- [3] rohaṇoktyā → rohaṇe yā
- [1] bījaṃ → vījaṃ
- [2] daṃpatyor → daṃpatyār

General comments on this output:
- Vowel marks are often ignored ("pIDeti" -> "pIDati", "airAvata" ->
  "erAvata"). Often these mistakes are given very high confidence, so they're
  tough to detect automatically without a dictionary of some kind. For example,
  "hetoH" -> "hatAH" (from a later paragraph) is particularly bad, as both are
  grammatically valid in context.
- Vowel marks are often mistaken ("sevyamAno" -> "sevyamAnau")
- m/s confusion ("sukhasparzaiH" -> "sukhamparzaH")
- p/b confusion ("yeSAM" -> "yapAM")
- Conjunct "ya" often read as "aya" ("stryai" -> "strayai")
- Double "cc" often rendered as "c"
- Some punctuation issues:         " -> ' '      ॥ -> | |      " -> *     " -> '
- Poor line breaking, but this can be worked around when using the lower-level OCR api.


## Errors in SanskritOCR (verse and first paragraph)

- [3] syandana -> ṣkadana
- [2] bhūd -> bhrṛd
- [1] puraḥ -> pūraḥ
- [4] anubhāvaviśeṣāttu -> anudhāvaviśeṣāna
- [1] sena -> śena
- [7] sukhasparśaiḥ -> bhuravampaśaiḥ
- [21] puṣpareṇūtkirairvārtairādhūtavanarājibhiḥ → pūā;pagṛā'itkerervārtairāśrya'vanarājiāi'caḥ
- [3] vidyudairāvate → vadyadāravate
- [4] iti → jñāta
- [1] pāṭhe → pāṭha
- [6] tvairāvatamindra → tvarāvatābhandra
- [3] bhinnaliṅga → bhirnnalaga
- [2] dūṣaṇam → dapaṇam
- [4] saṃbandhaḥ → savanaḥ
- [1] āpaḥ → āpa
- [7] bhūvāksurāpsu syāt → bhūyatpharāsu syān
- [4] airāvato → egavato
- [8] bhrastatvādabhrarūpatvāt → trasyatvādatarūpatvāna
- [1] rohaṇaṃ → rohaṇa
- [1] sāhacaryaṃ → sāhacarya
- [1] ghaṭate → gaṭate
- [1] kiṃca → kica
- [2] sāha → moha
- [3] stryairāvatīti → anyairāvatīti
- [3] suṣṭūktaṃ → suṣukta
- [4] bījaṃ → vaji
- [1] daṃpat → dapat
- [1] yaṃ → ya

General comments on this output:
- Often makes severe errors that even a non-Sanskrit reader would notice are wrong.
- Some errors blend in very well, e.g. stryair- → anyair-, iti → jJAta


Tentative conclusions
---------------------

The two tools produce roughly the same number of errors, but when comparing by
edit distance, SanskritOCR has roughly twice the severity of Google OCR.

Since the page I chose is particularly hard, I have confidence that Google OCR
can maintain this quality or perform even better on easier data.

Both tools make errors that can seem at first like normal Sanskrit. Google OCR
seems more prone to this, since its errors are less severe (and therefore
closer to actual Sanskrit). This may be able to be worked around with better
linguistic understanding.

My recommendations on this basis:
- Google OCR is likely at least as good as SanskritOCR and can be used for
  projects that require high-quality Sanskrit OCR.
- Better documentation and assistance for how to tune SanskritOCR may be
  useful.
- Investing in tooling for Google OCR is a worthwhile priority for the
  community, since the OCR output is easy to process programmatically and can
  be used to build more sophisticated proofreading tools.