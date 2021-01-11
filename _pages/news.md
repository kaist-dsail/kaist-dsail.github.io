---
title: "DSAIL @ KAIST - News"
layout: textlay
excerpt: "DSAIL @ KAIST - News"
sitemap: false
permalink: /news.html
---

# News

{% for article in site.data.news %}
<p><em><font color="#0000A0">{{ article.date }}</font></em> <br>
<b>{{ article.headline }}</b><br>
{{ article.content }}</p>
{% endfor %}
