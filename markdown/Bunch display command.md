title: Bunch display command

## Flags

> Flags: `(?is-Um)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * i: Case insensitive
> * s: Dot matches newline

## Regular Expression Search

```ruby
/(?is-Um)^display( +[~/\w]{2,}.*?)?( +(\d))?( +(\d+%?|full)x(\d+%?|full))?( +(\d+|l(?:eft)?|c(?:enter)?|r(?:ight)?), *(\d+|t(?:op)?|c(?:enter)?|b(?:ottom)?))?( +#([0-9a-f]{3,6})( +#([0-9a-f]{3,6}))?)?( +(\d+)%)?( +(d(?:esk(?:top)?)?|n(?:orm(?:al)?)?|f(?:loat(?:ing)?)?|w(?:all(?:paper)?)?))?$/
```

---

## Test string:

```text
display ~/Desktop/test.txt 1 fullx100% #123456 #123456 d

display 1 right,top #fafafa #666 w

display 1 right,center d

display 1
```


