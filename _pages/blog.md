---
title: "DSAIL @ KAIST - Blog"
layout: bloglay
excerpt: "DSAIL @ KAIST - Blog"
permalink: /blog/
---

# Blog
Coming Soon

<!-- {% assign number_printed = 0 %}
{% for post in site.data.postlist %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
 <div class="card">
 <div class="title_container">
  <a href="{{ site.url }}{{ site.baseurl }}/posts/{{ post.url }}"><pubtit>{{ post.title }}</pubtit></a>
 </div>
 <div class="author_container">
  <p>{{ post.authors }}</p>
  <p>{{ post.date }}</p>
 </div>
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

<p> &nbsp; </p> -->