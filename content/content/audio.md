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

## Podcasts
* Podcast subscription guide [SB16](https://goo.gl/6DJjji).

###  Publishing
Publish podcast feeds, submit to Itunes, stitcher, Google play podcasts.

* Discussion - [podcast-bhaaratii](https://groups.google.com/forum/#!forum/podcast-bhaaratii)
* Feed format [here](http://www.podcast411.com/howto_1.html).
* Publish directly from archive
    * Archive podcasting forum [here](https://archive.org/details/audio_podcast&tab=forum).
    * Items in a "collection under podcasts" (collection creation requires: 50 item minimum)
        * Example: Collection RSS (valid [podcast feed](http://archive.org/services/collection-rss.php?collection=netwaves)).
    * Files within an item
        * vedavaapi [podcast API](http://vedavaapi.org:9090/swagger#/podcastsv1/getPodcast) \- announcement [here](https://groups.google.com/d/msg/sanskrit-programmers/IVm4pJfjfzg/66I48446BQAJ). Archive proposal: Want to contribute.
* Archive -> wordpress -> feedburner -> play/ itunes etc..
    * SB15 [guide](https://docs.google.com/document/d/1XWLwJvtnfJctdNYx3qSDHZyDKLPeQ21o3eHNJfQ7Xj0/edit).
* Feed URL limitations
* ITunes accepts only usual http ports 80 or 443(?)
* tunein submission form : podcast url box can be too short - if so, use comment box.
