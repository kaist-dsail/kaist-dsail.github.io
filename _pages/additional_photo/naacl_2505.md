---
title: "DSAIL @ KAIST - NAACL Conference 2025 Photo"
layout: piclay
excerpt: "DSAIL @ KAIST - Photo"
permalink: additional_photo/naacl_2505/
---

<div class="container-fluid">
<div class="row">
<div id="textid" class="col-sm-12">
<h3> Photos in NAACL Conference 2025 </h3>
{% for pic in site.data.naacl2505_activity %}
<strong>
{{ pic.info }}
</strong>
<figure>
<img src="{{ site.url }}{{ site.baseurl }}/images/activity/naacl2505/{{ pic.image }}" width="100%" />
</figure>
{% endfor %}
</div>
</div>
</div>
