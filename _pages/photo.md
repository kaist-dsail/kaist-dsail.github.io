---
title: "DSAIL @ KAIST - Photo"
layout: piclay
excerpt: "DSAIL @ KAIST - Photo"
permalink: /photo/
---

<div class="container-fluid">
<div class="row">
<div id="textid" class="col-sm-12">
<h3>Lab Photos</h3>

{% for pic in site.data.activity %}
<figure>
<img src="{{ site.url }}{{ site.baseurl }}/images/activity/{{ pic.image }}" width="50%" />
<figcaption>
{{ pic.info }}
</figcaption>	
</figure>
{% endfor %}
</div>
</div>
</div>

