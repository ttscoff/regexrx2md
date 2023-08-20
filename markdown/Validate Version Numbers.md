title: Validate Version Numbers

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)(\d(?:\.\d)+)(fc|a|b)?((?(2)\d+))/
```

---

## Test string:

```text
[This will validate version numbers and split them up by their components. $1 contains the version, $2 the release stage (a for alpha, b for beta, fc for final candidate), if there is one, and $3 will contain the development version if there is one.

This regular expression is used within RegExRX while checking for the latest version from the web.]

1.0
1.1.1
1.0b1
1.0a3
1 <- wouldn't be valid for this purpose
1.2.3.4b1
1.2fc4

```


