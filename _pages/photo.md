---
title: "DSAIL @ KAIST - Photo"
layout: piclay
excerpt: "DSAIL @ KAIST - Photo"
permalink: /photo/
---

<div class="container-fluid">
<div class="row">
<div id="textid" class="col-sm-12">
<h3>Lab Photos</h3>

{% for pic in site.data.activity %}
<div class="gallery">
  <center>
  <img src="{{ site.url }}{{ site.baseurl }}/images/activity/{{ pic.image }}" />
  <div class="caption">{{ pic.info }}</div>
  </center>
</div>
</div>
</div>
</div>
{% endfor %}