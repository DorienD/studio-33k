{% if id.is_visible %}
{% with id.o.hasheader.id|default:id.depiction.id as dep %}
    <div class="c-card -{{ id.category.name }} {% if not id.is_published %}-not-published{% endif %}">
        {% block card_image %}
            <div class="c-card__image{% if not dep %} -fallback{% endif %}{% if aspectRatio == "2/1" %} -featured{% endif %}">
                {% if dep %}
                    {% if aspectRatio == "2/1" %}
                        <img src="{% image_url dep mediaclass="card-image-featured" crop crop_center=dep.crop_center %}" loading="lazy" alt="">
                    {% else %}
                        <img src="{% image_url dep mediaclass="card-image" crop crop_center=dep.crop_center %}" loading="lazy" alt="">
                    {% endif %}
                {% endif %}
                {% if not id.is_published %}<span class="c-card__unpublished">{_ Unpublished _}</span>{% endif %}

                {% block card_date_block %}{% endblock %}
            </div>
        {% endblock %}

        <div class="c-card__content">
            {% block card_title %}
                <h3 class="title-card">
                    <a href="{{ id.page_url }}" class="c-btn-cover">
                        {{ id.title|truncate:"55":"..." }}
                    </a>
                </h3>
            {% endblock %}

            {% block card_location %}
                {% if id.address_title|default:id.address_street_1 as loc %}
                    <p class="c-card__location">{% include "icons/icon-location.tpl" color="#000" %}{{ loc }}</p>
                {% endif %}
            {% endblock %}

            {% block card_date %}{% endblock %}
            
            {% block card_content %}
                <p class="c-card__text">{{ id|summary:"150" }}</p>
            {% endblock %}
                
            {% block card_keywords %}
                {% include "keywords/keyword-list-card.tpl" %}
            {% endblock %}
        </div>
    </div>
{% endwith %}
{% endif %}