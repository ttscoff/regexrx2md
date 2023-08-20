title: Bunch - Key Combos and Strings

## Flags

> Flags: `(?is-Um)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * i: Case insensitive
> * s: Dot matches newline

## Regular Expression Search

```ruby
/(?is-Um)("(.*?)"|((?<=^| ).*?(?="|$)))/
```

---

## Test string:

```text
"Sorry, testing a script" @2 @$3 space "Sorry, testing something, ignore"
```


