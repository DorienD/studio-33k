{% extends "base.tpl" %}

{% block header %}
    {% catinclude 'header/header-small.tpl' id %}
{% endblock %}

{% block content %}
    <article class="o-main-container o-page-content">
    </article>

    {% with m.search.paged[{query
            page=q.page 
            hasobject=id
            pagelen=16 
            is_findable 
            is_published
            asort='-rsc.is_featured' }] as result %}
        
        {% include "cards/list.tpl" card_template="cards/card.tpl" extraClasses="o-project-list" result=result %}
        
        {% pager result=result id=id qargs hide_single_page template="pager/_pager.tpl" %}
     {% endwith %}
{% endblock %}