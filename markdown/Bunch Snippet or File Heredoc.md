title: Bunch Snippet or File Heredoc

## Flags

> Flags: `(?is-Um)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * i: Case insensitive
> * s: Dot matches newline

## Regular Expression Search

```ruby
/(?is-Um)(?<=\n|\A)(\S[\w _]*= *|[$*] *)< *(?=< *#|[^<])(.*?)(?=\n[^-]|\Z)/
```

---

## Test string:

```text
var1 = <snippet.txt.  
- var=one

var2 = <<#YES

var2 = <<NOPE

var 3 =< snippet.txt#frag

var2 = <<#embed

if this
    var 2 = <snippet.txt
end

$ <scriptsnippet.txt
* < Script Snippet.txt#frag

$ <<#Frag

if this
    * <<#Other Frag
end
```


