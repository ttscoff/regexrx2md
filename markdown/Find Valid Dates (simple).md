title: Find Valid Dates (simple)

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)\b(\d{1,2})([/-])(\d{1,2})\2(\d{4}|\d{2})\b/
```

---

## Test string:

```text
[This is a simple date validation pattern. It merely looks for a series of digits in the form of 00/00/0000 or 00/00/00 or 00-00-00. There is no verification of content, merely form. For a more complex pattern that validates both form and content, see the "Find Valid Dates" example.

In this simple pattern, the month (or, for those outside the USA, the day) is in subexpression 1, the day (or month) in subexpression 3, and the year in subexpression 4. The punctuation is captured in subexpression 2 so we can make sure it is consistent.]

2/1/09
02/01/2009
2/01/09
2/29/2009 <- That's just wrong, but the form is right
11/1/09
1-1-09 
1/1-09 <- Either "-" or "/" but not both
```


