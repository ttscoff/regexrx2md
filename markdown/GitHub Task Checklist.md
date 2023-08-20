title: GitHub Task Checklist

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)((?<=[\+\-\*] )\[([Xx\s])\]|(?<=\d\. )\[([Xx\s])\])(?= \S+)/
```

---

## Test string:

```text
- [ ] This is a task
	- [x] This is a completed task
1. [ ] This is a numbered item
```


