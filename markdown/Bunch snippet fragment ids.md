title: Bunch snippet fragment ids

## Flags

> Flags: `(?ims-U)`

> * -U: Greedy
> * i: Case insensitive
> * m: Treat target as one line
> * s: Dot matches newline

## Regular Expression Search

```ruby
/(?ims-U)(?<=\n|^)(?:(?:[>#=]|--)[\->#= ]*)\[\s*(.*?)\s*\].*?\n+?(.*?)\n*(?=\n(?:[>#=]|--)[\->#= ]*\[|$)/
```

---

## Test string:

```text
#### [ Hello ] Say what you will

Sine atwer
awt
awert
awertg

> > > [hey]-- ==##**----a graerg
asdgggg
aw34t

a3wt4

- do a thing

----[ Another Section ]



#[hey]------
asdgggg


##[hey]------
asdgggg
awegaerg

$$$ aowirtgjhaeorigj

=[Hello]

```


