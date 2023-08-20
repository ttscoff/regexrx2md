title: MMD tables and captions

## Flags

> Flags: `(?is-Um)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * i: Case insensitive
> * s: Dot matches newline

## Regular Expression Search

```ruby
/(?is-Um)(?<caption>\[.*?\])\n(?<table>\|.*?\|(?:\n|$))+/
```

---

## Test string:

```text
[caption]
| Syntax      | Description | Test Text     |
| :---        |    :----:   |          ---: |
| Header      | Title       | Here's this   |
| Paragraph   | Text        | And more      |

Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

[caption]
| Syntax      | Description | Test Text     |
| :---        |    :----:   |          ---: |
| Header      | Title       | Here's this   |
| Paragraph   | Text        | And more      |
```


