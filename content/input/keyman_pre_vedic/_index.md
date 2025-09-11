+++
title = "+Keyman Pre-vedic"
+++
## Description

Pre-Vedic Sanskrit Devanagari Phonetic (OPTITRANS) keyboard is Sanskrit devanAgarI input method by a modified version of OPTITRANS and Harvard-Kyoto transliteration systems with the following special features:

- greater reliance on reconstructed early vedic pronunciation (details and demo [here](https://vishvAsa.github.io/sanskrit/registers/early-vedic))
  - ai=ए, Ai=ऐ, au=ओ, Au=औ.
  - emphasis on the udAtta accent instead of svarita.
- allow input of hrasva ऎ and ऒ.
- support for common dravidian sounds (useful for maNipravALa).

You can use all the standard ITRANS key sequences plus key
sequences such as the below.

nk->ङ्क्, nkh->ङ्ख्, ng->ङ्ग्, ngh->ङ्घ्
nch->ञ्च्, nCh->ञ्छ्, nc->ञ्च्, nC->ञ्छ्, nchh->ञ्छ्,
nj->ञ्ज्, njh->ञ्झ्, nT->ण्ट्, nTh->ण्ठ्, nD->ण्ड्, nDh->ण्ढ्
c->च्, C->छ्, z->श्, S->ष्, jn->ज्ञ्, R->ऋ

Examples: Type `saMskRta` for संस्कृत.

## Details

- The closely related m17n keyboard [here](https://github.com/indic-transliteration/m17n-db-indic/blob/master/sa-vedic-itrans.mim)
- The motivation behind some basic additions made to the basic ITRANS scheme is described [here](https://sanskrit-coders.github.io/input/optitrans/), along with a tabulated comparison with several other transliteration schemes.

## Installation and use
Install keyman on your computer. Then make it use the the below kmp file. (In Mac, you double click that file, or you can drag and drop the file onto the keyman settings window.)

- [kmp](https://sanskrit-coders.github.io/input/keyman_pre_vedic/optitrans_devanagari_sanskrit_pre_vedic.kmp)
- [js](optitrans_devanagari_sanskrit_pre_vedic.js)

## Building
- Run  `npm install -g @keymanapp/kmc` to install kmc
- Get the source code from [here](https://github.com/sanskrit-coders/keyman-keyboards/tree/master/release/o/optitrans_devanagari_sanskrit_pre_vedic).

```bash
git clone https://github.com/sanskrit-coders/keyman-keyboards.git --depth 1
```

- Switch to the  and run `kmc build .`

- Installation on linux `km-package-install -f build/`.
- Or copy/ symlink the files over to the keyman web directory.

You can run and test it with [keyman web](test).