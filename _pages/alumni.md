---
title: "DSAIL @ KAIST - Alumni"
layout: gridlay
excerpt: "DSAIL @ KAIST - Alumni"
sitemap: false
permalink: /alumni/
---

## Alumni
### M.S.

{% assign number_printed = 0 %}
{% for member in site.data.alumni_ms %}

{% assign even_odd = number_printed | modulo: 4 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-3 clearfix">
  <!-- <img src="{{ site.url }}{{ site.baseurl }}/images/teampic/{{ member.photo }}" class="img-responsive" width="20%" style="float: left" /> -->
  <!-- <img src="{{ site.url }}{{ site.baseurl }}/images/teampic/{{ member.photo }}" class="img-responsive" width="80%" style="float: left" /> -->
  <h4>{{ member.name }}</h4>
  <i>{{ member.info }}<br>
    <i>{{ member.career }}<br>
    <i>{{ member.homepage }}</i>
  <ul style="overflow: hidden">

  </ul>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 3 %}
</div>
{% endif %}

{% endfor %}

{% assign even_odd = number_printed | modulo: 4 %}
{% if even_odd == 3 %}
</div>
{% endif %}
</div>
<!-- <br> -->
<div class="row"> </div>

### Visitor

{% assign number_printed = 0 %}
{% for member in site.data.alumni_visitor %}

{% assign even_odd = number_printed | modulo: 4 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-3 clearfix">
  <!-- <img src="{{ site.url }}{{ site.baseurl }}/images/teampic/{{ member.photo }}" class="img-responsive" width="20%" style="float: left" /> -->
  <!-- <img src="{{ site.url }}{{ site.baseurl }}/images/teampic/{{ member.photo }}" class="img-responsive" width="80%" style="float: left" /> -->
  <h4>{{ member.name }}</h4>
  <i>{{ member.info }}<br>
    <i>{{ member.career }}<br>
    <i>{{ member.homepage }}</i>
  <ul style="overflow: hidden">

  </ul>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 3 %}
</div>
{% endif %}

{% endfor %}

{% assign even_odd = number_printed | modulo: 4 %}
{% if even_odd == 3 %}
</div>
{% endif %}

</div>

<div class="row"> </div>
<!-- <br> -->

### Undergraduate Student

{% assign number_printed = 0 %}
{% for member in site.data.alumni_undergrad %}

{% assign even_odd = number_printed | modulo: 4 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-3 clearfix">
  <!-- <img src="{{ site.url }}{{ site.baseurl }}/images/teampic/{{ member.photo }}" class="img-responsive" width="20%" style="float: left" /> -->
  <h4>{{ member.name }}</h4>
  <i>{{ member.info }}<br>
    <i>{{ member.duration }}</i>
  <ul style="overflow: hidden">

  </ul>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 3 %}
</div>
{% endif %}

{% endfor %}

{% assign even_odd = number_printed | modulo: 4 %}
{% if even_odd == 3 %}
</div>
{% endif %}

</div>
<!-- <div class="row"> </div> -->