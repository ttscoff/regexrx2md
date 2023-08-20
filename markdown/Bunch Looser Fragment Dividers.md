title: Bunch Looser Fragment Dividers

## Flags

> Flags: `(?ims-U)`

> * -U: Greedy
> * i: Case insensitive
> * m: Treat target as one line
> * s: Dot matches newline

## Regular Expression Search

```ruby
/(?ims-U)(?:[#=>][#=> ]*|/{2,})\s*\[(.+?)\].*?\n(.*?)(?=\n+(?:([#=>][#=> ]*|/{2,})\[)|$)/
```

---

## Test string:

```text
// [Hello]
one two

====>>##  [Hello Again] // This is a comment
one two
- [this is a typing combo]

three four


>[Section]
Must contain stuff

#########[Another Section] ===------???
Why not?

<hullaballoo.snippet

=[Hello]

```


