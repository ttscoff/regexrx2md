title: Bunch Detect Multi Choice Snippets

## Flags

> Flags: `(?is-Um)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * i: Case insensitive
> * s: Dot matches newline

## Regular Expression Search

```ruby
/(?is-Um)(?<=\n|^)!\?(\{.*?\}|\[.*?\])( *"(.*?)")?/
```

---

## Test string:

```text
---
title: 👍Test Stuff
menu order: 1
single bunch mode: ignore
---
!?{
One: OmniFocus
Two: Things
Three: TaskPaper
} "What's: your poison?"

!?[one, two, three] "hello"

___
-[First]
* say "first choice"
-[Second]
* say "second choice"
-[Third]
* say "third choice"

```


