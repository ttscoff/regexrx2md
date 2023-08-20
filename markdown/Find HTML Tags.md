title: Find HTML Tags

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)<(\w+)\b[^>]*>/
```

---

## Test string:

```text
<html>
This is an example of a <a href="http://www.mactechnologies.com">link</a>.
</html>

Note: Subexpression 1 holds the tag type.
```


