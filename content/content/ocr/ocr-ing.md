---
title: Procedure
---

## What's a good OCR?

- A good OCR has high accuracy.
- It may be better to keep the OCR result as separate pages, and have them associated with the original images. This can help in the following ways:
    - helps proofreading, as [described here](corrections.html).
    - it may be helpful to include with each entry a link to the page in the book, so that even if the reader/user suspects OCR errors, they can click on the link and see the original page. (I've used this feature in the MW dictionary a few times.)

## How to OCR?

### Software
Desktop/ web based,  in roughly decreasing order of popularity

- [sanskrit ocr](https://ocr.sanskritdictionary.com/) which uses gdrive api
- [ambuda](https://ambuda.org/proofing) uses Google Vision API.
- Adding pdf layer - [OCRmypdf](https://ocrmypdf.readthedocs.io/en/latest/) - using tesseract-data-san.
- Telegram - [@bruhulbot](https://web.telegram.org/k/#@BruhulBot) - uses drive api?
- Gdrive-[SP](https://groups.google.com/forum/#!topic/sanskrit-programmers/5noVN-XpeVY), SanskritOCR: [indisenz](http://www.indsenz.com/int/index.php), [Tesseract](https://github.com/tesseract-ocr)
- Google Chrome  post 2025 - can just open scanned pdf and copy text.
- ocrlib[A](https://code.google.com/p/ocrlib/)
- [Lace](https://github.com/brobertson/Lace2)
- OH[D1](http://learnsanskrit.org/tools/ocr)
- ILT[B](http://www.cedar.buffalo.edu/ilt/tool.html)
- [X](http://vimeo.com/4714623)
- [TDIL](http://ocr.tdil-dc.gov.in/)).

### Android
- [zoho doc scanner](https://www.indiatvnews.com/technology/news-zoho-doc-scanner-launches-text-recognition-in-12-indian-languages-642074)
- [Textfairy](https://play.google.com/store/apps/details?id=com.renard.ocr&rdid=com.renard.ocr) uses Tesseract, and is open source and free. OCRing sanskrit using hindI pack is unsatisfactory. Sanskrit support is requested \[[github](https://github.com/renard314/textfairy/issues/157)\].
    - Google lens


#### Scanning
See [scanning](../scanning) page.


#### vflat ocr (paid)
- pdf-ing, ocr-ing beyond 10 images needs paid app.
- Supposedly it handles 2-column text well, and exports pdf as well as text well. Besides camera, it seems to import pdf as well.
- South Korean product depending on Google Vsion handles several indian languages.

#### Misc apps
Ocr Scanner, Google Lens, Pramukh OCR etc.

[PIOCR](https://piocr.com/): Piocr is too good, especially with multi column pdf/image files. Using Paint, draw vertical lines to separate multi columns, save and upload the image for best output. Not a free package, but 5 free scans per day.


### Libraries
- [doc-curation](https://github.com/sanskrit-coders/doc_curation/) - Can OCR some pdf with google drive. Automatically splits into n page bits and ocrs them individually. (Quota: Queries per 100 seconds Global : 10000, Per day: 1,000,000,000). See usage example [here](https://github.com/sanskrit-coders/doc_curation/blob/master/curation_projects/general_tasks/pdf_tasks.py), function[here](https://github.com/sanskrit-coders/doc_curation/blob/master/doc_curation/pdf.py#L13).
- Google Vision 
  - script [here](https://github.com/lalitaalaalitah/GoogleVisionOCR_Python) : You may get an offer to avail USD 300 credit for usage. Accept that. It may enable you to OCR without charges for a few thousand images.
  - alternative in [doc-curation](https://github.com/sanskrit-coders/doc_curation/) package.
- **[ocropy](https://github.com/tmbdev/ocropy)**
- [tessIndic](https://code.google.com/archive/p/tesseractindic/)
- [tess-parichit](https://code.google.com/archive/p/parichit/downloads)
- [tessHindI](https://sourceforge.net/projects/tesseracthindi/)

- Comparison
  - [2018 - google ocr vs sanskritocr](/posts/2018-06-05-ocr-comparison)
  - In 2021, Google Drive OCR occassionally messed up devanAgarI words embedded within english text - [SP thread](https://groups.google.com/g/sanskrit-programmers/c/cbu2_tVYbUU/m/hZxtCkPGAAAJ) - so as to coincidentally appear (based on stroke similarity) to translate (विधि  → fate).
- Sanskrit OCR guide [by dhaval here](https://github.com/sanskrit-coders/sanskrit-ocr-r0/issues/8).

> I am using Microsoft document AI for OCR and i think it is best in class. I have continuosly tried many but its OCR is best better than even google also gives structured output of paragraphs. For hindi it has 99% accuracy, for sanskrit it gets trapped when words get complicated because i think it somewhat uses ML for better prediction in OCR otherwise it is fairly good.
For fresh account it gives 200$ credit for one month which can ocr around 1.2-1.3 lakh pages. So a bulk data can be done in one go.
>
> Claudia doesn't support Hindi, but GPT is quite effective. After performing OCR, GPT could be used to assign a confidence score to each recognized word. For words with low confidence, GPT could suggest the correct word based on the sentence context. Users could then easily replace the incorrect words by clicking a simple tick mark next to the suggested corrections. This also works better in hindi, sanskrit i have doubts.
> 
> - BlackNote, 2024

### Training data
- wikisource pages
    - Techniques
        - Process html source ([example](https://sa.wikisource.org/wiki/%E0%A4%AE%E0%A5%87%E0%A4%98%E0%A4%B8%E0%A4%A8%E0%A5%8D%E0%A4%A6%E0%A5%87%E0%A4%B6%E0%A4%83_-_%E0%A4%A6%E0%A4%95%E0%A5%8D%E0%A4%B7%E0%A4%BF%E0%A4%A3%E0%A4%BE%E0%A4%B5%E0%A4%B0%E0%A5%8D%E0%A4%A4%E0%A4%A8%E0%A4%BE%E0%A4%A5%E0%A4%83_-%E0%A5%A7%E0%A5%AF%E0%A5%A7%E0%A5%AF)) to find tags like <span class="pagenum" id=".E0.A5.A9.E0.A5.A7" title="पुटम्:मेघसन्देशः - दक्षिणावर्तनाथः - १९१९.djvu/31"></span>.
        - Get it from index pages ([example](https://sa.wikisource.org/wiki/%E0%A4%AA%E0%A5%81%E0%A4%9F%E0%A4%AE%E0%A5%8D%3A%E0%A4%AE%E0%A5%87%E0%A4%98%E0%A4%B8%E0%A4%A8%E0%A5%8D%E0%A4%A6%E0%A5%87%E0%A4%B6%E0%A4%83_-_%E0%A4%A6%E0%A4%95%E0%A5%8D%E0%A4%B7%E0%A4%BF%E0%A4%A3%E0%A4%BE%E0%A4%B5%E0%A4%B0%E0%A5%8D%E0%A4%A4%E0%A4%A8%E0%A4%BE%E0%A4%A5%E0%A4%83_-_%E0%A5%A7%E0%A5%AF%E0%A5%A7%E0%A5%AF.djvu/31)).
    - konkaNI vishvakosha [index](https://wikisource.org/wiki/Main_Page/Konkani).
    - meghasandesha [here](https://sa.wikisource.org/wiki/%E0%A4%85%E0%A4%A8%E0%A5%81%E0%A4%95%E0%A5%8D%E0%A4%B0%E0%A4%AE%E0%A4%A3%E0%A4%BF%E0%A4%95%E0%A4%BE:%E0%A4%AE%E0%A5%87%E0%A4%98%E0%A4%B8%E0%A4%A8%E0%A5%8D%E0%A4%A6%E0%A5%87%E0%A4%B6%E0%A4%83_-_%E0%A4%A6%E0%A4%95%E0%A5%8D%E0%A4%B7%E0%A4%BF%E0%A4%A3%E0%A4%BE%E0%A4%B5%E0%A4%B0%E0%A5%8D%E0%A4%A4%E0%A4%A8%E0%A4%BE%E0%A4%A5%E0%A4%83_-_%E0%A5%A7%E0%A5%AF%E0%A5%A7%E0%A5%AF.djvu).

#### Other collections
-  [http://ocr.iiit.ac.in/Hindi100.html](http://ocr.iiit.ac.in/Hindi100.html)
- shrIdevI [https://github.com/Shreeshrii/imagessan](https://github.com/Shreeshrii/imagessan) and [https://github.com/Shreeshrii/imageshin](https://github.com/Shreeshrii/imageshin).

#### Machine-generated data
- Also, Tesseract-OCR has a program called text2image which takes unicode text and can create images files in different fonts as well as apply some degradation to it so simulate scanned pages. The program doesn't compile/work on windows, but works on Linux.
- One can even bootstrap using output of other OCR tools.
- See repositories of relevant indic OCR projects.

### Online
- [sanskritdictionary](https://ocr.sanskritdictionary.com/#) - Uses drive API for Google. Provides tesseract alternative as well.
- Tesseract Tyler: [TW](https://tools.simonwillison.net/ocr?language=san)
- [dharmamitra](https://dharmamitra.org/?view=ocr)
- [Tyler google vision](https://skrutable.info/ocr)
- [shrIvatsa](https://chaya.shreevatsa.net/)

#### LLM AI
> "Would you say that processing PDFs using multi-modal LLMs is *always* guaranteed to produce *more* accurate output compared to using plain OCR engines (Tesseract/ Google Vision)?"

While it hedges its bets as it is wont to do because I asked for confirmation in 100% of the cases, the answer must be read as an definite YES. One of the biggest reasons being: LLMs have access to the entire context while "dumb" OCR engines do not.

> "If I gave an LLM a PDF of an English translation of the Ramayana and it encounters a word that reads like 'Alexander,' what would it do? Simply add it to the output stream, or try to figure out if the word makes sense in the context?"

The answer is a definite NO to the "simply add it to the output stream." It WILL try to figure out if the word makes sense in the context of the rest of the document together with comparison to the visual evidence.

Prompts and usage elsewhere.

- Dharmamitra (Google Gemini, billing covered by grant money)

#### Google vision

- [sk](https://skrutable.info/ocr) individual billing

Tesseract 

- [akSharamukhA](https://aksharamukha.appspot.com/converter) - Uses tesseract, which runs entirely on browser!
- anunAd's collab notebook
- [sw](https://tools.simonwillison.net/ocr)
- [charya](https://chaya.shreevatsa.net/versions)


### Grantha-ocr
Gathering training data [here](https://docs.google.com/document/d/19a5Qjc4BXItn9TXJ3yh6u1i0mRUyK05wMZCO8sMX_GQ/edit?tab=t.0

Collecting training data for grantha script OCR)

## Post processing
- Ideally, we would get OCR-s from multiple sources and then [combine them](https://groups.google.com/g/sanskrit-programmers/c/yEjFaIQfGaA/m/E4rx2YmHAAAJ) to reduce errors (yet to try this).

## Fora
- [Indic OCR](https://groups.google.com/forum/#!forum/indic-ocr)
- [parichit](https://groups.google.com/forum/#!forum/parichit-ocr).

## Alternatives to OCR

PDF text extraction: see thread [here](https://groups.google.com/d/msg/sanskrit-programmers/UGwL8dcl1g0/-ign5NVeBQAJ).

