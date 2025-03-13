{% if id.o.subject %}
    <ul class="c-keyword-list">
        {% for r in id.o.subject %}
            <li><a href="{% url events %}?qhasobject={{ r.id }}" class="c-btn-keyword">{{ r.title }}</a></li> 
        {% endfor %}
    </ul>
{% endif %}