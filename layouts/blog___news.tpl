<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{{ page.language_code }}" lang="{{ page.language_code }}">
<head>
{% include "SiteHeader" %}
{{ blog.rss_link }}
  <title>{{site.name}} &raquo; {{page.title}}</title>
</head>
<body id="news">
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
   <h1>{{ page.title }}</h1>
    {% addbutton class="add-article" %}
   <table id="newstable">{% for article in articles %}
    <tr>
     <td class="newsdate">
      <span>{{ article.created_at | format_date:"%d" }}</span>
      {{ article.created_at | format_date:"%b" }}
     </td>
     <td class="excerpt clearfix">
      <h2><a href="{{ article.url }}">{{ article.title }}</a></h2>
       {{ article.excerpt }}<br /><a href="{{ article.url }}">{{ "read_more" | lc }}</a>, <a href="{{ article.url }}#comments">{{ "comments_for_count" | lc }}: {{ article.comments_count }}</a>
     </td>
    </tr>
   {% endfor %}</table>
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