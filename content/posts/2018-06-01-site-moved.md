---
title:  "Sanskrit software catalog site moved."
lastmod: 2019-02-05
date: 2018-06-01
summary: "Sanskrit software catalog site moved."
tags: [news]
---
## The past

I'd once created <https://sites.google.com/site/sanskritcode/> mainly to catalogue sanskrit software and services out there. Many people found it useful. But it had the following drawbacks:

- I hoped that it would attract contributions and corrections, but it did not happen. So links and content easily went stale.
- Besides, that site relied on the beneficence of Google for its availability - and data was not easily exportable.

## Moving to a Jekyll based github-wiki

Later, I moved all the content to <https://sanskrit-coders.github.io/site/>, which uses the Jekyll static site generator and a fork of the [documentation-theme-jekyll](https://github.com/tomjoht/documentation-theme-jekyll) theme. Turning the HTML to markdown required creating [google-sheets-to-markdown](https://vishvAsa.github.io/google-sheets-to-markdown/).

- **<https://sites.google.com/site/sanskritcode/> will be deleted after a few days.**

### Advantages
- Anyone can use the convenient "Edit me" button to contribute changes via the github pull request.
- Whether or not this attracts more contributions (I suspect it won't), atleast the data is freed from Google so that anyone can easily copy and host it.
- Folks can use Disqus tool at the bottom to comment on the pages as well!

### Comments
Feel free to use this Jekyll theme/ setup for your own sites!

## Hugo
Shifted to Hugo - which is many times faster and easier to iterate over offline. 
A Hugo version of the "sanskrit documentation theme" with many of the features described below is available (and used in this example) - [sanskrit-documentation-theme-hugo](https://github.com/sanskrit-coders/sanskrit-documentation-theme-hugo).