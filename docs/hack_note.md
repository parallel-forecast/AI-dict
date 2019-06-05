---
search_exclude: true
---
Lots of hacky stuff happened in order to make each dictionary entry searchable,
as opposed to just searching across html pages.

Hacky things that happened here:

* indexing headings by h3, so if typography changes search will break.
* Also currently should exclude every other page than Dictionary from search
because otherwise I expect for-loop indexing to mess up

This annotates: ```search-data.json```:

```
{
  {% assign comma = false %}
    {% for page in site.html_pages %}{% if page.search_exclude != true %}
```
In order to extract the markdown headings from the file, without clogging it up
with HTML tags, with replace the headings with a non-HTML substitute, clean up,
and then add them back in.
```
    {% assign preprocessed_content=page.content | replace: '<h3', '__h__' %}
    {% assign preprocessed_content=preprocessed_content | replace: '</h3', '__/h__' %}
    {% assign truncated_content=preprocessed_content | strip_html | remove: 'Table of contents' | remove: '```'  | remove: '---' | replace: '\', ' ' | normalize_whitespace %}
    {% assign cleaned_content=truncated_content | replace: '__h__', '<h3' %}
    {% assign cleaned_content=cleaned_content | replace: '__/h__', '</h3' %}
```
The first dictionary entry was the heading of the entire page, which messed up
the #-url markdown tags, so we shift to start at the second entry.
```
    {% assign headers = cleaned_content | split: '<h3 id="' %}
    {% assign headers = headers | shift %}
```
Iterate over the content which has been split by markdown headers, and extract
title and url.
```
    {% for h in headers %}{% if comma == true%},{% endif %}
    {% assign split_h = h | split: '">' %}
    {% assign url_id = split_h[0] %}
    {% assign entry_title = split_h[1] | split: "<" %}

```
Finally add everything to an entry in the search database.
```
    "{{ forloop.index0 }}": {
      "id": "{{ forloop.index0 }}",
      "title": "{{ entry_title[0] }}",
      "content": "{{ entry_title[1] }}",
      "url": "{{ page.url | absolute_url }}#{{ url_id }}",
      "relUrl": "{{ page.url }}"
    }{% assign comma = true %}{% endfor %}
    {% endif %}{% endfor %}
}
```
