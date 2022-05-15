+++
title = "Meter-identification"
+++



**A Computer Program To Identify Sanskrit Metres**

By

G S S Murthy

[murthygss@gmail.com](mailto:murthygss@gmail.com)

Synopsis: The methodology of a program in Java which identifies the name of the Metre when a quarter of a Sanskrit stanza is input in Roman script as per a defined transliteration scheme is briefly described after introducing the basic concepts of Sanskrit prosody.

Key words: computational linguistics, Sanskrit metres, prosody, java, _chandas_, _vrutta_

[Note: All Sanskrit words are in italics.]

1. This paper describes a program in Java which identifies the Metre of a Sanskrit verse. When a quarter of a Sanskrit stanza is input in Roman script as per a specified transliteration scheme, this program, called MAATRAA, scans the input, identifies the _vrutta_ (metre) and outputs the name of the _vrutta_. The self-executable version of the program called Maatraa5d, is available at [http://www.mediafire.com/?p21y045io80il5o](http://www.mediafire.com/?p21y045io80il5o)<span style="text-decoration:underline;">. </span>The source code is available at [https://github.com/vvasuki/sanskritnlp/tree/master/src/main/java/gssmurthy](https://github.com/vvasuki/sanskritnlp/tree/master/src/main/java/gssmurthy)

The transliteration scheme, as per _devanaagaree_ alphabetical order, as accepted by the program, is as follows

	    _svara_: a, aa or A, i, ee or I, u, uu or U, Ru, RU, lRu, e, ai, o, ou

	    _anusvaara_: m, visarga: h

	    _vyanjana_: ka varga: k, kh or K, g, gh or G, ~G

	           _ca varga_: c, ch or C, j, jh or J, ~J

	           _Ta varga_: T, Th, D, Dh, N

	           _ta varga_: t, th, d, dh, n

	           _pa varga_: p, ph or P, b, bh or B, M

	           _antasTha_: y, r, l,v

	           _uuShma_: S, Sh, s, 

	           _anunaasika_: ~M

2. Before we describe the methodology of the program, a brief introduction to basics of Sanskrit prosody would be in order: A** _padya_ **(=a stanza) consists of four** _paada_’**s** **(=quarters) each** _paada_ **having a fixed number of** _akshara_’**s** **(=syllable) and/or a fixed number of** _maatraa_’**s** **(=a unit of syllabic duration). A single svara (=vowel) or one or more vyanjana’s (=consonant) followed by a _svara_ constitute an** _akshara_. **A short _svara_ has a  duration of one** _maatraa_, **called** _laghu_ **and a long vowel has a duration of two** _maatraa_’**s**, **called** _guru_. **When a short _svara_ is followed by an** _anusvaara_, **a** _visarga_ **or a** _samyuktaakshara_ **(conjunct consonant), it is treated as a** _guru_ (**two** _maatraa_’**s**).  **

In what is called the** _gana_-**based system, each** _paada_ **of a** _padya_ **is divided into groups of three** _akshara_’**s** **each. An age-old cyclic mnemonic that helps in remembering and characterizing the** _gana_**’s** **is as follows:** **

_Ya-maa-taa-raa-ja-bhaa-na-sa _

A sequence of 3 adjacent** _akshara’_**s** **in this mnemonic characterizes a** _gana_ **and the first _akshara** **_of a sequence is the name of that** _gana_.  **For example, the first sequence of 3** _akshara’_**s _ya-maa-taa**, **_whose 3** _akshara’_**s** **are respectively** _laghu, guru, guru_  **specifies that** _ya gana_ **consists of a sequence _laghu, guru, guru**. **_Similarly** _sa gana _ **is specified by** _sa-ya-maa_, **a sequence of** _laghu, laghu _**and_ guru**. **_It may be noted that what characterizes a _vrutta_ is the specific string of _laghu_’s and _guru_’s that forms a _paada_ and the  system of _gana_’s only helps in memorizing the string and composing a verse or identifying the metre of a given verse.

Broadly there are 3 types of metres in classical** **Sanskrit**.**

i**. **Each** _paada_ **of a** _sloka_ **consists of a specified number of** _maatraa_’s**, with some

constraints**.**

ii**. **Each** _paada_ **consists of a specified sequence of** _gana_**s**, **which may be

** **followed by one or two** _akshara_**s, each being either** _guru_ **or** _laghu_. **The last

_akshara ** **_of a** _paada _ **is generally considered a** _guru_. **Such stanzas are called**  **

_vrutta_s** **or** _vrutta- sloka_’**s**.**

iii.  Each** _paada _**consists of a specified number of** _akshara_’**s** **with some constraints.



Among  metres  employed in classical** **Sanskrit** **literature**, _anushtup_ ( **often called** **

_sloka**) **_appears to be the only one which belongs to the third type.  Whereas**  **

_maatraa**-**_based metres like** _aaryaa_ **and** _vaitaaleeya _ **have only a defined number of** _maatraa_**s** **in a** _paada_ **subject to a few other constraints**, _gana_- **based** _vrutta_**s** **like** _mandaakraantaa, shaarduulavikreedita_ **etc have a defined number of** _akshara_s **and** _maatraa_**s** **in a** _paada_**. For _anushtup** **_category**, **the number of** _akshara_’**s** **in a** _paada_ **is specified as eight, with some constraints on the use of certain** _gana_'**s** **at certain positions of the _paada**.**_

Two well known works on Sanskrit prosody are  _Chandas-shaastram_ of Pingala and _Vruttaratnaakara_  of Kedaarabhatta. While Pingala adopts the method of _Sutra_’s like Panini for defining the characteristics of a stanza, Kedaarabhatta interestingly uses a _paada_ of a _vrutta_  to define the _vrutta_. This program has adopted the names of _vrutta_s as given by Kedarabhatta.

3. We shall now briefly describe the steps involved in the program, by taking a specific input string, namely the first _paada_ of the first _sloka_ of _Kumaarasambhavam_ of Kaalidaasa.  -> string1= ”astyuttarasyaam diSi dEvataatmaa”.



* compute length of string1=32
* create an array (varNa[ ]) of characters that form the input: varNa[1]=a, varNa[2]=s, etc.
* remove all spaces in the input: string1=“astyuttarasyaamdiSidEvataatmaa”
* replace all 2-letter representations by single letter representation internally in a unique manner: string1=“astyuttarasyAmdiSidEvatAtmA”
* implement the algorithm for determining the _maatraa_ of each _akShara_:
* If varNa[m]=a,i,u

        maatraa[m]=1 

* If varNa[m]=_svara_ other than a,i,u

  maatraa[m]=2

* If varNa[m]= not a _svara_

  maaatraa[m]=0

* If maatraa[m]=1& maatraa[m+1]=0& maatraa[m+2]=0

  maatraa[m]=2

* Treat the _maatraa_ of last _varna_ in a quarter as 2.
* Convert the result into a string after determining the _maatraa_s of all _varna_s in the input and removing “zero”s(which correspond to _vyanjana_s):

  22122112122, where 1 represents a _laghu_ and 2 represents a _guru_.


The program has a built in data base of scans of most frequently occurring _vrutta_s (about forty) and their corresponding names in two arrays.



* Compare the derived scan with the scan data base and when a match occurs, output the corresponding name from the name array.
* Keep count of _akshara_’s in the input and output it.
* For this particular input, the output would be as follows:

“Result of scan is 221-221-121-22


    Total maatraas = 18, Total akshara’s = 11

Name of vrutta is Indravajraa”

If the number of _akshara_’s in the input is 8, it checks if it meets the requirements of _anushtup _ metre. Despite being widely used in Sanskrit classical literature and scriptures, it was found that _anushtup_ was poorly defined. This led the author into an entirely new area of study which resulted in defining the characteristics of _anushtup_ afresh. This study has been published as a paper in Annals of Bhandarkar Oriental Research Institute, Pune, Vol.LXXXIV, 2004. It would be out of place to delve into that research here. Suffice it to say that this program makes use of the results of that research work for recognizing _anushtup_. As the odd _paada_ of _anushtup_ differs from the even _paada_ of _anushtup_, the program indicates if the input is as per odd _paada_ or even _paada_.

Similarly the program also checks if the input is first half or the second half of _aaryaa_ metre. The input has to be half of a stanza instead of a quarter of a stanza, in case of _aaryaa_. When a quarter of a _vishamavrutta_ which is defined as one having unequal quarters in length and structure is input, the program can only check if the quarter input is recognizable as one among the scans scored.

If the scan of the input does not match with any of the scans in its embedded database, the program outputs, “I do not know this vrutta. It may not be a vrutta.”

4. As a sequel to this program another learning program has also been developed which builds out a data base of _vrutta_s as the user keeps on using the program. This program is not in the public domain. After the user inputs a quarter of a verse, the program asks the user to indicate the name of the _vrutta_ also. After getting confirmation from the user that the input of the text and name of _vrutta_ are both free from error, it stores the scan of the text and the name of the _vrutta_ in two parallel files. In a subsequent interaction with the user, when a text is input it checks if its scan matches with any scan already stored and if there is no match, the program outputs, “I do not know the name of the vrutta. If you want me to learn it, please input the name of the vrutta” and proceeds to update its database.

5. The program essentially demonstrates how computer programming is possible in the area of Sanskrit prosody. It could certainly be improved in many ways. One could augment the program to accept devanaagaree input and output in devanaagaree. One could also develop a program that is web-based, so that the user can interact with the program over the internet.

- - - -
