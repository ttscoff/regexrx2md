title: Markdown links

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)\[(.*?)\](?:\(|:\s+)(.*?)(?:\s*"(.*?)")?\s*\)?\s*$/
```

---

## Test string:

```text
[testing](http://brettterpstra.com "second title")
[another]: http://brettterpstra.com "with a title"

```


