title: URL with fragment and query string

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)^(https?:\/\/)?([^\s:/?#]+\.?)+(.[^\s:/?#]+\.?)*([^?\s]*)(\?([^#\s]*))?(#(.*))?$/
```

---

## Test string:

```text
https://brettterpstra.com/hello#frag?val=2
```


