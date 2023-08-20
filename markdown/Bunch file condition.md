title: Bunch file condition

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)^(?:not +|! *)?file +(.*?)((?:does +)?(?:not +|! *)?(?:exists?|(?:contains? +(.+))))?$/
```

---

## Test string:

```text
file PATH
not file PATH
file PATH exists
not file PATH exists
file PATH does not exist
file not exists PATH
file does not exist PATH
file PATH contains TEXT
file PATH does not contain TEXT

file eats bullshit contains fartmonster

this is not a file
```


