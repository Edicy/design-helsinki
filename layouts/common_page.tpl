<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{{ page.language_code }}" lang="{{ page.language_code }}">
<head>
{% include "Siteheader" %}
  <title>{% unless page.site_title == "" %}{{ page.site_title }} &raquo; {% endunless %} {{page.title}}</title>
</head>
<body>
<div id="wrap" class="content-hyphenate"><div class="tape_1 left"></div><div class="tape_2 right"></div>
	<div id="wrap_1"><div id="container">
  {% include "Langmenu" %}
  <div id="logo" class="clearfix">
   <h1 class="clearfix">{% if editmode %}{% editable site.header %}{%else%}<a href="{{ site.root_item.url }}">{% editable site.header %}</a>{% endif %}</h1>
    <div class="clearer"></div>
  </div>
  {% include "Mainmenu" %}
  {% include "Submenu" %}
  <div id="content" class="clearfix">
    <div id="content-inner" class="clearfix">
   {% content %}
                       <div class="clearer"></div>
    </div>
  </div>
  <div id="footer" class="clearfix">
   {% content name="footer" xpage="true" %}
  </div>
	</div>
<div id="edicy">{% loginblock %}{{ "footer_login_link" | lc }}{% endloginblock %}</div>
	</div><div class="tape_1 right bottom"></div><div class="tape_2 left bottom"></div>
</div>
{% unless editmode %}{{ site.analytics }}{% endunless %}
  {% include "JS" %}
</body>
</html>