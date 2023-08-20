title: Bunch Heredoc Code

## Flags

> Flags: `(?ims-U)`

> * -U: Greedy
> * i: Case insensitive
> * m: Treat target as one line
> * s: Dot matches newline

## Regular Expression Search

```ruby
/(?ims-U)(?<=\n|\A)(!* *[$*]) *(?:(`{3,}) *\n(.*?)(?<=\n)[ \t]*\2|<< *([A-Z]+) *\n(.*?)(?<=\n)[ \t]*\4)( *\(display.*?\))?(?= *(?:\n|\Z))/
```

---

## Test string:

```text
---
title: 👍Test Stuff
menu order: 100
shortcut: z
single bunch mode: ignore
btt_uuid: F1BF35EE-C218-4831-96AA-EC581079199E
toggles: true
tags: testtag, barley
---

$ << EOF
#!/bin/bash

say "This is inside a heredoc script"
EOF

* ```
say "this is an applescript"
```

$ ```
say "fuck yeah"
``` (display command)
```


