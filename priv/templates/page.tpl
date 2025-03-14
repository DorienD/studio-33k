{% extends "base.tpl" %}

{% block body_class %}t-text{% endblock %}

{% block content %}
    <article class="o-page-content">
        <h1>{{ id.title }}</h1>

        {% include "keywords/keyword-list.tpl" %}

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
