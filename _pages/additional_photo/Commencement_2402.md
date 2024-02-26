---
title: "DSAIL @ KAIST - Commencement Day 2024 Photo"
layout: piclay
excerpt: "DSAIL @ KAIST - Photo"
permalink: additional_photo/Commencement_2402/
---

<div class="container-fluid">
<div class="row">
<div id="textid" class="col-sm-12">
<h3> Photos in Commencement Day 2024 </h3>
{% for pic in site.data.commence2024_activity %}
<strong>
{{ pic.info }}
</strong>
<figure>
<img src="{{ site.url }}{{ site.baseurl }}/images/activity/Commencement2024/{{ pic.image }}" width="50%" />
</figure>
{% endfor %}
</div>
</div>
</div>
