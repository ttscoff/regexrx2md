title: youtubework

## Flags

> Flags: `(?i-ms)`

> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-ms)(?:(?:[^v]+)+v.)?([^&=]{11})(?=&|$)/
```

---

## Test string:

```text
http://www.youtube.com/watch?v=Z9pN1WjbmQ0&feature=topvideos&fmt=22

http://www.youtube.com/v/3mmcPKy4040

rgdBP2kyZH4


```


