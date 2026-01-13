---
title: "DSAIL @ KAIST - NeurIPS Conference 2025 Photo"
layout: piclay
excerpt: "DSAIL @ KAIST - Photo"
permalink: additional_photo/neurips2512/
---

<div class="container-fluid">
<div class="row">
<div id="textid" class="col-sm-12">
<h3> Photos in NeurIPS Conference 2025 </h3>
{% for pic in site.data.neurips2512_activity %}
<strong>
{{ pic.info }}
</strong>
<figure>
<img src="{{ site.url }}{{ site.baseurl }}/images/activity/neurips2512/{{ pic.image }}" width="100%" />
</figure>
{% endfor %}
</div>
</div>
</div>