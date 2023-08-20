title: Validate Serial Numbers

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)\b(?:(?:[[:punct:]]|\x20+)?(?:[[:xdigit:]]|o)){21}\b/
```

---

## Test string:

```text
Suppose you were creating a serial number comprised entirely of hexadecimal numerals, but you also wanted to allow the letter "o". The reasoning is, when you give the serial number to someone, they may mistakenly enter a zero as a capital "o" and that's easy enough to reverse later on.

You can either start by replacing the "o" with a zero before validating the number, or you could validate the form first, then the content later.

This example validates the form, and we want to accept as many variations as possible to make it easy for the user. We will be using a 21-digit hexadecimal string that will be provided to the end-user like this: 1234-5678-90AB-CDEF-0123-4, but, to make it simple, we will let the user enter it with any puctuation, or no punctuation at all. We also want to pick out the code from the contents of any text.

These numbers work:

1234567890ABCDEF01234
1234567890abcdef01234
1234567890aBcdEf01234 <-- mixed case
1234:5678:0ABC:DEF0:0123:4 <-- different punctuation
1234 5678 90ab cdef 0123 4 <-- spaces instead of "-"
123 456 789 0AB CDE F012 34 <-- spaces with different grouping
1234:5678-90ABCDEF01 234 <-- mixed spaces and puctuation between numerals
1234 4567 9Oab cdef O123 4 <-- contains the letter "o"
1234  5678  90ab    cdef  0123     4 <-- contans multiple spaces
12345:67890:abcde:f01234 <-- different punctuation and grouping

These will not:

1234567890abcdef0123 <-- too short
1234567890abcdef012345 <-- too long
1234567890abcdefg0123 <-- "g" is not a hex digit
123--456 789 0AB CDE F012 34 <-- multiple punctuation

```


