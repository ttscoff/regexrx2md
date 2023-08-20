title: Find Ampersands

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)&(?!(?:[a-zA-Z][a-zA-Z0-9]*|#\d+);)(?!(?>(?:(?!<!\[CDATA\[|\]\]>).)*)\]\]>)/
```

---

## Test string:

```text
<p>a & b</p>
<p>c &amp; d</p>
<script type="text/javascript">
  // <![CDATA[
  if (a && b) doSomething('a & b &amp; c');
  // ]]>
</script>
<p>a & b</p>
<p>c &amp; d</p>
```


