title: Feedburner Query String

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)([\?&]utm_[^&]+)+/
```

---

## Test string:

```text
http://www.boygeniusreport.com/2010/05/09/hp-rumored-to-be-releasing-a-webos-tablet-in-q3/&utm_medium=feed&utm_campaign=Feed%3A+TheBoyGeniusReport+%28Boy+Genius+Report%29&hello
```


