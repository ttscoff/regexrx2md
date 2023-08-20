title: Strip Leading Whitespace

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)^[\t\x20]+/
```

## Replace

```ruby
"\"
```

---

## Test string:

```text
 Each of these lines starts with some white space. This one starts with a simple space.

	This one starts with a tab.

    This one starts with some spaces.

		This one starts with some tabs.

  	  	This one starts and ends with a mixture of tabs and spaces.

Since the pattern only matches leading whitespace, we can replace it with nothing to get the result we want.
```


