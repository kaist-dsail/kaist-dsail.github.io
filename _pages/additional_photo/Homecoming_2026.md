---
title: "DSAIL @ KAIST - Homecoming Day 2026 Photo"
layout: piclay
excerpt: "DSAIL @ KAIST - Photo"
permalink: additional_photo/Homecoming_2026/
---

<div class="container-fluid">
<div class="row">
<div id="textid" class="col-sm-12">
<h3> Photos in Homecoming day 2026 </h3>
{% for pic in site.data.homecoming2026_activity %}
<strong>
{{ pic.info }}
</strong>
<figure>
<img src="{{ site.url }}{{ site.baseurl }}/images/activity/Homecoming2026/{{ pic.image }}" width="100%" />
</figure>
{% endfor %}
</div>
</div>
</div>