<nav id="main-nav" class="c-side-nav">
    <div class="o-main-container">
        <a href="{% url home %}" class="c-main-nav__logo">
            {% if id.name == "page_home" %}
                <h1>{{ m.site.title }}</h1>
            {% else %}
                <span>{{ m.site.title }}</span>
            {% endif %}
        </a>

        <button id="main-nav-toggle" class="c-main-nav__toggle"><span class="visually-hidden">Toggle menu</span><i></i></button>
    </div>
    <div class="c-main-nav__menu">
        <div class="o-main-container">
            {% menu class="c-main-nav__list" %}
        </div>
    </div>
</nav>