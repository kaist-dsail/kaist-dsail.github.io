---
title: "DSAIL @ KAIST - NeurIPS2023 Photo"
layout: piclay
excerpt: "DSAIL @ KAIST - Photo"
permalink: additional_photo/NeurIPS_2312/
---

<div class="container-fluid">
<div class="row">
<div id="textid" class="col-sm-12">
<h3> Photos in NeurIPS 2023 </h3>
{% for pic in site.data.neurips2023_activity %}
<strong>
{{ pic.info }}
</strong>
<figure>
<img src="{{ site.url }}{{ site.baseurl }}/images/activity/NeurIPS2023/{{ pic.image }}" width="50%" />
</figure>
{% endfor %}
</div>
</div>
</div>
