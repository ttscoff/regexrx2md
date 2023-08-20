title: Email Address

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)^([A-Z0-9._%-]+)@([A-Z0-9._%-]+\.[A-Z]{2,4})$/
```

---

## Test string:

```text
me@brettterpstra.com
```


