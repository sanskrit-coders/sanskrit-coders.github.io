---
title: +Fonts
---

## Principles
Several things are required for digitally encoded script to properly appear on the screen.

- First, the representation of a text should be something one's font files and rendering engines understand. Currently, Unicode is the well-entrenched standard.
  - Also see encoding [conversion tools here](../../input/).
- Then, the font should have information about how to render particular code points.
  - At minimum, a font is a collection of shapes (what each letter should look like -- these days this is typically drawing instructions for the outline of the shape, also possibly programs ("hinting") for specific resolutions). But that's not all, a good font should also contain kerning: e.g. when you have "V" followed by "A", the letters should be brought closer together than when you have "V" followed by "T". This is subjective and up to the font designer.
  - Moreover: a font can also contain substitution rules (like GSUB in OpenType): replace "f" followed by "i" with a particular shape, replace "ह" followed by vowel-sign-vocalic-R with another shape.
  - A font can also contain more and more instructions, like for [positioning](https://docs.microsoft.com/en-us/typography/opentype/spec/gpos), etc.: it is "data" but it is also "code".
  - Some font formats allow more kinds of instructions / data than others. OpenType and Graphite are font formats. 
- Then rendering engines should be able to translate a unicode character sequence to a bunch of "images" by looking at instructions from the font.
  - Major *complex-text* rendering software:
    - uniscribe engine or Universal shaping engine in newer version of Windows
    - harfbuzz in Libreoffice, Chrome, Firefox etc..
    - CoreText (on macOS)
  - General rendering software: Cairo or Xft.

Knowing exactly what is broken will help one report and fix the failure - complaining in the wrong places is too common.

## Font styles (devanAgarI)
There is one major dichotomy, alluded to by various names: Bombay/Calcutta, Southern/Northern, Modern/Old. [http://i.imgur.com/O68gV2O.png](https://google.com/url?sa=D&q=http%3A%2F%2Fi.imgur.com%2FO68gV2O.png) illustrates this.

A few other resources here:
  - [Archive
    collection](https://google.com/url?sa=D&q=https%3A%2F%2Farchive.org%2Fdownload%2FDevanAgarITypographyResources) .
  - Velthius
    Manual [here](ftp://ftp.tex.ac.uk/tex-archive/language/devanagari/velthuis/doc/generic/velthuis/manual.pdf).
  - Resources:
    See messages/ attachments in
    \[[1](https://groups.google.com/forum/#!topic/sanskrit-programmers/zqzAXZvE92Y), [2](https://groups.google.com/forum/#!topic/sanskrit-programmers/kdUCcoQk3us)\].


### Fonts that close to the new style
- Chandas by [Mihail Bayaryn](http://www.sanskritweb.net/cakram/)
- Noto Sans Devanagari by Google (see examples below)

### Fonts that are close to the old style

  - Sanskrit 2003 font was based on nirNaya-sAgar books.
  - Uttara font by Mihail Bayaryn
    ([http://www.sanskritweb.net/cakram/](http://www.google.com/url?q=http%3A%2F%2Fwww.sanskritweb.net%2Fcakram%2F&sa=D&sntz=1&usg=AFQjCNGDxpeBekYbly2K1YHXoFzdfiTntA))
  - Sahadeva
    ([http://bombay.indology.info/software/fonts/devanagari/](http://www.google.com/url?q=http%3A%2F%2Fbombay.indology.info%2Fsoftware%2Ffonts%2Fdevanagari%2F&sa=D&sntz=1&usg=AFQjCNEYLX-ZHFJ1xCk1ThF8yic28Djthg))

Other information on Ulrich's site: [here](http://www.sanskritweb.net/itrans/index.html#S99FONTS).

### Font directories

  - Alan Woods'
    listing [here](http://www.alanwood.net/unicode/fonts-south-asian.html#devanagari).
  - devanAgarI.net
    listing [here](http://www.devanaagarii.net/fonts/).

## Best practices for webmasters.

Motivation:
  - Don't want to rely on (potentially inadequate) fonts? Some users see weird renderings and
    report "spelling mistakes" where none exist?

Solution:

Use web-fonts (fonts that will be automatically downloaded from the net
as needed) and css [noto
guidelines](https://www.google.com/get/noto/help/guidelines/) (note :
earlyaccess fonts there don't support vaidika svara-s
    well.)

Example: 
  - [svaras-siddhaanta.html](/fonts/examples/svaras-siddhaanta.html)
  - [svaras-noto.html](/fonts/examples/svaras-noto.html)
  - [1-notosans-devanagari-github.html](/fonts/examples/1-notosans-devanagari-github.html)
  - [2-kannada.html](/fonts/examples/2-kannada.html)
    (view its source) . 
  - sanskrit-documents ([pic1](http://i.imgur.com/YiPNBQF.png))

Thread with explanation by shrIvatsa
[here](https://groups.google.com/d/msg/sanskrit-programmers/PEQBZ4b4OOg/EQeNSKBsWXkJ).

## Configuring clients
- Ubuntu font preference setting - see [SE](https://askubuntu.com/questions/855739/how-can-i-make-devanagari-fonts-render-properly-in-ubuntu-16-04/855811#855811).
- Choose to use the font in Chrome:
  - Go to settings
  - Search for "font" in settings
  - get to the "Customize fonts" button

## Vedic accents default rendering
iphones and ipads don't render vedic accents well by default, as of 2025.  
Only the following worked -  
- U+1CEx ` ᳐ ᳓  ᳖  ᳙  ᳚ ᳠`	 
- U+095x  `॑ ॒ ॓ ॔ ॕ ॖ ॗ`
