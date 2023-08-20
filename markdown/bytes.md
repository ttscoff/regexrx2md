title: bytes

## Flags

> Flags: `(?i-ms)`

> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-ms)(?:^\s*|\()(?:([\d\.,]+)\s*(?:([tgmk])b?|b(?:ytes)?)?\s+(in|to)\s+((k(?:ilo)?|m(?:ega)?|g(?:iga)?|t(?:erra)?)(b(?:ytes)?)?|b(?:ytes)?|(h(?:uman)?|m(?:achine)?))(\)|\s*$)|(^[\d\.,]+$))/
```

---

## Test string:

```text
32Gb to machine
219851 to human
1,302,500,000kb in MB
or (56M to machine)
2498438 in megabytes
13451235

2: number to convert
3: multiplier type
4: in OR to
5: denominator OR human/machine
```


