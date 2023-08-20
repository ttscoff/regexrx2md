title: Strip Trailing Whitespace

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)[\x20\t]+$/
```

## Replace

```ruby
"\"
```

---

## Test string:

```text
Each of these lines ends with some white space. This one ends with a space. 

This one ends with a tab.	

This one ends with some spaces.    

This one ends with some tabs.			

This one ends with a mixture of spaces and tabs.  		  

Since the pattern only matches trailing whitespace, we can replace it with nothing to get the result we want.
```


