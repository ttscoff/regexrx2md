title: Bunch Apps Scripts and Commands

## Flags

> Flags: `(?is-Um)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * i: Case insensitive
> * s: Dot matches newline

## Regular Expression Search

```ruby
/(?is-Um)^(?![-?}\]<])\S(.*?)\n(\n*-.*?$)*/
```

---

## Test string:

```text
%iTerm
%Sublime Text
%Xcode
%Tower
%Forklift

?{
	Marked => <<#Marked
	nvUltra => <<#nvUltra
	Bunch => <<#Bunch
} "Whatcha workin' on?"

<useful.snippets#Coding Spotify ?"Play Coding Music?"

	<<#Moom
```


