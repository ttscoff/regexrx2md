title: Bunch UUID Command

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)^(uuid +)?((?:(?:not +)?(?:i[sn](?: +not)? +)?|! *)\[?(((?:, *)?[a-z0-9]{8}-[a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{12})+)\]?)/
```

---

## Test string:

```text
uuid not in [C6766848-065C-51F8-B2EE-3A9DA8A10018, C6766848-065C-51F8-B2EE-3A9DA8A10016, C6766848-065C-51F8-B2EE-3A9DA8A10017]

uuid is not [C6766848-065C-51F8-B2EE-3A9DA8A10018, C6766848-065C-51F8-B2EE-3A9DA8A10016, C6766848-065C-51F8-B2EE-3A9DA8A10017]

C6766848-065C-51F8-B2EE-3A9DA8A10018
```


