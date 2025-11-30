---
title: "DSAIL @ KAIST - ICCAD Conference 2025 Photo"
layout: piclay
excerpt: "DSAIL @ KAIST - Photo"
permalink: additional_photo/iccad2510/
---

<div class="container-fluid">
<div class="row">
<div id="textid" class="col-sm-12">
<h3> Photos in ICCAD Conference 2025 </h3>
{% for pic in site.data.iccad2510_activity %}
<strong>
{{ pic.info }}
</strong>
<figure>
<img src="{{ site.url }}{{ site.baseurl }}/images/activity/iccad2510/{{ pic.image }}" width="100%" />
</figure>
{% endfor %}
</div>
</div>
</div>