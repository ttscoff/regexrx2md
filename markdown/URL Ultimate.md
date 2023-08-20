title: URL Ultimate

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)((http|https):\/\/)?([\w\-_]+(\.[\w\-_]+)+)([\w\-\.,@?^=%&amp;:/~\+#]*[\w\-\@^=%&amp;/~\+#])?/
```

---

## Test string:

```text
http://snipplr.com/view/2371/regex-regular-expression-to-match-a-url/

<http://linkbun.ch/api.php?PHPSESSID=5a5de3bb47bd30865b64478376160e00>
https://p2.secure.webhosting.yahoo.com/pkg/wordpress/index.php?ssc=us1
https://www.paypal.com/us/cgi-bin/webscr?cmd=_account&nav=0
http://www.google.com/support/a/bin/answer.py?answer=37673 
http://www.google.com/search?client=safari&rls=en&q=share+multiple+links&ie=UTF-8&oe=UTF-8

fetching.io

http://en.wikipedia.org/wiki/Ed_Roberts_(computer_engineer)

www.google.com/support/a/bin/answer.py?answer=37673

http://postable.weblogzinc.com/?blog=tuaw-we, http://postable.weblogzinc.com/?blog=tuaw-we
http://postable.weblogzinc.com/?blog=tuaw-we.

~@emmaboulton Talk to (http://www.premiumcollections.co.uk). They were good in getting me a result with one wanker who took the piss.

brettterpstra.com/projects/doing/&something_else=1#hello

Blog Post: Allan Haley Interviewed at Web 2.0 Expo <span class="caps">SF</span> 2010 About Web Fonts http://blog.fonts.com/?p=563 blog.fonts.com/?p=563

Today's 9:30 Coffee Break: False Beginnings. More on the Blog - http://minnesota.publicradio.org/collections/special/columns/music_blog/archive/2010/05/monday_coffee_b_31.shtml

Review: iHome+Sleep for iPhone http://www.pheedcontent.com/click.phdo?i=24518775cad8deb8f509fd82f53afe9a&utm_source=mactweets&utm_medium=twitter

Nintendo: Apple is 'enemy of the future' http://www.tuaw.com/2010/05/10/nintendo-apple-is-enemy-of-the-future/ [post]
```


