---
title: "DSAIL @ KAIST - Photo"
layout: piclay
excerpt: "DSAIL @ KAIST - Photo"
permalink: /photo/
---

{% for pic in site.data.activity %}

<div class="col-sm-3 clearfix">
<img src="{{ site.url }}{{ site.baseurl }}/images/activity/{{ pic.image }}">
<!-- <img src="{{ site.url }}{{ site.baseurl }}/images/activity/{{ pic.image }}" class="img-responsive" width="95%" style="float: left" /> -->
</div>


#### {{ pic.info }}

{% endfor %}