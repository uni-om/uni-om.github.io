---
layout: page
title: "Lista Ventania"
---

<h1>Textos Disponíveis</h1>

{% for item in site.data.ventania %}
  {{item.title}}, {{item.sex}} <br>  
{% endfor %}


