title: Multiple Criteria Using Lookahead

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)(?=\b\w{10,}\b)\b\w*list\w*\b/
```

---

## Test string:

```text
[This pattern looks for words with 10 letters or more containing the word "list".

Using a positive lookahead to make sure we are only considering words of at least 10 letters, we can effectively combine two different patterns. The lookahead makes sure that the upcoming word is at least 10 letters, then the match ensures that the word contains "list".]

aerialist
aerialists
agriculturalist
agriculturalists
alist
anecdotalist
anecdotalists
animalistic
annalist
annalistic
annalists
blacklist
blacklisted
blacklister
blacklisters
blacklisting
blacklists
blister
blistered
blistering
blisteringly
blisters
blistery
braillist
braillists
listed
listee
listees
listel
listels
listen
listenable
listened
listener
listeners
listenership
listenerships
listening
listens
```


