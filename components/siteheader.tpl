{% stylesheet_link "style.css?helsinki" %}
{% if editmode %}<style>.untranslated{opacity:.5;filter:alpha(Opacity=50);zoom:1}</style>{% endif %}

<meta name="keywords" content="{{ page.keywords }}" />
<meta name="description" content="{{ page.description }}" />
<meta name="copyright" content="{{ site.copyright }}" />
<meta name="author" content="{{ site.author }}" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="icon" href="/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="/favicon.ico" type="image/ico" />
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
{% if site.search.enabled %}
	{% stylesheet_link "assets/site_search/2.0/site_search.css" static_host="true" %}
        {% endif %}
<!--[if IE]><style>.clearfix { zoom:1; }</style><![endif]-->

<!--[if lt IE 7]>{% stylesheet_link "ie.css?helsinki" %}<![endif]-->
<meta name="viewport" content="initial-scale=1" />    