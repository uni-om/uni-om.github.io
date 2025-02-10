---
layout: page
title: "Lista Ventania"
---

<h1>Textos Disponíveis 3</h1>

<ul>
{% for file in site.static_files %}
  {% if file.path contains '/_ventania/' %}
    <li><a href="{{ file.url }}">{{ file.title }}</a></li>
  {% endif %}
{% endfor %}
</ul>
