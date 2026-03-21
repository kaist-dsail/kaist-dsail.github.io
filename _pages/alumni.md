---
title: "DSAIL @ KAIST - Alumni"
layout: gridlay
excerpt: "DSAIL @ KAIST - Alumni"
sitemap: false
permalink: /alumni/
---

## Alumni

### Ph.D.

<p style="line-height:1.8">
{% for member in site.data.alumni_phd %}{{ member.name }}, {{ member.info }}. {{ member.career }}<br>
{% endfor %}
</p>

### M.S.

<p style="line-height:1.8">
{% for member in site.data.alumni_ms %}{{ member.name }}, {{ member.info }}. {{ member.career }}<br>
{% endfor %}
</p>

### Visitor

<p style="line-height:1.8">
{% for member in site.data.alumni_visitor %}{{ member.name }}, {{ member.info }}. {{ member.career }}<br>
{% endfor %}
</p>

### Undergraduate Student

<p style="line-height:1.8">
{% for member in site.data.alumni_undergrad %}{{ member.name }}, {{ member.info }}. {{ member.duration }}<br>
{% endfor %}
</p>
