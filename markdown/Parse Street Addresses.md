title: Parse Street Addresses

## Flags

> Flags: `(?i-ms)`

> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-ms)^(\d+.+)$[\r\n|\r|\n](?:(^.+$)[\r\n|\r|\n])?([\w\x20.-]+),\x20(\w\w)\x20+(\d{5}-\d{4}|\d{5})\s*$/
```

---

## Test string:

```text
[This pattern will parse an address that meets certain criteria. First, the address has to start the line with a digit. A second line is optional, and the last line will contain the city (with some allowable puctuation), comma, space, two letters, one or more spaces, and then the 5+4 zip or just 5 digit zip. Each part of the address is stored in subsequent subexpressions. Trailing spaces or other whitespace after the zip will be matched overall, but ignored in the last subexpression.]

123 Mockingbird Lane
Atlanta, GA 11101

27B Baker Street
London, EN 11234

56-71 Hyberion Lane
Apt. 45B
New York, NY  11020   

12 Eleventh Ave.
#12
St. Alamo, GA 10101-1234

```


