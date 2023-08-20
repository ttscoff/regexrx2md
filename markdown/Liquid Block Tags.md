title: Liquid Block Tags

## Flags

> Flags: `(?is-Um)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * i: Case insensitive
> * s: Dot matches newline

## Regular Expression Search

```ruby
/(?is-Um)\{%\s*(\S+)\s*(.*?)\s*%\}(.*?)\{%\s*end\1\s*%\}/
```

---

## Test string:

```text
{% apponly %}
A paragraph to appear only when run native.
{% endapponly %}

{% browseronly %}A paragraph to appear only when run in a browser.{% endbrowseronly %}

A paragraph containing {% apponly %}a section for app only{% endapponly %}{% browseronly %}a section for browser only.{% endbrowseronly %}

{% class class1 class2 %}Valid urls may be hidden from the popup with the "Hide Valid" button at the top of it. This will show only urls that have returned an error status.{% endclass %}

Pressing {% class class1 class2 %}Escape{%endclass%} will hide the validation results. They can be revealed again using <kbd>{{ctrl}}{{cmd}}L</kbd> or the Gear menu.

```


