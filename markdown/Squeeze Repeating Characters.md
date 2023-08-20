title: Squeeze Repeating Characters

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)(.)\1+/
```

## Replace

```ruby
"$1\"
```

---

## Test string:

```text
Thiiiis wwwwiill   looookkk someeewwwhattt betterrr innn tthhee reeepplaaceed   seeectioon.
```


