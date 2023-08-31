---
title: "DSAIL @ KAIST - Photo"
layout: piclay
excerpt: "DSAIL @ KAIST - Photo"
permalink: /photo2/
---

## Lab Photos

{% assign number_printed = 0 %}
{% for pic in site.data.activity %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if pic.highlight == 1 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
 <div class="well">
  <pubtit>{{ pic.info }}</pubtit>
  <img src="{{ site.url }}{{ site.baseurl }}/images/activity/{{ pic.image }}" width="95%">
 </div>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endif %}
{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}

<p> &nbsp; </p>