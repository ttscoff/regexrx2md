title: Strip Yaml Separators

## Flags

> Flags: `(?is-Um)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * i: Case insensitive
> * s: Dot matches newline

## Regular Expression Search

```ruby
/(?is-Um)^[\-\.]{3}\n(([\w\s]+:\s*.*?$)+)\n[\-\.]{3}/
```

## Replace

```ruby
"$1\n\"
```

---

## Test string:

```text
---
Title: Go Eat Something Nice
Date: 2014-01-19 15:00
---
### a [%title] ([%date])

* * *
# A First Level Header

```


