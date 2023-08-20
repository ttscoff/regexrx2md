title: Squeeze Double Spaces or Tabs

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)([\x20\t])\1+/
```

## Replace

```ruby
"$1\"
```

---

## Test string:

```text
[These patterns replace multiple spaces or tabs with just a single space or tab.]

This is a sentence that is written as if on an old typewriter.  After every period, there are double-spaces.  I've also included             a lot of spaces just as a test.

	This paragraph starts with a tab.

		This one starts with double-tabs.

	 This one starts with a tab and a space. This does not fit the pattern, but if you wanted to catch those cases too, you would replace the search pattern with [ ([\x20\t])[\x20\t]+ ].

Note that "\s" is not used since that would catch double linefeeds too.
```


