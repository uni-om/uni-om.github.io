---
layout: page
title: Ventania
permalink: /indexes/ventania.html
---

<h1>{{ "A Lista... Voltou" }}</h1>

<!-- Tag Descriptions and Buttons -->
<div class="tag-filter">
  <p style="text-align: center; font-size: 16px; margin-bottom: 0;">Clique várias vezes em cada filtro para ativá-los, eles possuem três opções cada: Ignorar o filtro, incluir resultados com o filtro e excluir resultados com o filtro.  Para não perder os filtros abra o link dos textos com a opção "Abrir em uma nova página ou aba" utilizando o botão direito do mouse ou através de um clique longo pelo celular </p>
  <h2 style="text-align: center; font-size: 24px; margin-top: 0;">FILTROS</h2>
  <div class="tag-description">
    <p class="filter-name" style="text-align: center;">pérola</p>
    <p>Aquilo em que Kǒngzǐ 孔子 / Confúcio era especialista</p>
    <button class="tag-button" data-tag="pérola">Ignora</button>
  </div>
  <div class="tag-description">
    <p class="filter-name" style="text-align: center;">mapa</p>
    <p>Aquilo que ajuda as pessoas a encontrarem coisas...</p>
    <button class="tag-button" data-tag="mapa">Ignora</button>
  </div>
  <div class="tag-description">
    <p class="filter-name" style="text-align: center;">prática</p>
    <p style="margin-top: 1.5em;">Relativo a prática</p>
    <button class="tag-button" data-tag="prática" style="margin-top: 1.5em;">Ignora</button>
  </div>
  <div class="tag-description">
    <p class="filter-name" style="text-align: center;">sombrio</p>
    <p>Pseudo Adversário da Liberdade</p>
    <button class="tag-button" data-tag="sombrio">Ignora</button>
  </div>
</div>

<!-- Block wrapped in HTML -->
<div class="textos-grid">
  {% assign textos = site.pages | where: "category", "ventania" | sort: "texto_number" %}
  {% for texto in textos %}
    <div class="texto-item" data-tags="{{ texto.tags | join: ' ' }}">
      <a href="{{ texto.url | relative_url }}">{{ texto.path | split: '/' | last | replace: '.md', '' }}</a>
    </div>
  {% endfor %}
</div>

<style>
  .tag-filter {
    display: flex;
    flex-wrap: wrap;
    gap: 20px;
    margin-bottom: 20px;
  }
  .tag-filter h2 {
    width: 100%;
    text-align: center;
    font-size: 24px;
  }
  .tag-description {
    flex: 1 1 calc(25% - 20px);
    box-sizing: border-box;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    height: 150px; /* Adjust height to ensure all buttons are aligned */
  }
  .filter-name {
    font-weight: bold;
    font-size: 16px;
    text-align: center;
  }
  .tag-button {
    display: block;
    width: 100%;
    padding: 10px;
    text-align: center;
    background-color: rgba(0, 0, 0, 0.7); /* 70% black */
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
  }
  .tag-button:hover {
    opacity: 0.8;
  }
  .textos-grid {
    display: flex;
    flex-wrap: wrap;
    gap: 20px; /* Adjust the gap between items */
  }
  .texto-item {
    flex: 1 1 calc(25% - 20px); /* 4 columns layout */
    box-sizing: border-box;
  }
  .texto-item a {
    display: block;
    padding: 10px;
    text-align: center;
    background-color: #f0f0f0;
    border: 1px solid #ddd;
    border-radius: 4px;
    text-decoration: none;
    color: #333;
  }
  .texto-item a:hover {
    background-color: #e0e0e0;
  }
</style>

<script>
  document.addEventListener('DOMContentLoaded', function() {
    const buttons = document.querySelectorAll('.tag-button');
    const textos = document.querySelectorAll('.texto-item');

    buttons.forEach(button => {
      button.addEventListener('click', function() {
        if (this.style.backgroundColor === 'rgba(0, 0, 0, 0.7)') {
          this.style.backgroundColor = 'green';
          this.textContent = 'Inclui';
        } else if (this.style.backgroundColor === 'green') {
          this.style.backgroundColor = 'red';
          this.textContent = 'Exclui';
        } else {
          this.style.backgroundColor = 'rgba(0, 0, 0, 0.7)';
          this.textContent = 'Ignora';
        }
        filterTextos();
      });
    });

    function filterTextos() {
      const activeTags = {
        include: [],
        exclude: []
      };

      buttons.forEach(button => {
        const tag = button.getAttribute('data-tag');
        if (button.style.backgroundColor === 'green') {
          activeTags.include.push(tag);
        } else if (button.style.backgroundColor === 'red') {
          activeTags.exclude.push(tag);
        }
      });

      textos.forEach(texto => {
        const textoTags = texto.getAttribute('data-tags').split(' ');
        const includeMatch = activeTags.include.every(tag => textoTags.includes(tag));
        const excludeMatch = activeTags.exclude.every(tag => !textoTags.includes(tag));

        if ((activeTags.include.length === 0 || includeMatch) && excludeMatch) {
          texto.style.display = 'block';
        } else {
          texto.style.display = 'none';
        }
      });
    }
  });
</script>