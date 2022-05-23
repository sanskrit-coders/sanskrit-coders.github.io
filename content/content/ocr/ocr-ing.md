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
- Desktop/ web based,  in roughly decreasing order of popularity
    - [sanskrit ocr](https://ocr.sanskritdictionary.com/) which uses gdrive api
    - Gdrive-[SP](https://groups.google.com/forum/#!topic/sanskrit-programmers/5noVN-XpeVY), SanskritOCR: [indisenz](http://www.indsenz.com/int/index.php), [T](https://github.com/tesseract-ocr)ess
    - ocrlib[A](https://code.google.com/p/ocrlib/)
    - OH[D1](http://learnsanskrit.org/tools/ocr)
    - ILT[B](http://www.cedar.buffalo.edu/ilt/tool.html)
    - [X](http://vimeo.com/4714623)
    - [TDIL](http://ocr.tdil-dc.gov.in/)).
    - If you work at some companies (say Google), you may have wonderful infrastructure and a couple of hundred machines to get good OCR's fast. Ask around - your colleagues may have ideas! 

### Android
- [zoho doc scanner](https://www.indiatvnews.com/technology/news-zoho-doc-scanner-launches-text-recognition-in-12-indian-languages-642074)
- [Textfairy](https://play.google.com/store/apps/details?id=com.renard.ocr&rdid=com.renard.ocr) uses Tesseract, and is open source and free. OCRing sanskrit using hindI pack is unsatisfactory. Sanskrit support is requested \[[github](https://github.com/renard314/textfairy/issues/157)\].
    - Google lens

#### vflat
- [android](https://play.google.com/store/apps/details?id=com.voyagerx.scanner&hl=en_IN&gl=US), [apple](https://apps.apple.com/in/app/vflat-scan-pdf-scanner/id1540238220)
- From speaking to a leader of kannaDa gaNaka pariShat, I learned about their very satisfactory experience with using vFlat scanner. It seems they've successfully used it  + crowdsourcing to rapidly scan large works despite the limit of 100 pages/ user-day .
- Supposedly it handles 2-column text well, and exports pdf as well as text well. Besides camera, it seems to import pdf as well.
- South Korean product handles several indian languages.

### Libraries
- [doc-curation](https://github.com/sanskrit-coders/doc_curation/) - Can OCR some pdf with google drive. Automatically splits into 25 page bits and ocrs them individually. (Quota: Queries per 100 seconds Global : 10000, Per day: 1,000,000,000). See usage example [here](https://github.com/sanskrit-coders/doc_curation/blob/master/curation_projects/general_tasks/pdf_tasks.py), function[here](https://github.com/sanskrit-coders/doc_curation/blob/master/doc_curation/pdf.py#L13).
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
- [akSharamukhA](https://aksharamukha.appspot.com/converter) - Uses tesseract, which runs entirely on browser!

## Post processing
- Ideally, we would get OCR-s from multiple sources and then [combine them](https://groups.google.com/g/sanskrit-programmers/c/yEjFaIQfGaA/m/E4rx2YmHAAAJ) to reduce errors (yet to try this).

## Fora
- [OCR on request project](https://sanskrit.github.io/groups/dyuganga/projects/text/ocr_on_request) - useful for non-tech people
- [Indic OCR](https://groups.google.com/forum/#!forum/indic-ocr)
- [parichit](https://groups.google.com/forum/#!forum/parichit-ocr).

## Alternatives to OCR

PDF text extraction: see thread [here](https://groups.google.com/d/msg/sanskrit-programmers/UGwL8dcl1g0/-ign5NVeBQAJ).

