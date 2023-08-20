title: GitHub Newlines

## Flags

> Flags: `(?i-ms)`

> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-ms)(\S) *[\n\r]([ \t]*\S)/
```

## Replace

```ruby
"$1..\n$2\"
```

---

## Test string:

```text
Title
=====

Subtitle
--------

A Clock stopped --
Not the Mantel's --
Geneva's farthest skill
Can't put the puppet bowing --
That just now dangled still --

- hello there
    - another list item
    - these are fun
- how are you?
    
    I'm good,
    
    thanks.
    your friend, brett.

A Clock stopped --  
Not the Mantel's --  
Geneva's farthest skill  
Can't put the puppet bowing --  
That just now dangled still --


something
    
> wicked and some  
> other things  
> you don't need to know
```


