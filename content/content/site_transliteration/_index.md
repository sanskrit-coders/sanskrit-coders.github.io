---
title: Site transliteration
---

- Some tools/ websites such as [SS](http://stotrasamhita.net/wiki/Main_Page), enable viewing text in script of reader's choice.

## Packages
- For generic transliteration packages, see the [input page](../../input/).
- translipi ([installation instructions](https://github.com/srikanthsubra/translipi), [example](http://stotrasamhita.net/wiki/Aditya_Hrdayam))
- akSharamukhA: demo [here](aksharamukha_demo/).
  - You need to add the following within the head section of your website: `<script src="http://www.virtualvinodh.com/aksharamkh/aksharamukha.js"></script>`.
  - Any block of text that must be converted must be assigned the class aksharamukha-text . The converter will pick up the input script automatically. If you need to specify an input script, add another class like inputscript-Telugu.
- sanscript
  - Example page: [(dev)](https://vvasuki.github.io/saMskAra/mantra/misc-devas/paravastu-saama/Aruhan/?&translitration_target=devanagari), [(tam)](https://vvasuki.github.io/saMskAra/mantra/misc-devas/paravastu-saama/Aruhan/?&translitration_target=tamil).
  - Usage:
    - Include js from the [transliteration.js module](https://github.com/sanskrit-coders/sanskrit-documentation-theme-hugo/blob/master/webpack_src/js/transliteration.js) (and needed dependency code in the same folder such as query and utils, indicated with the import statements); then include a dropdown as in the top of [this site](https://vvasuki.github.io/saMskAra/mantra/misc-devas/paravastu-saama/Aruhan/?&translitration_target=devanagari).
