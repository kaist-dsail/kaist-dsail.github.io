---
title: "DSAIL @ KAIST - Photo"
layout: piclay
excerpt: "DSAIL @ KAIST - Photo"
permalink: /photo/
---

{% for pic in site.data.activity %}
<figure><img src="{{ site.url }}{{ site.baseurl }}/images/activity/{{ pic.image }}" width="30%" />
<figcaption>
<b>{{ pic.info }}</b> 
</figcaption>
</figure>
{% endfor %}