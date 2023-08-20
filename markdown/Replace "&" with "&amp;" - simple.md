title: Replace "&" with "&amp;" - simple

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)&(?!#0*\d{2,4};)(?!#x0*[[:xdigit:]]{2,4};)(?![a-z]{2,6};)(?!(?:frac1|frac3|sup1|sup2|sup3|there4|alefsym|epsilon|omicron|thetasym|upsilon);)/
```

## Replace

```ruby
"&amp;\"
```

---

## Test string:

```text
When creating a web page, certain symbols should be replaced by a code equivalent, and one of the most common of these is the ampersand ("&"). However, this can be tricky since the code replacements start with an ampersand too, so we have to make sure that only true, standalone, not-part-of-any-other-codes ampersands get replaced.

This pattern attempts to identify the candidates by ignoring those that have either a "#" followed by a number and ";", OR "#x" followed by a hexadecimal number and ";", OR some letters followed by ";". There are special cases where there are numbers within the text representation of the codes so those are listed separately. Text representation of 7 letters or more are listed separately as well.

Another way to do this would be to create a complete list of all known text representations. While this should be good enough in most cases, the other method is provided in another sample.

Note that the numerical representations can be 2 to 4 digits, excluding leading 0's. Text representations can be from 2 letters ("lt", for example) through 6 letters (agrave). Case is not considered.

These match:

&
&&
&#
&#word;
&#55 ;
&sp ace;
&toolong;
&#abcd;
&#xcdefg;
&ther4;
&sup2

These would be left untouched:

&amp;
&AMP;
&lt;
&#8221;
&#x34;
&#0000000008221;
&epsilon;
&Epsilon;
&EPSILON; <- technically, this is wrong but the pattern doesn't validate the content, just form
&there4;
&sup2;

```


