title: Untitled

## Flags

> Flags: `(?is-Um)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * i: Case insensitive
> * s: Dot matches newline

## Regular Expression Search

```ruby
/(?is-Um)^([`~]{3,})(\s*?(\S+))?\s*?[\n\r](.*?)[\n\r](?:[`~]{3,})(\{\.?(.+?)\})?\s*?$/
```

---

## Test string:

```text
1. Either use one chapter per file, or one section per file.
2. Never let a section span multiple files.

~~~~~~~   	applescript
this is some code
	it should be wrapped with pre/code or indented
	probably indented
	and only with a pref option and no custom processor
end code
~~~~~~~~

and some more

~~~~~~~~~~~~
    <p>Hello World!</p>
~~~~~~~~~~~~{.html}


These two guidelines mean that your sample book is a lot less likely to have problems.  If you don't follow them, things can still work, but you can sometimes create a situation where your book will be created fine but your sample book will not.  Basically, when we create a book or a sample book, we stick all the content in all the included files together.  If you do things like include a section (sections start with ##) but not the chapter that contains it (chapters start with #) your book will look a bit funny.

So, if you use the "one chapter per file" approach, things will just work.  If you use the "one section per file" approach, make sure you include the first section in every chapter.

```


