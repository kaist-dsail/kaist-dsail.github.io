---
title: "DSAIL @ KAIST - Photo"
layout: piclay
excerpt: "DSAIL @ KAIST - Photo"
permalink: /photo/
---

<div class="container-fluid">
<div class="row">
<div id="textid" class="col-sm-12">
###Lab Photos
{% for pic in site.data.activity %}
<strong>
{{ pic.info }}
</strong>
<figure>
<img src="{{ site.url }}{{ site.baseurl }}/images/activity/{{ pic.image }}" width="50%" />
</figure>
{% endfor %}
</div>
</div>
</div>

