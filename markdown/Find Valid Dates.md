title: Find Valid Dates

## Flags

> Flags: `(?ix-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive
> * x: Free spacing

## Regular Expression Search

```ruby
/(?ix-Ums) # FREE SPACING -- all whitespace is ignored

# MONTH
\b ((0?2) (?# February) | (0?[13578]|10|12) (?# months with 31 days) | (?:11|0?[469])) (?# months with 30 days) # captures the month in $1 so we can check the number of days against it in the next section

/ # the slash

# DAY
((?(2)(?:[12]?\d|0?[1-9]) | # if Feb, allow 00 thru 29, OR
(?(3)(?:3[01]|[12]?\d|0?[1-9]) | # if a month with 31 days, allow 00 thru 31, ELSE
(?:30|[012]?\d)))) # it's a month with 30 days so allow 00 thru 30

/ # the slash

# YEAR
([12]\d{3} | \d{2}) \b # allow 1 or 2 followed by any 3 digits, OR just 2 digits/
```

---

## Test string:

```text
[These are some dates in the US standard format of month/day/year. The pattern defines the valid dates as having no more than 2 digits before the first slash, no more than two digits before the second slash, and 2 or 4 digits (as long as the first number of the 4 is 1 or 2) after the second slash.

It also matches the dates against the months so only January, March, May, July, August, October and December can have 31 days. February can have up to 29 days regardless of the year, and the rest can have up to 30. Zeros before single-digit months and dates are acceptable.

The month will be in $1, the date in $4 and the year in $5.]

VAID DATES
1/1/1999
2/25/2004
12/25/67
01/01/01
09/30/2005
11/10/2000
05/05/09
05/31/2009
10/31/2009
11/30/2009
12/31/2009

INVALID DATES
2/31/2004
13/1/2004
01/32/01
09/31/2005
01/00/0000
1/00/0000
1/1/0000
4/31/2009
11/31/2009
12/31/3000
001/01/2000

Note: This pattern does not rely on a date being on its own line so it will pick them out from sentences like, "I'm going to the vet on 4/25/2009" or "I have an appointment on 11/01/03".
```


