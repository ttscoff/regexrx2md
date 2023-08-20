title: Find Social Security Numbers

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)\b\d{3}-\d{2}-\d{4}\b/
```

---

## Test string:

```text
This pattern finds social security numbers like 123-45-6789. It will not identify a number that is inline with other text like123-45-6789 but will accept it if it's labelled like

SS#123-45-6789
ID-123-45-6789
SS:123-45-6789

It will also ignore numbers mixed with text like O12-34-5678 (that starts off with the letter "o") or separated with other punctiation like 123 45 6789 or 123:45:6789. It will also ignore a straight 9-digit number like 123456789.
```


