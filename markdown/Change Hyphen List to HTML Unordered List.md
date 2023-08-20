title: Change Hyphen List to HTML Unordered List

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)^-\x20(.*)$/
```

## Replace

```ruby
"<li>$1</li>\"
```

---

## Test string:

```text
[Each line of the following list starts with a hyphen and space. This pattern converts that into an HTML unordered list.]

- Search and Replace modes.
- Color-coded tokens in both the "search" and "replace" patterns.
- Live matching against source text. Live replace too, where applicable.
- Insert menus with almost every acceptable token and a description of what they do, including constructs for various groupings, conditionals, lookarounds, and POSIX expressions.
- A "Match List" that shows all matches, with subexpressions, and represents invisible characters like a space or return with their token equivalents ("\s" or "\r").
- Stats on both the source text and replaced text so you can tell exactly where you are and what characters are represented at all times. Helps avoid errors caused by invisible characters.
- Linked scrolling among the source text, the replaced text and the Match List.
- Save regular expressions in documents for reuse.
- Open as many windows as desired.
- Multiple levels of undo.
- Link your sample source text to a file for easy reloading.
- Support for free-spacing mode.
- Full Unicode support, including a chart of all UTF-8 characters.
- A fluid interface that lets you resize each panel freely.
- Copy the find and replace patterns in ready-to-paste code for Perl, PHP, Ruby, AppleScript and REALbasic.
```


