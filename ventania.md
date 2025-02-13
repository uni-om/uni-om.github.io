---
layout: page
title: Lista Ventania
permalink: /ventania.html
---

{% assign titles = "" %}
{% assign paths = "" %}
{% assign markdown_links = "" %}

{% for file in site.data.lista %}
  {% if file[0] contains 'lista_vent_' %}
    {% assign lista = file[1] %}
    {% assign link = "[" | append: lista.title | append: "](/lista/" | append: file[0] | append: ".html)<br>" %}
    {% assign markdown_links = markdown_links | append: link %}
  {% endif %}
{% endfor %}

[About](/about)

{{ markdown_links }}
