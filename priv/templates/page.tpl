{% extends "base.tpl" %}

{% block body_class %}t-text{% endblock %}

{% block header %}
    {% catinclude 'header/header-small.tpl' id %}
{% endblock %}

{% block content %}
    <article class="o-main-container o-page-content c-block {% if not id.summary or not id.body %}-no-text{% endif %}">
        {% if id.o.hasheader.id %}
            <h1>{{ id.title }}</h1>
        {% endif %}

        {% block body %}
            {% if id.summary %}
                <p class="summary">{{ id.summary }}</p>
            {% endif %}
            
            {% if id.body %}
                <div class="body-text">
                    {{ id.body|show_media }}
                </div>
            {% endif %}
        {% endblock %}
    </article>

    {% block page_blocks %}
        {% include "blocks/blocks.tpl" %}
    {% endblock %}

    {% block below_body %}{% endblock %}
{% endblock %}
