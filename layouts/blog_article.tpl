<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{{ page.language_code }}" lang="{{ page.language_code }}">
<head>
{% include "SiteHeader" %}
{{ blog.rss_link }}
  <title>{{article.title}} &laquo; {{page.title}}{% unless page.site_title == "" %} | {{ page.site_title }}{% endunless %}</title>
</head>
<body id="news" class="content-hyphenate">
<div id="wrap"><div class="tape_1 left"></div><div class="tape_2 right"></div>
	<div id="wrap_1"><div id="container">
  {% include "Langmenu" %}
  <div id="logo" class="clearfix">
   <h1 class="clearfix">{% if editmode %}{% editable site.header %}{%else%}<a href="{{ site.root_item.url }}">{% editable site.header %}</a>{% endif %}</h1> 
    <div class="clearer"></div>
  </div>
  {% include "Mainmenu" %}
{% include "Submenu" %}
  <div id="content" class="clearfix">
   <h1 class="clearfix">{% editable article.title plain="true" %}</h1>
   <table id="newstable">
    <tr>
     <td class="newsdate">
      <span>{{ article.created_at | format_date:"%d" }}</span>
      {{ article.created_at | format_date:"%b" }}
     </td>
     <td class="excerpt clearfix" style="font-weight: bold; padding-bottom: 0;">
      <span class="author">{{ "author" |lc }} {{ article.author.name }}, {{ article.created_at | date:"%d. %B %Y" }}</span>
      {% editable article.excerpt %}
     </td>
    </tr>
   </table>
   {% editable article.body %}
<div class="clearer"></div>
    <br /><br /><a class="bloglink" href="./">‹ {{ "older_news" |lc }}</a>
{% if article.comments_count != 0 %}
                        <div id="comments">
                          <span class="blogheading"><a name="comments"></a>{{"comments_for_count"|lc}}: <span class="edy-site-blog-comments-count">{{ article.comments_count }}</span></span>
{% for comment in article.comments %}
                         <div class="comment edy-site-blog-comment">
                          <span class="commentdetail">{{ comment.author }}, {{ comment.created_at | format_date:"long" }} {% removebutton %}</span>
                          <p>{{ comment.body }}</p>
                         </div>
{% endfor %}
                        </div>
{% endif %}
                        <div id="commentform">
                         <span class="blogheading">{{"add_a_comment"|lc}}</span>
<div id="addcomment">
  {% commentform %}
{% unless comment.valid? %}<ul>
{% for error in comment.errors %}
<li>{{ error | lc }}</li>
{% endfor %}
</ul>{% endunless %}
<table>
 <tr><td>{{"name"|lc}}:</td><td>{{"email"|lc}}</td></tr>

<tr><td><input type="text" name="comment[author]" value="{{comment.author}}" class="textbox" /></td><td><input class="textbox" type="text" name="comment[author_email]" value="{{comment.author_email}}" /></td>
</tr>
<tr><td>{{"comment"|lc}}:</td></tr>
<tr><td colspan="2"><textarea cols="20"  name="comment[body]" rows="5">{{comment.body}}</textarea></td></tr>
</table>
<input type="submit" class="submit" value="· {{"submit"|lc}} ·" />
{% endcommentform %}
</div>
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