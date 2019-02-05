---
title: Podcasts
---

## Why podcasting?
- **Listening to stuff is easier**. Several people (such as myself) might prefer to listen to audio books and listen to lectures (perhaps during long walks or commutes) rather than read or watch them.
- There are many popular tools in a variety of platforms to subscribe and listen to podcasts (see  subscription guide [SB16](https://goo.gl/6DJjji).). (I use Doggcatcher paid on Android). It turns out to be easier to listen to audio files in this way **without the chores such as manual downloads and checking for updates**.

### History.
Given audio files hosted in some internet site (like archive.org), creating a podcast feed involved some manual labor (adding posts to a blog etc.. as described in this  guide [SB15](https://docs.google.com/document/d/1XWLwJvtnfJctdNYx3qSDHZyDKLPeQ21o3eHNJfQ7Xj0/edit).). This manual labor can be eliminated using the new open source web tool presented in this page. 

## Format
- Feed format [here](http://www.podcast411.com/howto_1.html).

### Feed URL limitations
- ITunes accepts only usual http ports 80 or 443(?)
- tunein submission form : podcast url box can be too short - if so, use comment box.

## Generating RSS feeds from archive.org items
### Upload and update archive item
- **Upload** your audio files to archive.org items. **Update** your archive items by adding new episodes as and when you create them (perhaps right from your android phone as shown in [this subtitled YT video](https://www.youtube.com/watch?v=FpwDrXkW1zo&list=PL63uIhJxWbgg3yJqzeh8kCxMo55YUX50F&index=18)). This is a periodically repeated step.

### Create a podcast feed
One of the following options should work:
- In case of frequently updated feeds
  - Use the build_feeds.sh pipeline of this repository to automatically and periodically generate rss-feeds. 
- In case your feed is rarely or never updated
  - just use a convenient REST API server, by supplying the necessary archive item links in the prescribed format.
    - [takshashila raw](http://54.244.106.57:9090/swagger/index.html)
    - [vedavaapi](http://scala.vedavaapi.org/swagger/index.html#/podcasts_v1) - Defunct and broken - ok for rare one-time use.
  - You can then copy and serve the RSS feed output from some other page (eg. pastebin or [rss-feeds github repo](https://github.com/sanskrit-coders/rss-feeds/)).
  - Be wary of directly using the REST API url-s. With the vedavaapi server, besides the frequent breakages, time-outs used to occur.

### Publicity
- Share your shiny new podcast feed URL to your subscribers, and **publish your feed** to Google Play, ITunes, Stitcher and TuneInRadio. This is a one time step.
- Finally, let us add your podcast to [this podcast collection](https://docs.google.com/spreadsheets/d/1KMhtMaHCQpucqxH3aVcmYmPvQyV9vmunvckV2ARvD4M/edit#gid=0) if appropriate, by one of these routes:
  - using this [form](https://docs.google.com/forms/d/e/1FAIpQLSeE231VzUuXbIZhBzcZkQ-oWkIb50cZL786gSKvzMWu8XJoGw/viewform?usp=send_form) 
  - inserting a comment in that spreadsheet,
  - or by opening an issue [here](https://github.com/sanskrit-coders/rss-feeds/).
- Discussion - [podcast-bhaaratii](https://groups.google.com/forum/#!forum/podcast-bhaaratii)

## Other publishing techniques
- Publish directly from archive
  - Archive podcasting forum [here](https://archive.org/details/audio_podcast&tab=forum).
- Items in a "collection under podcasts" (collection creation requires: 50 item minimum)
  - Example: Collection RSS (valid [podcast feed](http://archive.org/services/collection-rss.php?collection=netwaves)).
- Archive -> wordpress -> feedburner -> play/ itunes etc..
    - SB15 [guide](https://docs.google.com/document/d/1XWLwJvtnfJctdNYx3qSDHZyDKLPeQ21o3eHNJfQ7Xj0/edit).
