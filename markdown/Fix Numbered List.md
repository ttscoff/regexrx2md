title: Fix Numbered List

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)^\x20*(\d+)\.\x20/
```

## Replace

```ruby
"$1\t\"
```

---

## Test string:

```text
[Below is a numbered list where each new item starts with a number followed by a period. This pattern Repaces that with a number followed by a tab and also removes any leading spaces.]

1. This is item 1.

 2. This is item 2.

3. This is item 4.

4. This is another item that extends
2 another line

           5. This item starts with lots of spaces.

6. Item 6.

7. One more.

8. Almost there.

9. One more.

10. It's a wrap.

```


