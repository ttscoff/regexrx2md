title: Validate MAC Addresses

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)\b(?:[[:xdigit:]]{1,2})((:)|(-))(?:[[:xdigit:]]{1,2}(?(2):|-)){4}[[:xdigit:]]{1,2}\b/
```

---

## Test string:

```text
This pattern will validate MAC addresses in the form of 00:00:00:00:00:00 or 00-00-00-00-00-00. It will not allow mixed punctuation like 00:00-00:00-00:00. Only hexadecimal numerals are allowed, like aa-BB-cc-DD-ee-FF (case makes no difference) but not other letters like GG-hh-II-jj-KK-ll. The address can be single-digit or double-digit format like 1:23:5:a:cf:6 or 01-23-05-0A-CF-06.
```


