title: Find IPv4 Address

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)\b(?:25[012345]|2[01234]\d|[01]?\d{1,2}\.){3}(?:25[012345]|2[01234]\d|[01]?\d{1,2})\b/
```

---

## Test string:

```text
Here are some valid IPv4 addresses: 192.168.1.2, 10.0.1.40, 001.010.100.255. These are just wrong: 256.100.100.100, 1000.10.10.10, 00010.0.0.1, 10.0.1.1000.
```


