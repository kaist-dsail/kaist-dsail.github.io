---
title: "DSAIL @ KAIST - SIGIR Conference 2025 Photo"
layout: piclay
excerpt: "DSAIL @ KAIST - Photo"
permalink: additional_photo/sigir_2507/
---

<div class="container-fluid">
<div class="row">
<div id="textid" class="col-sm-12">
<h3> Photos in SIGIR Conference 2025 </h3>
{% for pic in site.data.sigir2507_activity %}
<strong>
{{ pic.info }}
</strong>
<figure>
<img src="{{ site.url }}{{ site.baseurl }}/images/activity/sigir2507/{{ pic.image }}" width="100%" />
</figure>
{% endfor %}
</div>
</div>
</div>
