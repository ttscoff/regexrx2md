title: Image URLS

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)https?:\/\/(?:[-\w\.\/]+)\/(([\w\.-_]+)\.(jpg|png|jpeg))/
```

---

## Test string:

```text
Gallery Small 
http://dl.dropbox.com/u/31210/work/switched_workfiles/new/2010.04.02_x/2gallery_ind.jpg

Gallery Full
http://dl.dropbox.com/u/31210/work/switched_workfiles/new/2010.04.02_x/2gallery_ind_full.jpg

Permalink
http://dl.dropbox.com/u/31210/work/switched_workfiles/new/2010.04.02_x/permalink.jpg
```


