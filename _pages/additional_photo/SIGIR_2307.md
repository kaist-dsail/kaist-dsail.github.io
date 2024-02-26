---
title: "DSAIL @ KAIST - SIGIR2023 Photo"
layout: piclay
excerpt: "DSAIL @ KAIST - Photo"
permalink: additional_photo/SIGIR_2307/
---

<div class="container-fluid">
<div class="row">
<div id="textid" class="col-sm-12">
<h3> Photos in SIGIR 2023 </h3>
{% for pic in site.data.sigir2023_activity %}
<strong>
{{ pic.info }}
</strong>
<figure>
<img src="{{ site.url }}{{ site.baseurl }}/images/activity/SIGIR2023/{{ pic.image }}" width="100%" />
</figure>
{% endfor %}
</div>
</div>
</div>
