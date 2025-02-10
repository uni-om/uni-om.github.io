---
layout: page
title: "Lista Ventania"
---

<h1>Textos Disponíveis</h1>

<ul>
{% for text in site.pages %}
  {% if text.path contains '/_ventania/' %}
    <li><a href="{{ text.url }}">{{ text.title }}</a></li>
  {% endif %}
{% endfor %}
</ul>
