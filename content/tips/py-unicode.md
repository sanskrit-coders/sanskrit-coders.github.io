---
title: Py Unicode
---
  

  

\[ Culled from emails by shreevatsa and anubhav. \]  

## General tips

- Detailed information
    - You can[read this](http://www.joelonsoftware.com/articles/Unicode.html)or the introduction[section here](http://docs.python.org/2/howto/unicode.html)to get a rough understanding of the issues involved, as I mentioned before on[this mailing list here](https://groups.google.com/d/msg/sanskrit-programmers/ggIxk_R88Es/E0S6NklVZtYJ).\]
    - [Handling text correctly](http://dafoster.net/articles/2013/06/01/handling-text-correctly/)
    - [Getting Unicode right in Python](http://blog.notdot.net/2010/07/Getting-unicode-right-in-Python)
- When programming in Python, always remain aware of whether a particular object is "unicode" (code points) or "str" (bytes).
    - Basically, Unicode code points logically represent a character (like "092E: DEVANAGARI LETTER MA"), independent of encoding. Python contains both "unicode" objects that are these, or the C-like representation of the actual bytes used to represent the characters \*\*in some encoding\*\*.
    - General info: This is like Java's "string" and "bytes" types ([see here](http://stackoverflow.com/a/4385653/4958)).

## Use unicode internally

- Always use the "unicode" type internally. So:
    - As soon as you see some input from the external world, decode it immediately \[e.g. for a file, the stream of bytes it contains may represent a stream of characters in the 'utf-8' encoding, so decode from the file into 'unicode' characters whenever you read from it\], and 
- To this end, I've taken to putting   
    "from \_\_future\_\_ import unicode_literals"  
    at the top of my Python programs, so that whenever I write a line of code like   
    s = 'hello world'  
    it is equivalent to writing   
    s = u'hello world'  
    That is, so that all literals are interpreted as Unicode by default. This is the default in Python 3.  
    

## Outputting stuff

- whenever you write something to output (even "standard output"), always encode it and write out the actual stream of bytes to the output, so that there can be no confusion.
- By using |tee, you’re relying on the shell to handle the encoding issues. That’s bound to end in disaster, unless you understand how your shell handles Unicode.

## File input

-  csv reading:
    - use unicodecsv.reader instead of csv. 
    - Confusingly, it looks like unicodecsv.reader expects the file to be opened in the default encoding, not UTF-8.

## Grapheme cluster handling

- See [here](http://stackoverflow.com/questions/6805311/playing-around-with-devanagari-characters).