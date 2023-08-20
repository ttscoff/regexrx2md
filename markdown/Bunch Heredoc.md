title: Bunch Heredoc

## Flags

> Flags: `(?is-Um)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * i: Case insensitive
> * s: Dot matches newline

## Regular Expression Search

```ruby
/(?is-Um)(?<=\n|\A)(\S[\w_ ]+=\s*)(?:(`{3,})\s*\n(.*?)\n[ \t]*\2|(<< *([A-Z]+)\s*\n(.*?)(?<=\n)[ \t]*\5))(?= *(\n|\Z))/
```

---

## Test string:

```text



my_var = ```
lorem
ipsum
```

        $```
lorem
ipsum
```
- VAR = test

var =<<EOF
more stuff
like this
EOF

This is indented

    myvar = ```
            here's
            some
            more
            ```  
```


