---
title: +Misc dict formats
---
## Misc
- tsv files.
  - In TSV file, newline is \\n. 
- Monodix (dix) format (use with lttoolbox)
    - basics [here](http://wiki.apertium.org/wiki/Monodix_basics).
    - Abbreviations [here](http://wiki.apertium.org/wiki/List_of_symbols).
- slang jargon file
  ```
  :word1:definition 1
  :word2:definition 2
  ```

## Babylon
### babylon source format (gls file)
    
```
[blank line]
Term | Alternate1 | Alternate2| ... | AlternateK  
Definition  
[blank line]  
Term | Alternate1 | Alternate2| ... | AlternateK  
Definition  
[blank line]  
...
```
- Special formatting
    - In Babylon source file, newline is <br>
    - `<a href="bword://next">next</a>`

## stardict
- \[Full details [here](https://github.com/indic-dict/stardict-test/blob/master/stardict_format.md)\]:
- Toy dictionary [here](https://github.com/indic-dict/stardict-test).
- stardict-[index](https://code.google.com/p/stardict-3/wiki/InspectStarDictIndex) stardict-test/stardict-test.idx
- syn file format [here](https://code.google.com/p/stardict-3/source/browse/dict/doc/StarDictFileFormat), [here](https://code.google.com/archive/p/babiloo/wikis/StarDict_format.wiki). Example - [stardict-test.syn](https://github.com/indic-dict/stardict-test/blob/master/stardict-test/stardict-test.syn "stardict-test.syn").
- simidic wiki [screenshot](http://i.imgur.com/27dYSJP.png), stardict-tools list. 

### Support
Used by: Stardict, GoldenDict, QDict, SDCV (command-line)

### Dictionary making tips

- Technique to create stardict files
    - From TSV or babylon source files (and back) using stardict-editor
        - [stardict.org](http://www.stardict.org/HowToCreateDictionary) ([IMG](http://i.imgur.com/4g00seW.png)).
        - Starting off a babylon source format is the best.
    - Other useful tools: babylon, tabfile, dictzip, dictunzip, dictconv ([man](http://man.cx/dictconv(1))ual) . Note tabfile in v 3.0.1 has trouble with duplicate entries in tsvfile. 3.0.5 works fine (need to build and use separately).
- Stardict parsers
    - [java](https://github.com/search?utf8=%E2%9C%93&q=stardict+java&type=Repositories&ref=searchresults). (no syn file support as of 2017)  

## dictd dicts
- The standard dictd server made by the DICT Development Group uses a special DICT file format, although other dictd servers (such as GNU Dico) may optionally use other file formats.
- Dictionaries in the standard DICT file format are made up of two files, a .index file and a .dict file (or .dict.dz if compressed).

Creation:
- These files are not usually written manually but are compiled by a program called dictfmt. For example, from jargon file: ` dictfmt --utf8 --allchars -s "My Dictionary" -j mydict < mydict.txt`

### Support
Used by: dict clients (including some emacs plugins) and servers, GoldenDict, GNOME Dictionary
