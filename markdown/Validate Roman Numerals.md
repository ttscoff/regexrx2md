title: Validate Roman Numerals

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)\b(?=[IVXLCDM]+\b)M*(?:CM|DC{0,3}|CD|C{1,3})?(?:XC|LX{0,3}|XL|X{1,3})?(?:IX|VI{0,3}|IV|I{1,3})?\b/
```

---

## Test string:

```text
This pattern validates a roman numeral.

Roman numerals follow a very simple set of rules, so creating this pattern is actually easier than you might imagine. Since roman numerals are used primarily to express years, I will review the rules in those terms.

The first lookahead ensures that the upcoming word is comprised entirely of valid roman numerals (IVXLCDM) and has at least one letter since all the subsequent groups are optional.

The first group of numerals designates the millennia (M) so we will allow an infinite number of those.

The next group designates the century so it could be 900 (CM), 800 (DCCC), etc., down to 100 (C).

The next group designates the decade so it will be 90 (XC), 80 (LXXX), etc., down to 10 (X).

The last group will designate the individual year, from 1 (I) to 10 (X).

The year 1988, for example, would be written as M (one-thousand) CM (nine-hundred) LXXX (eighty) VIII (eight) (MCMLXXXVIII).

Here are some valid patterns starting with the numbers they are meant to represent:

1 I
2 II
3 III
4 IV
5 V
6 VI
7 VII
8 VIII
9 IX
10 X
11 XI
12 XII
13 XIII
14 XIV
15 XV
16 XVI
17 XVII
18 XVIII
19 XIX
20 XX
25 XXV
30 XXX
35 XXXV
39 XXXIX
40 XL
43 XLIII
44 XLIV
45 XLV
48 XLVIII
49 XLIX
50 L
60 LX
70 LXX
80 LXXX
90 XC
99 XCIX
100 C
200 CC
300 CCC
400 CD
500 D
600 DC
621 DCXXI
809 DCCCIX
899 DCCCXCIX
900 CM
1000 M
1900 MCM
1999 MCMXCIX
2009 MMIX
2999 mmcmxcix <-- case doesn't matter

Here are some invalid patterns with the numbers they are supposed to represent:

49 IL (should be XLIX)
40 XXXX (should be XL)

These patterns are just nonsense, but they create a zero-width match because they all contain valid roman numerals. You must check the length of the match to make sure it is greater than 0:

XIXL
IILX
MMCCM
MMCMIIV

```


