---
title: "DSAIL @ KAIST - Publications_Journal"
layout: gridlay
excerpt: "DSAIL @ KAIST - Publications_Journal"
sitemap: false
permalink: /publications_journal_/
---


<!-- # Publications -->

<!-- ## Group highlights -->

<!-- (For a full list see [below](#full-list) or go to [Google Scholar](https://scholar.google.com/citations?user=EvE42VMAAAAJ)) -->

<!-- {% assign number_printed = 0 %}
{% for publi in site.data.publist %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if publi.highlight == 1 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
 <div class="well">
  <pubtit>{{ publi.title }}</pubtit>
  <img src="{{ site.url }}{{ site.baseurl }}/images/pubpic/{{ publi.image }}" class="img-responsive" width="33%" style="float: left" />
  <p>{{ publi.description }}</p>
  <p><em>{{ publi.authors }}</em></p>
  <p><strong><a href="{{ publi.link.url }}">{{ publi.link.display }}</a></strong></p>
  <p class="text-danger"><strong> {{ publi.news1 }}</strong></p>
  <p> {{ publi.news2 }}</p>
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
{% endif %} -->

<!-- <p> &nbsp; </p> -->


# International Journals


{% assign unique_years = "" | split: ',' %}
{% for publi in site.data.publist_jour %}
{% if unique_years contains publi.year  %}
{% else %}
{% assign unique_years = unique_years | push: publi.year %}
<h3> {{ publi.year }} </h3>
{% endif %}

<font color="blue"><b>{{ publi.title }}</b></font>
{{ publi.authors }}<br />
<b>{{ publi.venue }}</b> - {{ publi.venue_full }}

  {% capture resource_links %}
   {% if publi.pdf_url %}[[PDF]]({{ publi.pdf_url }}){:target="_blank"}{% endif %}
   
   {% if publi.code_url %}[[Code]]({{ publi.code_url }}){:target="_blank"}{% endif %}

   {% if publi.slide_url %}[[Slide]]({{ publi.slide_url }}){:target="_blank"}{% endif %}

   {% if publi.video_url %}[[Video]]({{ publi.video_url }}){:target="_blank"}{% endif %}
  {% endcapture %}

  {% assign resource_links = resource_links | strip_newlines %}
  {% assign resource_links = resource_links | split: '  ' | join: ' ' %}

  {{ resource_links }}<br />
{% endfor %}

<p> &nbsp;&nbsp; </p>
