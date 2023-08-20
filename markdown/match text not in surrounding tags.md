title: match text not in surrounding tags

## Flags

> Flags: `(?is-Um)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * i: Case insensitive
> * s: Dot matches newline

## Regular Expression Search

```ruby
/(?is-Um)(?!<[\[\(\`][\s\S]*)text(?!([^\[\]\)\`]*)[\]\)\`])/
```

---

## Test string:

```text
This is some [text to match](http://brettterpstra.com/text) but I don't want to match text that's inside of a markdown link or other tag. [text to match](http://brettterpstra.com/text)

```
other matches
```
```


