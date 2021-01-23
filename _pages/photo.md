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

<!-- <div class="gallery"> -->
<!--   <center> -->
<figure>
  <figcaption>{{ pic.info }}
  </figcaption>	
  <img src="{{ site.url }}{{ site.baseurl }}/images/activity/{{ pic.image }}" class="img-responsive" width="50%" />
</figure>
  <!-- <strong>{{ pic.info }}</strong> -->
  <!-- <div class="caption">{{ pic.info }}</div> -->
  <!-- </center> -->
<!-- </div> -->
{% endfor %}
</div>
</div>
</div>

