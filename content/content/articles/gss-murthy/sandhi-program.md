+++
title = "Sandhi program"
+++


A _JAVA_ program to implement Sandhi Rules of Sanskrit in Roman Script.

G.S.S.Murthy*

* Advisor (retd.), Telecom Commission, Govt. of India.

## Abstract

_The paper provides an outline of a successfully implemented Java program for obtaining the combination of two adjacent Sanskrit words as per external sandhi rules of Sanskrit grammar. External sandhi rules define the manner in which two Sanskrit words, when spoken without a pause get modified at the instance of liasing. If two Sanskrit words are input in Roman script as per baraha4.0 transliteration scheme, the program outputs the combination and also the concerned sandhi rule. The paper after presenting the baraha transliteration scheme, briefly introduces typical sandhi rules and then describes the salient features of the java program.  The program demonstrates the feasibility of computerizing Sanskrit grammar. It can form a part of a word processing package for Sanskrit and can also be adapted to be a part of a tutorial for Sanskrit grammar. It can be easily converted into a java applet for being posted on the Internet. It should also be possible to adapt it for a devanaagari key-board based on Unicode._

## Key-words

_Sanskrit, devanaagari, grammar, baraha, sandhi, Java, word-processing, transliteration._



## 1. Introduction

   Sanskrit grammar is known both for its complexity and rigour. Thanks to the early grammarians of Sanskrit among whom PaaNini towers as a colossus, the rules of grammar have been studied in detail, analyzed and beautifully codified. Such a well- codified set of rules of grammar obviously lends itself to computerization and this paper describes an effort in this direction where external sandhi rules of Sanskrit have been codified as a Java program. External sandhi rules refer to the manner in which two adjacent words when spoken without a pause get modified at the instance of liaison. The program restricts itself to accepting the two words when they are transliterated in Roman script and it gives in Roman script the output which incorporates the phonemic inflections at the point of their liaison. It also states the rule that comes into operation. The transliteration scheme on which the program is based is the “baraha 4.0” scheme, which has been devised by Chandrasekhar Vasu and which was primarily and originally meant for Kannada and was later extended to devanaagaree script.

## 2. Baraha transliteration scheme

There are various schemes for transliterating Sanskrit into Roman script. Indologists since a long time have been using a scheme which involves use of special modificatory characters, which does not lend itself easily to being represented on a standard computer keyboard. Various schemes have been in vogue specifically suited for a computer keyboard notable among them being “I-trans”, a scheme devised by Avinash Chopde and “Harvard-Kyoto” scheme, which is popular among the present western Indologists. Baraha 4.0 is quite akin to I-trans and has the advantage of being convertible to devanaagaree script through baraha software package which is freely downloadable from the internet (Ref. iii). The felicity with which baraha transliteration scheme can be extensively used can be gauged by visiting the internet site ( ref.iv) created by the author where Sanskrit text of  laghuvaalmeekeeyaM, an abridged version of Vaalmeeki’s raamaayaNaM running to more than 17000 lines of Vaalmeeki’s original poetry is posted.


The following gives the baraha transliteration scheme in devanaagaree (Sanskrit) alphabetical order:


Vowels: a, aa or A, i ,ee or I, u, uu or U, Ru, RU, lRu, e,   ai, o, ou.


anusvaara: m


Visarga: h


Consonants: k, kh or K, g, gh or G, ~G


c, ch or C, j, jh or J, ~J


T, Th, D, Dh, N


t, th, d, dh, n


p, ph or P, b, bh or B, m or M


Semi-vowels: y, r, l, v


Sibilants: S, Sh, s


Aspirate: h or H


anu-naasika: ~M


avagraha symbol: &


It may be pointed out here that while transliterating Sanskrit words in this paper   baraha4.0 scheme is followed, and as a consequence first letter of a Sanskrit word is not capitalized unless the transliteration scheme requires it and similarly uppercase letters may occur even when it is not the first letter of a word or sentence. The word Sanskrit itself is treated as an accepted word of English vocabulary.

## 3. Sandhi Rules of Sanskrit

For purposes of clarity it is convenient to classify rules of sandhi into external and internal. External rules come into effect between adjacent words, whereas internal rules are mandatorily operative in the body of a word while deriving the word from its root and also when final letters of nominal and verbal bases come in contact with initial letters of terminations. Internal rules also apply to changes which are caused by the initial letters of a word being affected by prepositions( upasarga) which may precede them. In compound words(samaasa), all the external rules are operative with specific deviations.


 Between adjacent words in a sentence the external rules are optional depending on whether the words are spoken without a pause or not. In a verse as no pause is permissible except at the places specified (yati), external sandhi rules are operative. In a compound word also the external sandhi rules are operative for the same reason.


 As already indicated, the program which this paper deals with restricts itself to implementing only the external sandhi rules.


 To give an idea of how these sandhi rules affect the words a few typical rules are demonstrated below:

### 1. savarNadeergha rule

If a word ends with an ‘a’ or ‘aa’ and the word following it begins with  ‘a’ or ‘aa’, when read together the ending of the first word and the beginning of the 2<sup>nd</sup> word coalesce to form a single ‘aa’. The complete rule could be stated as follows:


(a or aa) + (a or aa) =aa


(i or ee) +  (i  or ee)=ee


(u or uu) +(u or uu)=uu


(Ru or RU) +(Ru or RU)=RU.


It is to be noted that baraha scheme allows aa, ee and uu to be


equivalently written as A, I and U respectively. The following are examples for this savarNadeergha rule:


daitya + arih = daityaarih


lakShmee + eeSah = lakShmeeSah


guru + upadeSah = guruupadeSah

### 2. ~GamuDaagama rule

   When the last letter of a word is ~G, N, or n and is preceded by a short vowel, if it is followed by a word starting with a vowel, the last letter of the former gets doubled. The following examples serve to clarify the rule:


bhavan + eva = bhavanneva


pratya~G + aatmaa = pratya~G~Gaatmaa


But,


bhavaan + eva =bhavaaneva

### 3. yaNaadeSa rule

(i or ee) +(any vowel except i or ee) = y +( that vowel)


(u or uu) + (any vowel except u or uu) = v +(that vowel)


(Ru or RU) + (any vowel except Ru or RU) = r + (that vowel)


The following are the examples:


nadee + atra = nadyatra


madhu + aanaya = madhvaanaya


kartRu + iti = kartriti


Classical grammarians of Sanskrit (Ref. i) do not classify sandhis into external and internal and the total number of sandhi rules is about 50. Gole in his tersely written Series of Sanskrit readers (Ref. ii) has admirably classified external sandhi into a set of 14 rules and these rules form the bases for the Java program.

## 4. Implementation

   Examples given above clearly point out to the fact that programming of these rules translates itself into string manipulation as per specified logical conditions. Java has a rich repertoire of string methods which makes it an eminently suitable programming language for this purpose. The added advantages of Java are that it is freely available, is comparatively recent and therefore more programmer-friendly and is becoming increasingly popular.


While programming, the following aspects of baraha 4.0 need to be and have been taken into account:

1. It allows more than one way of representing a devanaagaree character. For example aa and A are equivalent, bh and B are equivalent.
2. Certain devanaagaree characters are represented by a pair of Roman letters. For example, ai or ou transforms itself into a single devanaagaree character.

There is one vowel lRu in Sanskrit which one hardly encounters in Sanskrit literature, except in grammar treatises, where they are quoted as grammarians’ specimens.  A few routes of verbs end in lRu. So far as external sandhi rules are concerned, it could be safely ignored and has been ignored in the Java program. Although it is not too difficult to incorporate it into the program, the additional effort involved did not appear to be worth it.


In certain cases of sandhi, two words can combine in more than two ways. For example, 


Taan + Satruun = taa~JCatruun, taa~JSatruun, taa~JcSatruun, taa~JCSatruun, or taa~JcCatruun.


The program restricts itself to providing not more than two variants. It is felt that additional ways of combining the words are of theoretical interest only.


The program does not validate the two words that a user inputs. If a user inputs character- strings that have no meaning in Sanskrit, the program dumbly proceeds to the sandhi rules and gives an output. Although it may be relatively easy to invalidate certain character combinations, it will need a data-base oriented programming effort to validate words.


Some words are treated as exceptions to a sandhi rule and these words are to be treated differently. To the extent the exceptions have been listed in the grammar books consulted, these have been taken into account. It is possible that there are some more exceptions and these will need to be incorporated as and when they come to notice. As a corollary, if the first word is a compound word, which has the exception-word as its last elemental word, the program may fail to treat it correctly.


There is one sandhi rule that depends upon whether the first word is in dual form (dvivacana) or not. As this cannot be determined by the program itself, the program asks the user to specify if the first word is in dual form and proceeds to apply the sandhi rules depending upon the response of the user.


The program in JAVA (.java) is 31 kB long and the byte code CLASS file (.class) is 17kB long. The program is split into 34 sections and a section handles input-output interaction or a convenient portion of sandhi logic. A sandhi rule may be dealt in more than one section and a section may deal with more than one sandhi rule, although in many cases there is a one to one correspondence between a sandhi rule and a section. Each section has an entry flag created and raised by the previous section, which is lowered (1 to 0) if the section finds that the pair of input words falls within the purview of its logic. Each section creates and raises an exit flag which will act as an entry flag for the next section. Although the program could be written without creation of exit-entry flags, flags are very helpful in debugging.


There is a filtering effect in the way the sections have been strung together with exceptions being treated first before taking up the general rule and to this extent the order in which the sandhi rules are treated forms an integral part of sandhi logic.


A section dealing with yaNaadeSa rule is reproduced below as an example of a typical section.


```java
int flag3=0;		


char yan1[]={'i','I','u','U','Z','X'};


char vowels[]={'a','A','i','I','u','U','e','o','z','x','Z','X'};


String yan3[]={"y","y","v","v","r","r"};


int numb[]={8,9,10,11};


String twin[]={"ai","ou","Ru","RU","~G","~J"};


section9:/*implements yaN sandhi rules*/	


if (flag2==1)


loop1:{for (int l=0;l&lt;6;l++)


if (lett11a==yan1[l])


{for (int m=0;m&lt;12 ;m++)


if (lett21a==vowels[m])


{for (int t=0;t&lt;4  ;t++)


 if (m==numb[t]) 


                    {string2b=twin[t].concat(string2b.substring(1,n4));


} 			    				


stringOut=((string1b.substring(0,n3-1)).concat(yan3[l])).concat(string2b);


System.out.println("The operative yaN rule is :"+('\n')+


"i or I + any vowel other than i or I = y + that vowel"+('\n')+


"u or U + any vowel other than u or U = v + that vowel"+('\n')+


"Ru or RU + any vowel other than Ru or RU = r + that vowel");





flag3=0;


break loop1;


             }			 


}			 


{flag3=1;


}


}

```

It may be noted in passing that the fact of Java being a completely object-oriented language has not been of any import to this program as the only class of objects that need to be created is the String class.


A typical user interaction screen in the DOS mode is given below:





**Output: Pl enter a single digit number**


**              to indicate the number of examples you want to try.**


**Input:_2_**


**O: Pl enter the first word.**


**I: _madhu_**


**O: Pl enter the second word.**


**I: _arih_**


**O: The operative yaN rule is:**


**      i or I + any vowel other than i or I = y + that vowel**


**      u or U + any vowel other than u or U = v + that vowel**


**      Ru or RU + any vowel other than Ru or RU = r + that **


**      vowel**


**     Madhu +arih = madhavrih**


**O: Pl enter the first word.**


**I: _prabho_**


**O: Pl enter the second word.**


**I: _iti_**


**O: The operative (ayavAyAv) rule is:**


**     Final e and o  before any initial vowel other than a are **


**     changed to respectively ay and av, or both to a**


**     Final ai and ou  before any initial vowel are changed to**


**     respectively Ay and Av, or both to A**



 Prabho + iti = prabhaviti


**    Prabho+ iti =prabha iti**



## 5. Conclusion

   The paper has outlined a java program which implements external sandhi rules of Sanskrit, when Sanskrit text is input in Roman script as per baraha4.0 transliteration scheme. When a pair of Sanskrit words is input, the program outputs the combination following the rules of sandhi. It also enunciates the concerned sandhi rule which is operative. The successfully implemented program amply demonstrates the feasibility of computerizing the rules of Sanskrit grammar. It can be easily adapted to be a part of a word-processing package for Sanskrit and also as a part of a Sanskrit tutorial package. As java is capable of accepting Unicode characters, it should be possible to adapt it for a Sanskrit Unicode keyboard also. It can also be converted into a java applet for posting on the internet. With appropriate modifications the program will also be able to accept as options other transliteration schemes such as I-trans or Harvard-Kyoto scheme.

## 6. References
  1. Sabdaratnaavali: by G.V. Krishnacharyar, 3<sup>rd</sup> edition, printed and published by V.Govindiah, Bookseller, Chikpet, Bangalore, 1892.( The text is in Sanskrit and the script is Telugu)
  2. Second Course of Sanskrit Reader: by M.S.Gole, 3rd edition, published from Poona (now Pune), 1902.
  3. Programming with Java; by E.Balaguruswamy, 2<sup>nd</sup> edition, Tata McGraw-Hill Publishing Company Ltd, New Delhi, 2001
  4. [www.baraha.com](http://www.baraha.com): The Internet site dealing with baraha and created and maintained by designer of baraha scheme, Chandrasekhar Vasu.
  5. [www.geocities.com/](http://www.geocities.com/goruratreya/) : On this is posted laghuvaalmeekeeyaM, an abridged version of Vaalmeeki’s RaamaayaNaM, in Roman script as per baraha4.0 scheme. +++(Defunct site)+++





