{% for item in site.all_menuitems %}{% if item.selected? %}  
{% if editmode %}
<div id="submenu">

   {% for level2 in item.visible_children %}<a href="{{ level2.url }}"{% unless level2.translated? %} class="untranslated fci-editor-menuadd"{% endunless %}{% if level2.selected? %} class="active"{% endif %}>{{ level2.title }}</a>{% endfor %}
  {% menubtn item.hidden_children %}
{% menuadd parent="item" %}

  </div>
{% else %}
{% if item.children? %}
<div id="submenu">

   {% for level2 in item.all_children %}<a href="{{ level2.url }}"{% unless level2.translated? %} class="untranslated fci-editor-menuadd"{% endunless %}{% if level2.selected? %} class="active"{% endif %}>{{ level2.title }}</a>{% endfor %}

  </div>
{% endif %}
{% endif %}
{% endif %}{% endfor %}