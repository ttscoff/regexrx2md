title: Find Domain

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)^([a-z0-9]+):\/\/(.*?)(?:\/|\?|$)/
```

---

## Test string:

```text
http://brettterpstra.com/2010/06/14/ampersands-javascript/
```


