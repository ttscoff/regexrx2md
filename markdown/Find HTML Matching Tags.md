title: Find HTML Matching Tags

## Flags

> Flags: `(?i-ms)`

> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-ms)<(\w+)\b.*(/\s*>|</\1>)/
```

---

## Test string:

```text
This is some <b>bolded</b> text. This is an image: <img src="something" />. Note: The "Greedy" option is off and subexpression 1 holds the tag type.
```


