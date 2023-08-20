title: Bunch backslash continued lines

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums) *\\ *\n[ \t]*(?=\S)/
```

## Replace

```ruby
" \"
```

---

## Test string:

```text
this is \ 
a continued \
line

this is a\
shorter one

   this is an indented \
   one

this is not \

what
```


