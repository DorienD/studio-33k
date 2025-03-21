{% extends "base.tpl" %}

{% block body_class %}t-text{% endblock %}

{% block content %}
    {% with id.o.haspart as result %}
        {% include "cards/list.tpl" card_template="cards/card.tpl" %}
     {% endwith %}
{% endblock %}
