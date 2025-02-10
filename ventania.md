---
layout: page
title: "Lista Ventania"
---

<h1>Textos Disponíveis 4</h1>

<ul>
{% for file in site.static_files %}
  {% if file.path contains '_ventania/' %}
    <li><a href="{{ file.url }}">{{ file.path | split: '/' | last }}</a></li>
  {% endif %}
{% endfor %}
</ul>
