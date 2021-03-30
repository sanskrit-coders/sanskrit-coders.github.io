---
title: Audio
---
For non-technical audio resources generation projects and listing, see [here](http://sanskrit.github.io/projects/audio/).

## Audio editing
### Loudness
- "Volume is distinct from loudness. Volume is measured in decibels and is a physical measurement of peak air pressure change in a given acoustic situation. Loudness is a relative value used to compare digital programs based on the maximum loudness of a digital waveform (0.0 LUFS). This is why all LUFS are negative. Peak level is not a good measure of loudness and should not be used to compare audio material to the Google Assistant TTS output." {[Google tip](https://developers.google.com/actions/tools/audio-loudness)}

### Good audio editing programs, libraries and software
- Audacity
- Python
  - See [audio_curation library and examples](https://github.com/sanskrit-coders/audio_curation)

## General publishing and sharing.
* Google play music/ audio
    * Get audio file with appropriate metadata.
    * Convert to flac format. "Confirm your tracks are the correct format, either .flac or .wav at 16, 24 or 32 bitrate, 44.1 kbps."
    * Add cover art. ​"Remember that images must be in png, jpg, and gif format, minimum size 500 x 500, and that all album images must be original content." \[[G16](https://support.google.com/googleplay/artists/answer/1704520?p=album_image_upload_error&rd=1)\]
    * Price settings - [IMG](http://i.imgur.com/MNDkx5P.png). 
    * Upload to Google Play and publish.
    * Detailed editing (change track order etc..) - unpublish, edit, submit.


* Create an internet radio station
  * Tunein.com Internet Radio 
      * [guide](https://help.tunein.com/customer/portal/articles/944520-how-do-i-add-my-station-to-tunein-)
      * Create .mp3, .m3u or .pls format playlists.
      * Set up stream - [SE](https://askubuntu.com/questions/28496/how-do-i-setup-an-icecast-server-for-broadcasting-audio-in-my-network).

## Alignment
### Avinash's intro
A proof-of-concept (PoC) of the first sarga of the ramayana audio in a "read-along" mode is here - https://avinashvarna.github.io/rAmAyaNa-paThanam/ If you play the audio at the top of the page, the corresponding word being uttered should be highlighted (with some occasional lag/errors). Scrolling to a different point in the audio should cause the text to also advance to the corresponding section.

Such a website might be useful for those trying to learn how to chant or memorize the shlokas (visual aid in addition to the audio). It would be fairly easy to generate the alignment for different available audio for common texts (gItA, viShNu-sahasra-nAma, etc.).

### Tools
- aeneas library implements Dynamic Time Warping
- Example code - https://github.com/avinashvarna/audio_alignment and https://github.com/sanskrit-coders/audio_utils/tree/master/audio_utils/alignment .