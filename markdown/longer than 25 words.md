title: longer than 25 words

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)(?!\s)([^.!?]+?\s){25,}(?![\.!?])\w+/
```

---

## Test string:

```text
Lorem (ipsum) dolor sit amet, "consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim" ad 'minim veniam, quis nostrud' exercitation "ullamco laboris nisi ut aliquip" ex ea commodo consequat Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
```


