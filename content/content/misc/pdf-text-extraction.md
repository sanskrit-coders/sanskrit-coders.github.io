+++
title = "PDF text extraction"
+++

## pdf2htmlEX
Must build from source: [TW](https://pdf2htmlex.github.io/pdf2htmlEX/)

Extracts text and fonts to html; with font names preserved. That then can be more reliably processed.

## Foxit reader
- Linux version (as of 2021) was 2.4.4 (2017), whereas it was 11.0.1.49938. It appears that Linux development is unmaintained (as per quote [here](https://aur.archlinux.org/packages/foxitreader/)). So, it lacks certain features.

> Text Extraction : Foxit Reader (free, Windows/Linux) is by far the best. It somewhat preserves the original layout (font size, indentation, color etc). It also preserves font info. If the PDF uses multiple fonts, this will be imperative to convert the text font-vice(wise). It puts up plain text as well as RTF on the clipboard. 
> 
> While extracting Devanagari, other extractors mangle up the sequence of above-base and below-base chars e.g. u-kaara, uu-kaara, e-kaara, ai-kaara, anusvara etc. Foxit mostly works. This should be your first choice. - bhAShAIME venkaTesh

Usage:

- Select all and copy text. The clipboard holds plain text as well RTF. 
- Pasting to text editor will get you the plain text, to Word processor will get you the RTF text. (Linux version only gives you plain text.)
- (No option to export or convert to doc or text via menus.)

## xpdf

> Both foxit & Adobe reader did not extract properly, had to use xpdf, sometimes known to mangle blocks of text. proofread reqd.   
> - bhAShAIME venkaTesh



## pdftotext
pdftotext has options like:

```
-r <fp>              : resolution, in DPI (default is 72)
-layout              : maintain original physical layout
-raw                 : keep strings in content stream order
-nodiag              : discard diagonal text

```

There is also pdftohtml -

```
  -wbt <fp>             : word break threshold (default 10 percent)
```