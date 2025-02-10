---
layout: page
title: "Lista Ventania"
---

{% for item in site.data.ventania %}
  {{item.title}}, {{item.sex}} <br>  
{% endfor %}


