title: URLs Markdown and Bare

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)((?:\[(.*?)\])?(?:\(|: +))?((?:https?:\/\/)(?:[\da-z\.-]+)\.(?:[a-z\.]{2,6})(?:[\/\w\d\.\-\(\)_\/\+=\?\+&%]*?))(\))?([\s\n]|$)/
```

---

## Test string:

```text
SHOW NOTES:

- http://hibernal.bandcamp.com/
- http://www.amazon.com/2k-10k-Writing-Faster-Better-ebook/dp/B009NKXAWS/ref=sr_1_1?ie=UTF8&qid=1415667518&sr=8-1&keywords=2k+to+10k
- https://www.facebook.com/hibernalband
- http://wordcounterapp.com/
- http://markrhealy.com/
- http://agilepartners.com/apps/tabtoolkit/
- http://nothalfbad.bandcamp.com/
- https://itunes.apple.com/us/app/steadytune/id670915697?mt=12&ign-mpt=uo%3D4
- http://bandcamp.com/
- https://itunes.apple.com/us/app/id325946571
- https://itunes.apple.com/au/app/guitartoolkit/id284962368?mt=8

------------------------------------------------------------

# Episode 126 - Mark Healy

**Hi, I'm Brett Terpstra and this is Systematic on ESN**

> 


My guest this week is Mark Healy ...

## Block A

Topics:

- Hibernal
- http://nothalfbad.bandcamp.com/

---

### Links ###

picks:

- http://wordcounterapp.com/
- http://nothalfbad.bandcamp.com/
- [AgilePartners](http://agilepartners.com/)


- Hobbies:
	- I play guitar, I like computer games, and I love watching sports (Cricket, Rugby, NFL etc)
	- I love writing and generally being creative (everything from creating Machinima, to maps in Team Fortress 2, to Photoshop)
	- I work as a network engineer specialising in security
	- I have a wife and two kids who I love to spend time with
	- I live in Brisbane, Australia, which is a great place to live (near pristine beaches, rainforests etc)

- Topics:
	- Empowerment of Artists through Independent Publishing 
	- Having the courage to create something different
	
- My three picks would be:
	- Rachel Aaron - 2k to 10k (http://www.amazon.com/2k-10k-Writing-Faster-Better-ebook/dp/B009NKXAWS/ref=sr_1_1?ie=UTF8&qid=1415667518&sr=8-1&keywords=2k+to+10k)
	- Bandcamp (www.bandcamp.com)
	- Guitar Toolkit (https://itunes.apple.com/au/app/guitartoolkit/id284962368?mt=8)
```


