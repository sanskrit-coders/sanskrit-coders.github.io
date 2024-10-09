---
title: Websites and blogs
---

## Wordpress
To create a complete index of all posts like https://manasataramgini.wordpress.com/the-complete-index/, one just creates a new page, add `[archives]` in the content and publishes it.


## Static site generators
- Hugo
  - Much faster than Jekyll
  - Article [pdf](/content/intro2022/indic-site-framework.pdf)
- Jekyll
  - Can be used as a wiki - just look at the source for this site.
  - Also see our <https://sanskrit-coders.github.io/sanskrit-documentation-theme>


## Site hosting services
- <http://sites.google.com>
  - Disadvantages
    - Google holds your data, which is not easily exportable.
    - New style websites can't be added to Google search console.

## Search engine optimization
- Google (Includes indexing for custom search)
  - Observe traffic patterns and crawl status at [Search console](https://www.google.com/webmasters/tools)
  - Submitting a sitemap there submits multiple pages at once for indexing.
  - Submit url tool [here](https://www.google.com/webmasters/tools/submit-url).
  - Crawler won't wait more than 5s for page to render (if at all). So, beware of dynamically included content.
  
## Internationalizing sites
Go for a standard language-script pairing. That is, language (in [ISO 639-1](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes) format) and optionally a region (in [ISO 3166-1 Alpha 2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) format, script itself explicitly using [ISO 15924](https://unicode.org/iso15924/iso15924-codes.html). Of course, one can have the concept of a default script, so that specifying just the language code should suffice in most cases.

### Hreflang tags
if you visit [this site](https://vishvasa.github.io/purANam/mahAbhAratam/goraxapura-pAThaH/hindy-anuvAdaH/01_Adiparva/02_parvasaMgrahaparva/002_parvasangrahaparva/), you will see several hreflang, for example:

```
<link rel="alternate" hreflang="sa-Telu" href="https://vishvAsa.github.io/purANam/mahAbhAratam/goraxapura-pAThaH/hindy-anuvAdaH/01_Adiparva/02_parvasaMgrahaparva/002_parvasangrahaparva/?transliteration_target=telugu" />
<link rel="alternate" hreflang="sa-Taml-t-sa-Taml-m0-superscript" href="https://vishvAsa.github.io/purANam/mahAbhAratam/goraxapura-pAThaH/hindy-anuvAdaH/01_Adiparva/02_parvasaMgrahaparva/002_parvasangrahaparva/?transliteration_target=tamil_superscripted" />
<link rel="alternate" hreflang="sa-Taml" href="https://vishvAsa.github.io/purANam/mahAbhAratam/goraxapura-pAThaH/hindy-anuvAdaH/01_Adiparva/02_parvasaMgrahaparva/002_parvasangrahaparva/?transliteration_target=tamil" />
<link rel="alternate" hreflang="sa-Gran" href="https://vishvAsa.github.io/purANam/mahAbhAratam/goraxapura-pAThaH/hindy-anuvAdaH/01_Adiparva/02_parvasaMgrahaparva/002_parvasangrahaparva/?transliteration_target=grantha" />
```

### Server side rendering
All translation/ transliteration for ambuda should happen server-side. Javascript transliteration and translation failed even as of 2022 for vishvAsa.github.io site.