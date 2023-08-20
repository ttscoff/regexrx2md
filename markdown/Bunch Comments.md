title: Bunch Comments

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)^(?![\w_ ]+=|[$&*])(.*?)(?<= |^)(//|#) (?![\->#= ]*\[\s*(.*?)\s*\]).*$/
```

## Replace

```ruby
"$1\"
```

---

## Test string:

```text
# This is a comment
// And this is a comment
This is not a comment

tiewth # this is also a comment

var = but # this is not a comment

         // This is a comment

This is# also not a comment

$ shell # comment
```


