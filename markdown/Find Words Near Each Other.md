title: Find Words Near Each Other

## Flags

> Flags: `(?i-ms)`

> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-ms)\bfind\W+(?:\w+\W+){0,10}case\b|\bcase\W+(?:\w+\W+){0,10}find\b/
```

---

## Test string:

```text
This will find one word near another. In this case, "near" is defined as within 10 words, and it can be in either order. The first word is "find" and the next word is "case". It will find case too, or case find, but it will not find casely or case findly.
```


