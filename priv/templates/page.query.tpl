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

    {% with m.search.paged[{query 
            query_id=id 
            page=q.page 
            qargs
            id_exclude=m.rsc.administrator.id 
            cat_exclude='meta' 
            cat_exclude='categorization' 
            pagelen=21
            is_findable 
            is_published
            asort='-rsc.is_featured' }] as result %}

        {% include "cards/list.tpl" card_template="cards/card.tpl" extraClasses="o-card-list" %}
        
        {% pager result=result id=id qargs hide_single_page template="pager/_pager.tpl" %}
     {% endwith %}
{% endblock %}