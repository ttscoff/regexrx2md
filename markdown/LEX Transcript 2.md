title: LEX Transcript 2

## Flags

> Flags: `(?is-Um)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * i: Case insensitive
> * s: Dot matches newline

## Regular Expression Search

```ruby
/(?is-Um)(\*\*Q:\*\*.*?)(\s*)(\*\*A:.*?)(\s*)(?=\*\*Q:)/
```

## Replace

```ruby
"#CODEInstrument Coding\\Q\\\
$1\
#ENDCODE\
$2\
#CODEInstrument Coding\\A\\\
$3\
#ENDCODE\
$4\"
```

---

## Test string:

```text
**Q:** \[00:00:22\] So, you feel supported?

**A:** \[00:00:24\] Yes, extremely.

Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

**Q:** \[00:00:25\] Are there any relationships that you need distance from?

**A:** \[00:00:29\] None at this time.

**Q:** \[00:00:30\] What\'s one of your favorite childhood memories, or from any time in your life?

```


