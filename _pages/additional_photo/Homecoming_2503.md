---
title: "DSAIL @ KAIST - Homecoming Day 2025 Photo"
layout: piclay
excerpt: "DSAIL @ KAIST - Photo"
permalink: additional_photo/Homecoming_2503/
---

<div class="container-fluid">
<div class="row">
<div id="textid" class="col-sm-12">
<h3> Photos in Homecoming day 2025 </h3>
{% for pic in site.data.homecoming2025_activity %}
<strong>
{{ pic.info }}
</strong>
<figure>
<img src="{{ site.url }}{{ site.baseurl }}/images/activity/Homecoming2025/{{ pic.image }}" width="100%" />
</figure>
{% endfor %}
</div>
</div>
</div>