title: Find Email Addresses

## Flags

> Flags: `(?ix-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive
> * x: Free spacing

## Regular Expression Search

```ruby
/(?ix-Ums) # FREE SPACING -- all whitespace is ignored

# Handle the username
\b (?<![%+_$.-]) [a-z0-9] # word boundary (the negative lookbehind makes certain that the boundary is not something that's allowable in the e-mail address, thus ensuring that the match doesn't start in the middle of an address) followed by letter/number
(?:[a-z0-9] | [%+_$.-][a-z0-9])* # (non-capturing group) zero or more letters/numbers OR certain punctuation followed by a letter/number

@ # the "@" symbol

# Handle the domain
[a-z0-9] # a letter or number must come directly after "@"
(?:[a-z0-9] | [._-][a-z0-9])* # (non-capturing group) zero or more letters/numbers OR certain punctuation followed by a letter/number
\.[a-z]{2,6}\b # the top-level doamin consists of a period followed by 2-6 letter and a word boundary
# If you want to get specific about allowed domains, comment out the line above and uncomment the line below. Be sure to fill out all of the acceptable domains.
# \.(?:com|net|org|gov|biz|info|jobs|tv|film| ... )/
```

---

## Test string:

```text
This is an imperfect pattern that will pick out likely e-mail addresses using the most common symbols, but will miss unusual addresses.

It assumes first that address will start with a letter or number that is not proceeded by one of the other acceptable symbols like "%+__$.-", e.g., a@b.com or 9a@b.com. It also assumes that those acceptable symbols can come before the "@", but never two of those in a row. Thus a_b@c.com is acceptable but not a_-b@c.com. Finally, every symbol must be followed up by a letter or number like a.b.c@d.com, but not a.@c.com.

After the "@", there must be a letter or number like "someone@27bslash6.com". After that, there can either be a letter or number, or a symbol like "._-". Again, any symbol must be followed by a letter or number, like a@b9-8.com but not a@b--9.com or a@b9-.com.

Finally, the address will end with a period followed by a top-level domain of 2-6 letters. This will include such addresses as a@b.info and a@b.museum, but not a@b.company. It does not verify the top-level domain, of course, so an address like a@b.aol.spam would get through. To counter this, replace the last part of the pattern ("\.[a-z]{2,6}\b") with a list of acceptable domains like this:

\.(?:com|net|org|gov|biz|info|jobs|tv|film| ... )

Of course, the danger is that you will miss one since there are so many now.

Note, by the way, that multiple subdomains are not a problem, like a@really.long.stinkin.domain.name.
```


