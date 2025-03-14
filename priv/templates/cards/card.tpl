{% if id.is_visible %}
{% with id.o.hasheader.id|default:id.depiction.id as dep %}
    <div class="c-card -{{ id.category.name }} {% if not id.is_published %}-not-published{% endif %}">
        {% if dep %}
            <div class="c-card__image{% if not dep %} -fallback{% endif %}">
                {% image dep width="600" %}
            </div>
        {% endif %}

        <div class="c-card__content">
            {% block card_title %}
                <h3 class="title-card">
                    <a href="{{ id.page_url }}" class="c-btn-cover">
                        {{ id.title }}
                    </a>
                </h3>
            {% endblock %}
            
            {% include "keywords/keyword-list-card.tpl" %}
        </div>
    </div>
{% endwith %}
{% endif %}