title: fenced code blocks 33

## Flags

> Flags: `(?is-Um)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * i: Case insensitive
> * s: Dot matches newline

## Regular Expression Search

```ruby
/(?is-Um)^(([ \t]*)[`~]{3,})((?![\n\r]) *?(?:\{?[\.\:]? *)?([\w-\/]+) *(?:.+)?\}?)? *[\r\n](.+?)[\r\n](?:\1)(?:[\r\n][ \t]*)?(\{? *[\.\:]?(?:lang=)([\w-]+) *\}?)?/
```

---

## Test string:

```text
    ```py module
    def something
    aggewg
    ```

```


