{% extends "base.tpl" %}

{% block body_class %}t-text{% endblock %}

{% block header %}
    <header class="c-header-query" style="--_bg: var(--magenta);">
        <div class="o-main-container">
            <a href="{{ m.rsc.overview_news.page_url }}" class="c-header__back">{% include "icons/icon-caret-left.tpl" color="#000" %} {_ News _}</a>

            <h1>{{ id.title }}</h1>
            <time datetime="{{ id.publication_start|date:"c":"UTC" }}">{{ id.publication_start|date:"d F Y":"UTC" }}</time>
        </div>
    </header>
{% endblock %}

{% block content %}
    <article class="o-main-container o-page-content">
        <div class="body-text">
            {% if id.summary %}
                <p class="summary">{{ id.summary }}</p>
            {% endif %}
    
            {{ id.body|show_media }}
        </div>        
    </article>

    {% if id.o.depiction|length > 1 %}
        <section id="gallery" class="c-block c-block-gallery">
            <h2 class="o-main-container c-block-title">{_ Gallery _}</h2>
            
            <ul class="o-main-container o-grid">
                {% for r in id.o.depiction %}
                    <li>
                        <a 
                            href="{% image_url r.id width="1600" %}" 
                            data-fancybox="gallery"
                             data-caption="{{ r.summary }}">
                            <img src="{% image_url r.id mediaclass="gallery-image" %}" alt="{{ r.title }}">
                        </a>
                    </li>
                {% endfor %}
            </ul>
        </section>
    {% endif %}

    {% include "blocks/blocks.tpl" %}

    {% block below_body %}{% endblock %}
{% endblock %}
