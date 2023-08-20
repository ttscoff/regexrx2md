title: Remove Duplicate Lines

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)(^[^\r\n]+)(\r\n|\n|\r)\1/
```

## Replace

```ruby
"$1\"
```

---

## Test string:

```text
These patterns will identify and remove duplicate, consecutive, non-blank lines. This pattern will work on Mac, Windows or Linux files, or even mixed line endings. (Some of the lines below end with a linefeed, some a return, and some both.)


This is a line.
This is a line.

This is some other text.
This is some other text.
(The two lines above match because the first one ends with a return-linefeed, and this pattern doesn't care.)

This is a line.
(The above line doesn't match because it's not consecutive.)
This line will match even though the dup does not have a trailing newline character.
This line will match even though the dup does not have a trailing newline character.
```


