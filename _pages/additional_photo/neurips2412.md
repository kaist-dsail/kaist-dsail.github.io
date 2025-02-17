---
title: "DSAIL @ KAIST - NeurIPS Conference 2024 Photo"
layout: piclay
excerpt: "DSAIL @ KAIST - Photo"
permalink: additional_photo/neurips2412/
---

<div class="container-fluid">
<div class="row">
<div id="textid" class="col-sm-12">
<h3> Photos in NeurIPS Conference 2024 </h3>
{% for pic in site.data.neurips2412_activity %}
<strong>
{{ pic.info }}
</strong>
<figure>
<img src="{{ site.url }}{{ site.baseurl }}/images/activity/neurips2412/{{ pic.image }}" width="100%" />
</figure>
{% endfor %}
</div>
</div>
</div>
