---
title: "DSAIL @ KAIST - Photo"
layout: piclay
excerpt: "DSAIL @ KAIST - Photo"
permalink: /photo/
---

{% for pic in site.data.activity %}

<!-- <div class="col-sm-3 clearfix"> -->
<div class="gallery">
<center>
<img src="{{ site.url }}{{ site.baseurl }}/images/activity/{{ pic.image }}" width="30%" />
<div class="caption">Footsal (Jan, 2021)</div>
</center>
</div>
<!-- <img src="{{ site.url }}{{ site.baseurl }}/images/activity/{{ pic.image }}"> -->
<!-- <img src="{{ site.url }}{{ site.baseurl }}/images/activity/{{ pic.image }}" class="img-responsive" width="95%" style="float: left" /> -->
<!-- </div> -->


<!-- #### {{ pic.info }} -->

{% endfor %}