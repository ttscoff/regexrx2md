title: mmd headers

## Flags

> Flags: `(?ims-U)`

> * -U: Greedy
> * i: Case insensitive
> * m: Treat target as one line
> * s: Dot matches newline

## Regular Expression Search

```ruby
/(?ims-U)^([\S ]+:.*?)+(?=\n\n)/
```

---

## Test string:

```text
Title:	Multimarkdown Composer Style Testing
Title:	Multimarkdown Composer Style Testing
Title:	Multimarkdown Composer Style Testing
    asgagg=
Title:	Multimarkdown Composer Style Testing

Title:	Multimarkdown Composer Style Testing


# MultiMarkdown themes #

Synth craft beer aesthetic, **Some bold text** VHS tattooed 3 [wolf moon](http://brettterpstra.com) raw denim wes anderson gentrify.  Cardigan lo-fi craft beer helvetica, twee 3 wolf moon keytar mcsweeney's letterpress.  Biodiesel ethical fap tattooed craft beer, quinoa `pitchfork aesthetic`.  Mustache terry richardson bicycle rights, viral *Some italics text* trust fund organic sustainable. 

## Second headline [links] ##

PBR wayfarers williamsburg next level, VHS leggings cred fap gluten-free four loko tofu.  [Shoreditch helvetica](http://inlinereference.com) viral vice, brooklyn fap butcher blog whatever terry richardson mcsweeney's tattooed 3 wolf moon gentrify.  <http://selflink.com> Gluten-free cosby sweater fap terry richardson wolf VHS.  Trust fund gentrify [fanny pack][ref1] lomo lo-fi Tattooed farm-to-table gentrify, keytar banh mi brooklyn [cred mcsweeney's organic][ref2] wes anderson seitan irony.  Send email to <auto@emaillink.com>.

[ref1]: http://reference1.com
[ref2]: http://reference2.com

### Third headline [table] ###

**Selected text block:** Cliche portland whatever trust fund, 8-bit lomo letterpress beard etsy pitchfork mcsweeney's helvetica wolf.  Aesthetic vegan high life, cliche fanny pack gluten-free tattooed fixie.  Stumptown portland banh mi freegan.  Banksy fanny pack cosby sweater fixie butcher retro you probably haven't heard of them.  Farm-to-table echo park four loko mustache, PBR cliche mcsweeney's.  Blog terry richardson skateboard jean shorts retro, carles trust fund.  Cred thundercats quinoa etsy high life.

| Table 	| Test	|
|-------	|-----	|
| Column 1 data 	| Column 2 data	|
Column 1 data 2 	| Column 2 data 2

#### Fourth Headline [extras] ####

Tattooed before `inline code` out keffiyeh wes anderson.  Blog cardigan etsy, fanny pack 3 wolf moon irony mustache keffiyeh quinoa fap.  Austin wayfarers etsy put a bird on it before they sold out fixie.  Readymade VHS PBR [tattooed][^fn1] brunch +1.  Stumptown marfa iphone, organic leggings aesthetic scenester artisan.

	Verbatim section
	Also known as code

> This is a blockquote Art party messenger bag Austin, jean shorts stumptown sartorial next level artisan biodiesel shoreditch DIY.  Before they sold out mixtape cosby sweater, photo booth quinoa etsy messenger bag Austin williamsburg.


##### Fifth #####

###### Sixth ######

[^fn1]: Footnote test

```


