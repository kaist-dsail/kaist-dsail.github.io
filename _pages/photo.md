---
title: "DSAIL @ KAIST - Photo"
layout: piclay
excerpt: "DSAIL @ KAIST - Photo"
permalink: /photo/
---

## Lab Photos

{% assign number_printed = 0 %}
{% for pic in site.data.activity %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
 <div class="well">
  {% if pic.additional == 1 %}
  <pubtit>{{ pic.info }} <a href="{{ site.url }}{{ site.baseurl }}/additional_photo/{{ pic.image | remove: '.jpg'}}">[show more]</a></pubtit>
  <img src="{{ site.url }}{{ site.baseurl }}/images/activity/{{ pic.image }}" width="95%">
  {% endif %}
  {% if pic.additional == 0 %}
  <pubtit>{{ pic.info }}</pubtit>
  <img src="{{ site.url }}{{ site.baseurl }}/images/activity/{{ pic.image }}" width="95%">
  {% endif %}
 </div>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}


{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}

<p> &nbsp; </p>