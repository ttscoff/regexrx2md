title: Replace "&" with "&amp;" - complex

## Flags

> Flags: `(?-Uims)`

> * -U: Greedy
> * -i: Case sensitive
> * -m: Do not treat target as one line
> * -s: Dot does not match newline

## Regular Expression Search

```ruby
/(?-Uims)&(?!#0*\d{2,4};)(?!#x0*[[:xdigit:]]{2,4};)(?!(?:Aacute|aacute|Acirc|acirc|acute|AElig|aelig|Agrave|agrave|alefsym|Alpha|alpha|amp|and|ang|apos|Aring|aring|asymp|Atilde|atilde|Auml|auml|bdquo|Beta|beta|brvbar|bull|cap|Ccedil|ccedil|cedil|cent|Chi|chi|circ|clubs|cong|copy|crarr|cup|curren|dagger|Dagger|darr|dArr|deg|Delta|delta|diams|divide|Eacute|eacute|Ecirc|ecirc|Egrave|egrave|empty|emsp|ensp|Epsilon|epsilon|equiv|Eta|eta|ETH|eth|Euml|euml|euro|exist|fnof|forall|frac12|frac14|frac34|frasl|Gamma|gamma|ge|gt|harr|hArr|hearts|hellip|Iacute|iacute|Icirc|icirc|iexcl|Igrave|igrave|image|infin|int|Iota|iota|iquest|isin|Iuml|iuml|Kappa|kappa|Lambda|lambda|lang|laquo|larr|lArr|lceil|ldquo|le|lfloor|lowast|loz|lrm|lsaquo|lsquo|lt|macr|mdash|micro|middot|minus|Mu|mu|nabla|nbsp|ndash|ne|ni|not|notin|nsub|Ntilde|ntilde|Nu|nu|Oacute|oacute|Ocirc|ocirc|OElig|oelig|Ograve|ograve|oline|Omega|omega|Omicron|omicron|oplus|or|ordf|ordm|Oslash|oslash|Otilde|otilde|otimes|Ouml|ouml|para|part|permil|perp|Phi|phi|Pi|pi|piv|plusmn|pound|prime|Prime|prod|prop|Psi|psi|quot|radic|rang|raquo|rarr|rArr|rceil|rdquo|real|reg|rfloor|Rho|rho|rlm|rsaquo|rsquo|sbquo|Scaron|scaron|sdot|sect|shy|Sigma|sigma|sigmaf|sim|spades|sub|sube|sum|sup|sup1|sup2|sup3|supe|szlig|Tau|tau|there4|Theta|theta|thetasym|thinsp|THORN|thorn|tilde|times|trade|Uacute|uacute|uarr|uArr|Ucirc|ucirc|Ugrave|ugrave|uml|upsih|Upsilon|upsilon|Uuml|uuml|weierp|Xi|xi|Yacute|yacute|yen|yuml|Yuml|Zeta|zeta|zwj|zwnj);)/
```

## Replace

```ruby
"&amp;\"
```

---

## Test string:

```text
When creating a web page, certain symbols should be replaced by a code equivalent, and one of the most common of these is the ampersand ("&"). However, this can be tricky since the code replacements start with an ampersand too, so we have to make sure that only true, standalone, not-part-of-any-other-codes ampersands get replaced.

This pattern attempts to identify the candidates by ignoring those that have either a "#" followed by a number and ";", OR "#x" followed by a hexadecimal number and ";", OR match the known text representations.

A method that matches form and not content is provided in another sample.

Note that the numerical representations can be 2 to 4 digits, excluding leading 0's. Case is considered for the text representations.

These match:

&
&&
&#
&#word;
&#55 ;
&#abcd;
&#xcdefg;
&EPSILON;
&ther4;
&sup2

These would be left untouched:

&amp;
&lt;
&#8221;
&#x34;
&#0000000008221;
&epsilon;
&Epsilon;
&there4;
&sup2;

```


