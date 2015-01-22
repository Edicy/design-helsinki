<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{{ page.langauage_code }}" lang="{{ page.language_code }}">
<head>
{% include "SiteHeader" %}
  <title>{{site.name}} &raquo; {{page.title}}</title>
</head>
<body id="front">
<div id="wrap"><div class="tape_1 left"></div><div class="tape_2 right"></div>
	<div id="wrap_1"><div id="container">
  <div id="logo" class="clearfix">
   <h1 class="clearfix">{% if editmode %}{% editable site.header %}{%else%}<a href="{{ site.root_item.url }}">{% editable site.header %}</a>{% endif %}</h1>
                       <div class="clearer"></div>
   {% content %}
  </div>
  {% include "Mainmenu" %}
  {% include "Langmenu" %}
	</div>
<div id="edicy">{% loginblock %}{{ "footer_login_link" | lc }}{% endloginblock %}</div>
	</div><div class="tape_1 right bottom"></div><div class="tape_2 left bottom"></div>
</div>
{% unless editmode %}{{ site.analytics }}{% endunless %}
  {% include "JS" %}
</body>
</html>