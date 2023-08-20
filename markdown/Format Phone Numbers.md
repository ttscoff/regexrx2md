title: Format Phone Numbers

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)(?:\b1\D?)?(?:[([ ]?|\b)(\d{3})(?:[])] |[]) .\-])?(\d{3})[.\- ]?(\d{4})\b/
```

## Replace

```ruby
"($1) $2-$3\"
```

---

## Test string:

```text
[This pattern picks out potential phone numbers by finding groups of 10 digits, then formats them in the form of (xxx) yyy-zzzz. The assumption is that these digits may or may not have some separation, and those separators are well-defined at each position. There may also be a leading "1" which would be discarded.]

2125556666
212
4444444
212-555-5555
212 555 1212
212.555.6666
(212)555-0987
(212) 555-0187
12125551212
1 (212) 555 1212
1-212-555-1212
[212] 555.1212

```


