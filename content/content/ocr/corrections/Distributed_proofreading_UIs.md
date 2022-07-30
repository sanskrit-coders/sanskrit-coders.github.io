+++
title = "Distributed proofreading UIs"
short_title = "Distributed proofreading"

+++
Distributed proofreading UIs


One can use something like Distributed Proofreaders ([http://www.pgdp.net/](http://www.pgdp.net/)) or Wikisource (see screenshots [here](https://plus.google.com/u/0/109000762913288837175/posts/GzzSj3HNAVv)) to proofread the text by seeing the scanned book page beside it.

[{{< figure src="http://i.imgur.com/Y9fqLZ9.png"  class="thumbnail">}}

## Ambuda
- [ambuda proofing site](https://ambuda.org/proofing/) तत्र register कृत्वा पाठं शोधयितुं सरलं स्यात्।


## vedavApI textract / bhAratIkosha
- [UI here](https://r1.bharatikosha.org/apps/textract/?kaveri=https%3A%2F%2Fr1.bharatikosha.org%2Fkaveri&_id=5d7df8c16864390012210da5) .

## Wikisource  
- [See here](https://en.wikisource.org/wiki/Help:Beginner%27s_guide_to_adding_texts). 
  
Common steps:

- Upload file to archive.
- Use [IA-Upload](https://en.wikisource.org/wiki/Help:IA-Upload) tool which automatically uploads files to Commons.
- Create an index page ([example](https://sa.wikisource.org/wiki/%E0%A4%85%E0%A4%A8%E0%A5%81%E0%A4%95%E0%A5%8D%E0%A4%B0%E0%A4%AE%E0%A4%A3%E0%A4%BF%E0%A4%95%E0%A4%BE:%E0%A4%AE%E0%A5%87%E0%A4%98%E0%A4%B8%E0%A4%A8%E0%A5%8D%E0%A4%A6%E0%A5%87%E0%A4%B6%E0%A4%83_-_%E0%A4%A6%E0%A4%95%E0%A5%8D%E0%A4%B7%E0%A4%BF%E0%A4%A3%E0%A4%BE%E0%A4%B5%E0%A4%B0%E0%A5%8D%E0%A4%A4%E0%A4%A8%E0%A4%BE%E0%A4%A5%E0%A4%83_-_%E0%A5%A7%E0%A5%AF%E0%A5%A7%E0%A5%AF.djvu)).
- Copy book details from the djvu upload page, fill Pages field with some variant of  <pagelist />.
- Note all these links in the README.md file for the book on github.
- Do the corrections on the pages linked in the index page.
- Warning!! 😇 The OCR-ed text you see in wikisource is often from archive-OCR, which does not handle devanAgarI. So, the superior OCR text has not been uploaded at all. You should copy paste it.
- To distinguish between pages that an individual proofreader has proofread it and a subsequent second-pass reviewer -  see the पृष्ठस्थिति in the bottom of [this screenshot](http://i.imgur.com/GOJP4CE.png%E2%80%8B) \- Just set it appropriately.
- Transclude your contributions to the main page ([example](https://sa.wikisource.org/wiki/%E0%A4%AE%E0%A5%87%E0%A4%98%E0%A4%B8%E0%A4%A8%E0%A5%8D%E0%A4%A6%E0%A5%87%E0%A4%B6%E0%A4%83_-_%E0%A4%A6%E0%A4%95%E0%A5%8D%E0%A4%B7%E0%A4%BF%E0%A4%A3%E0%A4%BE%E0%A4%B5%E0%A4%B0%E0%A5%8D%E0%A4%A4%E0%A4%A8%E0%A4%BE%E0%A4%A5%E0%A4%83_-%E0%A5%A7%E0%A5%AF%E0%A5%A7%E0%A5%AF)).
- Transclusion code: <pages index="My example book.djvu" from="20" to="35" header="1" />.

## pgdp.
- Content provider faq [here](http://www.pgdp.net/c/faq/cp.php).
