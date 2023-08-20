title: URL Better Maybe

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)(?<!\()((?:https?:\/\/)(?:[\da-z\.-]+)\.(?:[a-z\.]{2,6})(?:[\/\w\d\.\-\(\)_\/\+=\?\+&%]*?(?:[\s\)\n]|$)))
/
```

---

## Test string:

```text
- http://hibernal.bandcamp.com/
- http://www.amazon.com/2k-10k-Writing-Faster-Better-ebook/dp/B009NKXAWS/ref=sr_1_1?ie=UTF8&qid=1415667518&sr=8-1&keywords=2k+to+10k
- https://www.facebook.com/hibernalband
- http://wordcounterapp.com/
- http://markrhealy.com/
- http://agilepartners.com/apps/tabtoolkit/
- http://nothalfbad.bandcamp.com/
- https://itunes.apple.com/us/app/steadytune/id670915697?mt=12&ign-mpt=uo%3D4
- [test](http://bandcamp.com/)
- https://itunes.apple.com/us/app/id325946571
- https://itunes.apple.com/au/app/guitartoolkit/id284962368?mt=8


```


