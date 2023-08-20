title: yaml headers

## Flags

> Flags: `(?ims-U)`

> * -U: Greedy
> * i: Case insensitive
> * m: Treat target as one line
> * s: Dot matches newline

## Regular Expression Search

```ruby
/(?ims-U)^---\s*\n(.*?)\n[\-.]{3} *\n/
```

---

## Test string:

```text
---
Title:	Multimarkdown Composer Style Testing
type: post
tags:
- one
- two
- three:
    hey
    there
---
# MultiMarkdown themes #

Synth craft beer aesthetic, **Some bold text** VHS tattooed 3 [wolf moon](http://brettterpstra.com) raw denim wes anderson gentrify.  Cardigan lo-fi craft beer helvetica, twee 3 wolf moon keytar mcsweeney's letterpress.  Biodiesel ethical fap tattooed craft beer, quinoa `pitchfork aesthetic`.  Mustache terry richardson bicycle rights, viral *Some italics text* trust fund organic sustainable. 

```


