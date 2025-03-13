<!DOCTYPE html>
<html lang="{{ z_language|default:"en"|escape }}" class="environment-{{ m.site.environment }}">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>{#
		#}{% block title %}{#
			#}{% if id and id.name != 'page_home' %}{{ id.title }} | {% endif %}{{ m.site.title }}{#
		#}{% endblock %}{#
	#}</title>
	
    <!--
		Website design & development by:
		Dorien Drees & Marc Worrell 🖖🌈

		Proudly powered by: Zotonic, the Erlang CMS <http://www.zotonic.com>
	-->

	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="author" content="Studio 33K" />
	<meta name="view-transition" content="same-origin" />

	<link rel="apple-touch-icon" sizes="180x180" href="/lib/images/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="32x32" href="/lib/images/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="/lib/images/favicon-16x16.png">
	<link rel="mask-icon" href="/lib/images/safari-pinned-tab.svg" color="#fff">
	<meta name="msapplication-TileColor" content="#fff">
	<meta name="theme-color" content="#fff">

	{% all include "_html_head.tpl" %}

	{% block css %}
		{% lib
			"css/bootstrap.css"
			"css/style.css"
			"css/z.growl.css"
			minify
		%}
	{% endblock %}

	{% block html_head_extra %}{% endblock %}
</head>
<body class="{% block body_class %}page-{{ id.name }}{% endblock %} {% for cat in id.is_a %}cat-{{ cat }} {% endfor %}" {% block body_attrs %}{% endblock %} data-cotonic-pathname-search="{% cotonic_pathname_search %}">
	<div id="top"></div>
	{% block skip_link %}
		<a href="#main-content" class="sr-only sr-only-focusable skip-link">Skip to main content</a>
	{% endblock %}

	{% block nav %}
        {% include 'nav/nav.tpl' %}
    {% endblock %}

    <main id="main-content">
    	{% block header %}
	        {% catinclude 'header/header.tpl' id %}
	    {% endblock %}

	    {% block content_area %}
			{% block content %}
		        (This is <code>block main</code>)
		    {% endblock %}	    
	    {% endblock %}
    </main>

    {% block footer %}
        {# {% include 'footer/footer.tpl' %} #}
    {% endblock %}

    {% block admin_edit %}
        {% if m.acl.is_allowed.use.mod_admin %}
            {% if id %}
                <a href="{% url admin_edit_rsc id=id %}" class="c-btn-admin-edit">{_ Admin edit _}</a>
            {% else %}
                <a href="{% url admin %}" class="c-btn-admin-edit">{_ Admin _}</a>
            {% endif %}
        {% endif %}
    {% endblock %}

    {% include "_js_include.tpl" %}

	{% all include "_html_body.tpl" %}

	{% block _js_include_extra %}{% endblock %}

	{% script %}
</body>
</html>
