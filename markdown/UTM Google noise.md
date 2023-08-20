title: UTM Google noise

## Flags

> Flags: `(?i-ms)`

> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-ms)(?:&?utm_[scm].+=[^&\s!,\.\)\]]*?)+(?:(&.*))*$/
```

## Replace

```ruby
"$1$2\"
```

---

## Test string:

```text
http://collindonnell.com/2013/10/01/unsubscribe-rule-for-apple-mail/ some text http://www.withandrewjohnson.com/products/relax-mp3 I just need to be able to pause this thing now.

Here's [another one](http://www.goodreads.com/review/show/704218744). This one isn't shortened: http://brettterpstra.com. Neither is http://fountain.io/developers.

This one is fake/invalid: http://t.co/aagweroi2, but this is real: http://holykaw.alltop.com/5-things-to-know-before-pitching-an-idea-to-your-boss

http://mac.appstorm.net/general/competitions/win-a-copy-of-the-cheaper-by-the-dozen-mac-bundle-from-appstorm/?utm_source=buffer&utm_campaign=Buffer&utm_content=buffer75420&utm_medium=twitter&otherstuff=goforit

http://www.straitstimes.com/breaking-news/world/story/first-tiger-cub-born-london-zoo-17-years-20131002 <- Just one more.


```


