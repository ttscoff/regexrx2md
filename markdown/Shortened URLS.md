title: Shortened URLS

## Flags

> Flags: `(?i-ms)`

> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-ms)https?:\/\/[\da-z]+\.[a-z]{2}\/[^\)\],\.!\s\n\r]+?/
```

---

## Test string:

```text
http://t.co/whf4CZQugH some text http://t.co/JPH8nbRUou I just need to be able to pause this thing now.

Here's [another one](http://bit.ly/1hkAgnM). This one isn't shortened: http://brettterpstra.com. Neither is http://fountain.io/developers.

This one is fake/invalid: http://t.co/aagweroi2, but this is real: http://is.gd/S4Eeck

http://enva.to/16G45QC

http://bit.ly/1fIEaLN <- Just one more.
```


