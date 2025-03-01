+++
title = "Scanning"
+++

## General phone procedure

- Use autoscan on a good app
  - check the quality of images, and rescan the misscanned pages
- transfer the images to desktop, or produce pdf on phone 

## Camscanner
No good OCR - just scanning. 

- Auto-scan [video](https://youtube.com/shorts/KFLCF_sU40A) .
- Support for generating 2 page images from single photo - only in non-automatic mode.


## vflat 
- [android](https://play.google.com/store/apps/details?id=com.voyagerx.scanner&hl=en_IN&gl=US), [apple](https://apps.apple.com/in/app/vflat-scan-pdf-scanner/id1540238220)
- Auto-scan [video](https://www.youtube.com/shorts/JiG41q9R9yk) .
- free app - Scanning and exporting images - no restrictions. pdf making restricted to 10 images.
- generates 2 page images from single photo well. But there is a monthly limit.

## pdf processing
### Splitting multi-page/ column pages
- can be done with pdfarranger - but can be laborious if facing page proportions are not uniform
- briss is more automated. Still - makes errors. Can make overlapping rectangles.
  - Source: [GH](https://github.com/mbaeuerle/Briss-2.0/releases)
- can open the pdf on computer, and use adobe scan in 2-page mode on it.

{{< figure src="../images/briss-overlapping-rectangles.png" title="" class="thumbnail">}}

## pdf compression
- `gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=alt.pdf tirukkural_alt_2.pdf`
- small pdf or similar online resources
