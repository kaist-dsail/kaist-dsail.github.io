---
title: "DSAIL @ KAIST - Homecoming Day 2024 Photo"
layout: piclay
excerpt: "DSAIL @ KAIST - Photo"
permalink: additional_photo/Homecoming_2403/
---

<div class="container-fluid">
<div class="row">
<div id="textid" class="col-sm-12">
<h3> Photos in Homecoming day 2024 </h3>
{% for pic in site.data.homecoming2024_activity %}
<strong>
{{ pic.info }}
</strong>
<figure>
<img src="{{ site.url }}{{ site.baseurl }}/images/activity/Homecoming2024/{{ pic.image }}" width="100%" />
</figure>
{% endfor %}
</div>
</div>
</div>
