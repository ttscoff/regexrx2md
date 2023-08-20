title: Bunch variable assignments

## Flags

> Flags: `(?is-Um)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * i: Case insensitive
> * s: Dot matches newline

## Regular Expression Search

```ruby
/(?is-Um)((?<=\n|^)(\w[ _\w]+)\s*=\s*(\?(\{(.*?)\}|\[(.*?)\])(?:\s*"(.*?)")?)|(?<=\n|^)(\w[ _\w]+)\s*=\s*\?"(.*?)"|(?<=\n|^)\w[ _\w]+\s*=\s*(.*?)(?=\n|$))/
```

---

## Test string:

```text
var one = ?[somet]

var two = ?{ 
another => thing 
} "A query"

var three = ?"A question"

var four = "one two"

var five = this


```


