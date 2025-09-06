+++
title = "Test"
+++

This is a test page for the [keyman pre-vedic sanskrit keyboard](../).


<script src='https://s.keyman.com/kmw/engine/18.0.240/keymanweb.js'></script>
<script src='https://s.keyman.com/kmw/engine/18.0.240/kmwuitoggle.js'></script>



<!-- The textarea where you will type -->
<textarea id="myTextarea" rows="10" cols="80"></textarea>

<!-- The output display element -->
<h2>Typed Content:</h2>
<div id="output"></div>


<script>
  window.addEventListener('load', (event) => {
    keyman.init({attachType:'auto'});
    keyman.addKeyboards('@en'); // Loads default English keyboard from Keyman Cloud (CDN)
    keyman.addKeyboards('@th'); // Loads default Thai keyboard from Keyman Cloud (CDN)
    keyman.addKeyboards({
      name: 'Pre-Vedic Sanskrit',
      id: 'itrans_devanagari_sanskrit_pre_vedic',
      filename: '../itrans_devanagari_sanskrit_pre_vedic.js',
      version: '1.0',
      languages: [{
        name: 'Sanskrit',
        id: 'sa',
        region: 'in'
      }]
    });
  });
</script>
