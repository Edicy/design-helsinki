<div id="mainmenu">
   {% unless site.root_item.hidden? %}<a href="{{ site.root_item.url }}"{% if site.root_item.selected? %} class="active"{% endif %}>{{ site.root_item.title }}</a>{% endunless %}
{% for item in site.visible_menuitems %}
   <a href="{{ item.url }}"{% unless item.translated? %} class="untranslated fci-editor-menuadd"{% endunless %}{% if item.selected? %} class="active"{% endif %}>{{ item.title }}</a>{% if item.blog? %}{% assign bloglink = item.url %}{% endif %}
{% endfor %}
  {% if editmode %}{% menubtn site.hidden_menuitems %}{% endif %}
{% if editmode %}{% menuadd %}{% endif %}
  </div>