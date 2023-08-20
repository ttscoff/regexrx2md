title: Smart Quotes

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)(?:[^\s\(]?)"((\s*)([^\\]*?(\\.[^\\]*)*)(\s*))(?:"|\n\n)(?:[^\s\)\.\,;]?)/
```

---

## Test string:

```text
The code "301" is interpreted as "moved permanently". After the code, the URL of the missing or renamed page is noted, followed by a space, "then followed by the" new location or file name


```


