title: Markdown Emphasis

## Flags

> Flags: `(?im-Us)`

> * -U: Greedy
> * -s: Dot does not match newline
> * i: Case insensitive
> * m: Treat target as one line

## Regular Expression Search

```ruby
/(?im-Us)(_|\*)+(\S.*?\S)\1+/
```

## Replace

```ruby
"$2\"
```

---

## Test string:

```text
_**this is awesome**. **Awesome**, I tell you!_
```


