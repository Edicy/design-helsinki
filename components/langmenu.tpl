  <div id="langmenu">{% if site.has_many_languages? %}{% for language in site.languages %}
   <a href="{{ language.url }}"{% if language.selected? %} class="active"{% endif %}>{{ language.title }}</a>{% endfor %}
  {% endif %}
{% if editmode %}{% languageadd %}{% endif %}{% if site.search.enabled %}<form id="search" action="" class="edys-search"><div><input type="text" id="onpage_search"/></div></form>{% endif %}</div>