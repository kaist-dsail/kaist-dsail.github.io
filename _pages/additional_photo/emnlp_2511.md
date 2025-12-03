---
title: "DSAIL @ KAIST - EMNLP Conference 2025 Photo"
layout: piclay
excerpt: "DSAIL @ KAIST - Photo"
permalink: additional_photo/emnlp2511/
---

<div class="container-fluid">
<div class="row">
<div id="textid" class="col-sm-12">
<h3> Photos in EMNLP Conference 2025 </h3>
{% for pic in site.data.emnlp2511_activity %}
<strong>
{{ pic.info }}
</strong>
<figure>
<img src="{{ site.url }}{{ site.baseurl }}/images/activity/emnlp2511/{{ pic.image }}" width="100%" />
</figure>
{% endfor %}
</div>
</div>
</div>