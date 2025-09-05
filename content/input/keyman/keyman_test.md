+++
title = "Keyman test"
+++

<script src='https://s.keyman.com/kmw/engine/18.0.240/keymanweb.js'></script>
<script src='https://s.keyman.com/kmw/engine/18.0.240/kmwuitoggle.js'></script>
<script>
  (function() {
    keyman.init({attachType:'auto'});
    keyman.addKeyboards('@en'); // Loads default English keyboard from Keyman Cloud (CDN)
    keyman.addKeyboards('@th'); // Loads default Thai keyboard from Keyman Cloud (CDN)
    keyman.addKeyboards({
      name: 'Pre-Vedic Sanskrit',
      id: 'itrans_devanagari_sanskrit_pre_vedic',
      filename: '../itrans_devanagari_sanskrit_pre_vedic.js',
      version: '1.0',
      language: [{
        name: 'Sanskrit',
        id: 'sa',
        region: 'in'
      }]
    });
  })();
</script>

<div id='kmw-target'></div>
