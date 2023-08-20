title: Find HTML IMG Tags

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)<img\s+[^>]*src\s*=\s*((")|('))((?(2)[^"]|[^'])*)\1[^>]*>/
```

---

## Test string:

```text
The following are some embedded IMG tags. This pattern uses an IF statement to deal with the quotes properly, and puts the actual link in a subexpression.

This is one tag <IMG src = 'http://www.somewhere.com/img.png' /> and this is another (notice the embedded quote) <img src= "something'sup.com" target="_blank" />.

Here is another in a different order <img target='_blank' src ='somewhere.com/image.png' alt='3.0' />
```


