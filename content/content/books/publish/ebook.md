+++
title = "Ebook"
+++

## Kindle book publishing

- Unicode tutorial [201508](http://www.aliciaramirez.com/2014/05/how-to-make-a-kindle-ebook-from-scratch/).
- Cover specs: Minimum: 625 pixels on the shortest side and 1000 pixels on the longest side
- Create a .azw3 ebook.
- Publish on  [Kindle Store](https://kdp.amazon.com/)!.
  - हिन्दी-मराठी-ગુજરાતી-தமிழ்-മലയാള-भाषाणां पुस्तकानि प्रकाशयितुं शक्यन्ते Kindle-store-मध्ये। (2018)
  - Cannot publish books for free (2016).
    - Possibly: Remove DRM etc..

## Google play book publishing

- Create ePub book:
  - "We accept ePub and PDF files (including scans of hard copies) and cover images (JPEG, PDF, PNG, TIFF). If you provide updated files and they process successfully, they'll overwrite the older versions of the same type in our system. Follow our naming guidelines if you are submitting multiple PDF files (e.g., 1234567890\_frontcover.pdf, 1234567890\_interior.pdf, 1234567890\_1of2.pdf 1234567890\_2of2.pdf). [Learn more](https://support.google.com/books/partner/answer/3297415?hl=en-US)."
  - PDF vs ePub
    - PDF files tend to result in "Fixed" display, meaning that a reader cannot change the font and expect the text to flow into newer lines accordingly. This results in clumsiness.
    - On the other hand, pdf-s are easier to make, with nice book-like finish.
- Publish [here](https://play.google.com/books/publish).
  - If Google Play finds something amiss with your uploaded files, it will let you know.
- Possibly -
  - Make it available for free, remove DRM, enable full preview, enable pdf download, enable full copy paste etc..
- प्रकाशनीयवस्तूनि
  - राघवेन्द्रभट्टस्य [अत्र](http://saraseee.blogspot.in/2016/01/blog-post_25.html)।
    
## Downloading gdrive view-only pdfs

<details><summary>विस्तारः (द्रष्टुं नोद्यम्)</summary>

Put this into JS console.

```js
let jspdf = document.createElement( "script" );
jspdf.onload = function () {
let pdf = new jsPDF();
let elements = document.getElementsByTagName( "img" );
for ( let i in elements) {
let img = elements[i];
if (!/^blob:/.test(img.src)) {
continue ;
}
let canvasElement = document.createElement( 'canvas' );
let con = canvasElement.getContext( "2d" );
canvasElement.width = img.width;
canvasElement.height = img.height;
con.drawImage(img, 0, 0,img.width, img.height);
let imgData = canvasElement.toDataURL( "image/jpeg" , 1.0);
pdf.addImage(imgData, 'JPEG' , 0, 0);
pdf.addPage();
}
pdf.save( "download.pdf" );
};
jspdf.src = 'https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.2/jspdf.min.js' ;
document.body.appendChild(jspdf);


```
</details>
