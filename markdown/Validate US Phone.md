title: Validate US Phone

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)^(1|\+\d)*\s*((\(\d{3}\)|\-\d{3}\-)\s*)*(\d{3}(-{0,1}|\s{0,1})){1,2}\d{2}(-{0,1}|\s{0,1})\d{2}$/
```

---

## Test string:

```text
(507) 4525486
(507) 452-5486
5074525486
1-507-452-5486
+1 (507) 452-5486
+15074525486
```


