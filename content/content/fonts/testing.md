---
title: Testing
---

## Intro
- One can only test sequences in font+rendering engine combination.

### To test using the harfbuzz rendering engine:
Instructions [here](https://groups.google.com/d/msg/sanskrit-programmers/PEQBZ4b4OOg/pPlKqPeEI74J).

```hb-view /usr/share/fonts/truetype/ttf-devanagari-fonts/sahadeva.ttf
    अत्र (Ctrl-D)
```

### pango

Supposedly can render with HarBuzz or Uniscribe or CoreText!

- pango-view --font "Sahadeva 40" -t अत्र
- ` pango-view --markup --text '<span font_family="Noto Sans" lang="sa" fallback="false">र꣣यि꣢र꣣꣬भ्य꣢꣯य꣣द्रा꣡जा꣢नꣳ  
  ಲಬ್ಧ್ವಾ </span>' `

- Markup language
    [here](http://www.pygtk.org/pygtk2reference/pango-markup-language.html).

### Testing on Chrome

Fonts can also be tested on chrome by following a two step process.


- Install the font.
- Choose to use the font in Chrome:
  - Go to settings
  - Search for "font" in settings
  - get to the "Customize fonts" button
  - set all choices to the font you test. Or view a text file in Chrome after setting just the monospace font.
- gmail and its compose window may use some other
font.

### Other tools
- Google [font tester](http://www.google.com/fonts#ChoosePlace:select/Script:devanagari).


## Text to test

  - [svara-s
    in](http://www.sanskritweb.net/sansdocs/tbsvaras.pdf)
    taittirIya-brAhmaNa.
  - [Rgveda
    scan](https://en.wikipedia.org/wiki/File:Rigveda_MS2097.jpg).

### devanagari
```
कॢप्तिः। ॐ॥ प्रीतिः। लोगों को देखो। हाँ। ಹಿಮಾದ್ರಿಸುತೇ ಪಾಹಿ ಮ್ಮಾಮ್।

धातुपाठे गमॢ। अश्वरुहः। शङ्करः।  काळी काळे।

Check udAtta and anudAtta collusions.
अ॒ग्निमी॑ळे पु॒रोहि॑तं य॒ज्ञस्य॑ दे॒वमृ॒त्विज॑म् । 
मू॒ मॄ॒ मॢ॒ मॣ॒। ई॑ ऐ॑ ओ॑ औ॑ अं॑ अः॑। मि॑ मी॑ मे॑ मै॑ मो॑ मौ॑ मं॑ 

Visarga and anusvAra with svara modifiers
मं॑ मः॑
ससजुषो रुँः ।

Check anunAsika ँ collision
अनुनासिकचिह्नम् - लीँ

क्त्य क्त्व छ्य ड्य।

ೱ ೲ ᳵ ᳶ अन्तᳶपश्यन्
लीँ

कॆ कॊ कॅ

Are the sAma svara-s crowded?  
बृ꣣ह꣢꣫न्निदि꣣ध्म ए꣢षां꣣ भू꣡रि꣢ श꣣स्त्रं꣢ पृ꣣थुः꣡ स्वरुः꣢꣯। ये꣢षा꣣मि꣢न्द्रो꣣ यु꣢वा꣣ स꣡खा꣢ ।।2 ।।  
अ꣡त꣢स्त्वा र꣣यि꣢र꣣꣬भ्य꣢꣯य꣣द्रा꣡जा꣢नꣳ सुक्रतो दि꣣वः꣢। सु꣣पर्णो꣡ अ꣢व्य꣣थी꣡ भ꣢रत् ॥3 ॥  
```

### kannada
```
ಲಬ್ಧ್ವಾ 
```

### Accents
```
\u0300 - ದೇಶಯೈಃ̀ देश्ये̀
Independent svaritas देश्यः᳡ ದೇಶ್ಯಃ᳡ देश्यः᳕ ದೇಶ್ಯಃ᳕ 
```

## Report bugs

[GNU Freefont](https://savannah.gnu.org/bugs/?group=freefont).
Chrome.
  - Outstanding bugs: . (Reported bugs:
    [here](https://code.google.com/p/chromium/issues/list?can=1&q=vishvas&colspec=ID+Pri+M+Week+ReleaseBlock+Cr+Status+Owner+Summary+OS+Modified&x=m&y=releaseblock&cells=tiles).)
Free desktop
  - Outstanding bugs
    [1](https://bugs.freedesktop.org/show_bug.cgi?id=70509).
Noto \[[here](https://github.com/googlei18n/noto-fonts/issues)\]
