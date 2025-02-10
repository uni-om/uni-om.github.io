---
layout: page
title: "Lista Ventania"
---

<h1>Textos Disponíveis 2</h1>

<ul>
{% for file in site.static_files %}
  {% if text.path contains '/_ventania/' %}
    <li><a href="{{ text.url }}">{{ text.title }}</a></li>
  {% endif %}
{% endfor %}
</ul>
