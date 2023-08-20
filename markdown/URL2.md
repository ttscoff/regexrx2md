title: URL2

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w&\?=.-]*)*\/?/
```

---

## Test string:

```text
(http://snippets.dzone.com/posts/show/59)
http://snipplr.com/view/19502/validate-a-url/
[http://brettterpstra.com/wp-admin/edit-comments.php?spammed=1&ids=134]
http://postable.weblogzinc.com/?blog=tuaw-we http://postable.weblogzinc.com/?blog=tuaw-we http://postable.weblogzinc.com/?blog=tuaw-we
```


