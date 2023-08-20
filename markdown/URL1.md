title: URL1

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)(https?:\/\/([-\w\.]+)+(:\d+)?(\/([\w\/\-_\.]*(\?\S+)?)?)?)/
```

---

## Test string:

```text
http://snipplr.com/view/2371/regex-regular-expression-to-match-a-url/
http://linkbun.ch/api.php?PHPSESSID=5a5de3bb47bd30865b64478376160e00
https://p2.secure.webhosting.yahoo.com/pkg/wordpress/index.php?ssc=us1
https://www.paypal.com/us/cgi-bin/webscr?cmd=_account&nav=0
http://www.google.com/support/a/bin/answer.py?answer=37673 
http://www.google.com/search?client=safari&rls=en&q=share+multiple+links&ie=UTF-8&oe=UTF-8
```


