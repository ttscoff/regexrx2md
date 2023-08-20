title: URL2 GA

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)((?:https?:\/\/)?(?:[\da-z\.-]+)\.(?:[a-z\.]{2,6})(?:[\/\w=.#\-\+%?&]*?)\/?)(?:#[^&?#\n\s\r!,\)\]>"]+)?([?&]utm_[scm]\S+=[^&?#\n\s\r!,\)\]>"]+)+(#[^&?#\n\s\r!,\)\]>"]+)?/
```

## Replace

```ruby
"$1$3\"
```

---

## Test string:

```text
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud <a href="brettterpstra.com/projects/doing/?utm_content=bufferdcf7e&utm_medium=social&something_else=1&utm_source=twitter.com&utm_campaign=buffer#hello">exercitation ullamco laboris</a> nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

brettterpstra.com/projects/doing/?utm_content=bufferdcf7e&utm_medium=social&something_else=1&utm_source=twitter.com&utm_campaign=buffer#hello



(http://snippets.dzone.com/posts/show/59)
http://snipplr.com/view/19502/validate-a-url/
[http://brettterpstra.com/wp-admin/edit-comments.php?spammed=1&ids=134]
http://postable.weblogzinc.com/?blog=tuaw-we http://postable.weblogzinc.com/?blog=tuaw-we http://postable.weblogzinc.com/?blog=tuaw-we

http://snipplr.com/view/2371/regex-regular-expression-to-match-a-url/

<http://linkbun.ch/api.php?PHPSESSID=5a5de3bb47bd30865b64478376160e00>
https://p2.secure.webhosting.yahoo.com/pkg/wordpress/index.php?ssc=us1
https://www.paypal.com/us/cgi-bin/webscr?cmd=_account&nav=0
http://www.google.com/support/a/bin/answer.py?answer=37673 
http://www.google.com/search?client=safari&rls=en&q=share+multiple+links&ie=UTF-8&oe=UTF-8

http://en.wikipedia.org/wiki/Ed_Roberts_(computer_engineer)

www.google.com/support/a/bin/answer.py?answer=37673

http://postable.weblogzinc.com/?blog=tuaw-we, http://postable.weblogzinc.com/?blog=tuaw-we
http://postable.weblogzinc.com/?blog=tuaw-we.

~@emmaboulton Talk to (http://www.premiumcollections.co.uk). They were good in getting me a result with one wanker who took the piss.

brettterpstra.com/projects/doing/&something_else=1#hello

Blog Post: Allan Haley Interviewed at Web 2.0 Expo <span class="caps">SF</span> 2010 About Web Fonts http://blog.fonts.com/?p=563 blog.fonts.com/?p=563

Today's 9:30 Coffee Break: False Beginnings. More on the Blog - http://minnesota.publicradio.org/collections/special/columns/music_blog/archive/2010/05/monday_coffee_b_31.shtml

Review: iHome+Sleep for iPhone http://www.pheedcontent.com/click.phdo#20?i=24518775cad8deb8f509fd82f53afe9a&utm_source=mactweets&utm_medium=twitter#300

Nintendo: Apple is 'enemy of the future' http://www.tuaw.com/2010/05/10/nintendo-apple-is-enemy-of-the-future/ [post]
```


