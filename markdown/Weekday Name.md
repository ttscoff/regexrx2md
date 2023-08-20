title: Weekday Name

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)^(mon|tue|wed|thur?|fri|sat|sun)(\w+(day)?)?$/
```

---

## Test string:

```text
mon
tueday
thu
friday
```


