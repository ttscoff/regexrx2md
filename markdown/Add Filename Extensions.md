title: Add Filename Extensions

## Flags

> Flags: `(?ix-ms)`

> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive
> * x: Free spacing

## Regular Expression Search

```ruby
/(?ix-ms) # FREE SPACING -- all whitespace is ignored

^ # start of the string

# NEGATIVE LOOKAHEADS
(?! .*\.[[:alnum:]]{2,5} $) # negative lookahead for a string that already ends in an extension
(?! .*\.(?: regexrx | somelongextension)$) # negative lookahead for special cases (longer extensions)

# MATCH BEGINS HERE
(.{1,50}) # 1-50 characters
(\.[[:alnum:]]?)? # optional "." followed by no more than 1 letter (used to eliminate this in the replacement pattern)

$ # end of the string/
```

---

## Test string:

```text
[This finds filenames of 50 characters or less that do not end in an extension and adds the extension ".txt". Note that greedy is turned off and filenames that end in a simple dot are still processed correctly. Filenames that end in a dot + single letter have the last letter replaced with ".txt" properly. A dot followed by more than 5 letters is not considered an extension unless it's in the special cases (the second negative lookahead that contains "regexrx", etc.).]

something.zip
something.txt
something.xl
something
some thing
some-thing
some.thing wicked this way comes
this name ends in a dot.
this name ends with a dot plus one letter.a
something.regexrx
something.somelongextension

```


