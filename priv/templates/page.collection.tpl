{% extends "base.tpl" %}

{% block header %}
    {% catinclude 'header/header-small.tpl' id %}
{% endblock %}

{% block content %}
    <article class="o-page-content">
        {% if id.summary %}
            <p class="summary">{{ id.summary }}</p>
        {% endif %}

        <div class="body-text">
            {{ id.body|show_media }}
        </div>
        
        {% block below_body %}{% endblock %}
    </article>

    {% block page_blocks %}
        {% include "blocks/blocks.tpl" %}
    {% endblock %}

    <div class="lane">
        <div class="main-container">
             {% with id.o.haspart as result %}
                {% include "cards/list.tpl" result=result %}
            {% endwith %}
        </div>
    </div>

    
{% endblock %}