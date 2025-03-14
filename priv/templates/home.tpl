{% extends "base.tpl" %}

{% block body_class %}t-text{% endblock %}

{% block content %}
    {% with m.search[{query 
            cat="project"
            pagelen=100
            is_published
            asort='-rsc.is_featured' }] as result %}
        {% include "cards/list.tpl" card_template="cards/card.tpl" %}
     {% endwith %}
{% endblock %}
