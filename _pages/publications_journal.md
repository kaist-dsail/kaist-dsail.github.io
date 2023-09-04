---
title: "DSAIL @ KAIST - Publications_Journal"
layout: gridlay
excerpt: "DSAIL @ KAIST - Publications_Journal"
sitemap: false
permalink: /publications_journal/
---




# International Journals

{% assign unique_years = "" | split: ',' %}
{% for publi in site.data.publist_jour %}
{% if unique_years contains publi.year  %}
{% else %}
{% assign unique_years = unique_years | push: publi.year %}
<h3> {{ publi.year }} </h3>
{% endif %}

{% capture resource_links %}

  {% if publi.pdf_url %}[[PDF]]({{ publi.pdf_url }}){:target="_blank"}{% endif %}
  {% if publi.code_url %}[[Code]]({{ publi.code_url }}){:target="_blank"}{% endif %}
  {% if publi.slide_url %}[[Slide]]({{ publi.slide_url }}){:target="_blank"}{% endif %}
  {% if publi.video_url %}[[Video]]({{ publi.video_url }}){:target="_blank"}{% endif %}
  {% if publi.news_url %}[[News]]({{ publi.news_url }}){:target="_blank"}{% endif %}
  {% endcapture %}
  
  {% assign resource_links = resource_links | strip_newlines %}
  {% assign resource_links = resource_links | split: '  ' | join: ' ' %}

  {% capture venue_and_links %}<font color="blue"><b>{{ publi.title }}</b></font>{{ publi.authors }}<br /><b>{{ publi.venue }}</b> - {{ publi.venue_full }}<br />{{ resource_links }}{% endcapture %}

  {{ venue_and_links }}<br />
{% endfor %}

<p> &nbsp;&nbsp; </p>

<!-- {% assign unique_years = "" | split: ',' %}
{% for publi in site.data.publist_jour %}
{% if unique_years contains publi.year  %}
{% else %}
{% assign unique_years = unique_years | push: publi.year %}
<h3> {{ publi.year }} </h3>
{% endif %}
{% if publi.type == 'p' %}
<font color="blue"><b>{{ publi.title }}</b></font>
{{ publi.authors }}<br />
<b>{{ publi.venue }}</b> {{ publi.venue_full }}<br />
[[PDF]]({{ publi.pdf_url }}){:target="_blank"}
{% elsif publi.type == 'pc' %}
<font color="blue"><b>{{ publi.title }}</b></font>
{{ publi.authors }}<br />
<b>{{ publi.venue }}</b> {{ publi.venue_full }}<br />
[[PDF]]({{ publi.pdf_url }}){:target="_blank"}[[Code]]({{ publi.code_url }}){:target="_blank"}
{% elsif publi.type == 'ps' %}
<font color="blue"><b>{{ publi.title }}</b></font>
{{ publi.authors }}<br />
<b>{{ publi.venue }}</b> {{ publi.venue_full }}<br />
[[PDF]]({{ publi.pdf_url }}){:target="_blank"}[[Slide]]({{ publi.slide_url }}){:target="_blank"}
{% elsif publi.type == 'pcs' %}
<font color="blue"><b>{{ publi.title }}</b></font>
{{ publi.authors }}<br />
<b>{{ publi.venue }}</b> {{ publi.venue_full }}<br />
[[PDF]]({{ publi.pdf_url }}){:target="_blank"}[[Code]]({{ publi.code_url }}){:target="_blank"}[[Slide]]({{ publi.slide_url }}){:target="_blank"}
{% else %}
<font color="blue"><b>{{ publi.title }}</b></font>
{{ publi.authors }}<br />
<b>{{ publi.venue }}</b> {{ publi.venue_full }}<br />
{% endif %}
{% endfor %}
<p> &nbsp;&nbsp; </p> -->

