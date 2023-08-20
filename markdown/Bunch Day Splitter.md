title: Bunch Day Splitter

## Flags

> Flags: `(?is-Um)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * i: Case insensitive
> * s: Dot matches newline

## Regular Expression Search

```ruby
/(?is-Um)(?<=m|w|th|t|f|sa|su|\b)(m|w|th|t|f|sa|su)[ a-z]*?/
```

---

## Test string:

```text
MWThF 8am

Mon Tuesday Wed Thursday Fri Sunday Saturday 06:30

Monday Tuesday Sunday Thursday 5pm
```


