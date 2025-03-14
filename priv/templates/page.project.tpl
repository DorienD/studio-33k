{% extends "page.tpl" %}

{% block body_class %}t-project{% endblock %}

{% block below_body %}
    {% if id.o.depiction|length > 1 %}
        <section id="gallery" class="c-block c-block-gallery">
            
                {% include "cards/list.tpl" result=id.o.depiction card_template="cards/card.tpl" %}
                {# {% for r in id.o.depiction %}
                    <li>
                        <a 
                            href="{% image_url r.id width="1600" %}" 
                            data-fancybox="gallery"
                             data-caption="{{ r.summary }}">
                            <img src="{% image_url r.id mediaclass="gallery-image" %}" alt="{{ r.title }}">
                        </a>
                    </li>
                {% endfor %} #}
            
        </section>
    {% endif %}
{% endblock %}
