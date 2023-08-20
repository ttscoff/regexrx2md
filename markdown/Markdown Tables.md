title: Markdown Tables

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums).*?(\|.*?)+\n([|: \-]+)+\n((\s*\|?.*?\|)+.*?\n)+/
```

---

## Test string:

```text
DefaultKeyBindings.dict file (`~/Library/KeyBindings/DefaultKeyBindings.dict`) for Mac OS X, created by [Brett Terpstra][1] and based heavily on work done by [Lri][2]. Please note that these bindings won't work in all applications: TextWrangler and TextMate, for example, override these with their own settings. See Lri's [gists][3] and [website][4] for more coding madness.

**Installation:** Copy the DefaultKeyBindings.dict file to the `~/Library/KeyBindings/` directory (create `KeyBindings` if it doesn't already exist). Any open applications will need to be re-started before the key bindings will take effect -- or log out and log back in.

For more information, see my [blog post][5], check out [Macworld hints][6], an older but very relevant [article from Harvard][7] and do [a search for more information][8].

**Documentation** _(last updated 05/08/2012.)_

_Grouped items begin with the groups shortcut (if exists), followed by a subgroup (if exists) followed by the keys specified._

General Commands
| General Commands |
| ----  |
| Key |  Function |
| ^y |  replace yank: command with yankAndSelect for use with the kill ring ( defaults write -g NSTextKillRingSize -string 6) |
| ^⇧u |  uppercase word |
| ^⌥u |  lowercase word |
| ^⇧t |  titlecase word |
| ^⌥⇧u |  uppercase current paragraph |
| ^⌥t |  titlecase paragraph |
| ^w |  delete word before cursor |
| ⌥w |  select word |
| ⌥⇧s |  select entire line/paragraph |
| ⌥s |  select from beginning of paragrah to last character |
| ^⌥⇧s |  select paragraph excluding leading/trailing whitespace (same as ^$@\UF701) |
| ⌥d |  delete line/paragraph |
| ⌥y |  copy paragraph |
| ⌥x |  cut paragraph |
| ⌥p |  paste paragraph below |
| ⌥⇧p |  paste paragraph above |
| ^⇧a |  select to beginning of paragraph and copy |
| ^⇧e |  select to end of paragraph and copy |
| ⌥q |  cut to beginning of paragraph |
| ⌥k |  cut to end of paragraph |
| ⌥o |  blank line after current |
| ⌥⇧o |  blank line before current |
| ^⌘k |  move line up |
| ^⌘j |  move line down |
| ^⌘l |  indent line |
| ^⌘h |  outdent line (one tab or char) |
| ^⌘↑ |  move line up ( same commands but with arrow keys) |
| ^⌘↓ |  move line down |
| ^⌘→ |  indent line |
| ^⌘← |  outdent line (one tab or char) |
| ^⇧⌘← |  Full outdent - Deletes all leading space of line/paragraph (updated) ( Control-shift-command-left arrow) |
| ^⇧⌘→ |  Delete trailing space |
| ^⌘⇧↑ |  Delete leading and trailing whitespace for paragraph |
| ^⌘⇧↓ |  Select paragraph without leading or trailing whitespace (same as "^~s") |
| ⌘⌥⇧↑ |  modify selection up by paragraph (Command Option Shift Up) |
| ⌘⌥⇧↓ |  modify selection down by paragraph (Command Option Shift Down) |
| ^⌥⇧← |  modify selection left by word |
| ^⌥⇧→ |  modify selection right by word |
| ⌘⌥^← |  Move to first Alphanumeric character of line (new) |
| ⌘⌥← |  Move to first non-whitespace character of line (new) |
| ⌘⌥⇧← |  Select to first character of line with leading space (new) |
| ⌥⌘→ |  Move to last non-whitespace character of paragraph (new) |
| ^⌥→ |  Move to end of paragraph and delete trailing whitespace (new) |
| ⌘↩ |  TextMate Command-Return (Command Enter) |
| ⌘⇧↩ |  Insert blank line above paragraph (Command Shift Enter) |
| ⌥_ |  hyphenate next space and move to next word ( this will kill non alphanumeric symbols and punctuation, use only on _words_) |
| ⌥1 |  bookmark |
| ⌥2 |  jump to bookmark |
| ⌥⌘↩ |  Continue a list item with indentation and include the same delimiter ( Command Option Enter) |
| ⇧⇥ |  remove one tab (or character) from start of line (outdent) ( Shift Tab) |
| ⌘⌥b |  bold selection (Markdown) |
| ⌘⌥i |  italicize selection (Markdown) |
| ⌘⌥= |  increase markdown header level |
| ⌘⌥- |  decrease markdown header level |
| ^⌥↩ |  Add hard break for current line and insert newline below (new) |
| ^⌘↩ |  Break line at cursor and add Markdown hard line break (new) |
| ^< |  Make selected text into paired HTML tag. Allows attributes, only dupes first word into closing tag (caveat: overwrites your pasteboard) |
| ⌥r |  repeat character before cursor |
| ⌘⇧⌦ |  Forward delete to end of paragraph |
| ⌘⇧⌫ |  Delete to beginning of paragraph |
| ⌘⌥7 |  Right mouse click (useless, doesn't maintain cursor position) |

Commenting commands
| Commenting commands (^⌘c) |
| ----  | |
| ^⌘c |   |  / |  comment with "//" |
| ^⌘c |   |  \ |  comment with "#" |
| ^⌘c |   |  ! |  HTML commenting |
| ^⌘c |   |  * |  Css Commenting |

Multi-stroke Markdown commands
| Multi-stroke Markdown commands (^⌘w) |
| ----  | | | |
| ^⌘w |   |  ␍ |  force carriage return in text field |
| ^⌘w |   |  ⇥ |  force tab in text field |
| ^⌘w |   |  \ |  insert reference link `[selection][[cursor]]`  |
| ^⌘w |   |  \ |  insert reference `[selection]: [cursor]`  |
| ^⌘w |   |  + |  Unordered list item with |
| ^⌘w |   |  - |  Unordered list item with - |
| ^⌘w |   |  * |  Unordered list item with * |
| ^⌘w |   |  8 |  convert current numbered list item to bullet, handles indentation |
| ^⌘w |   |  1 |  convert current bullet list item to numbered |
| Headlines (removes leading whitespace after inserting hashmarks) (h) |   |   | |
| ^⌘w |  h |  1 |  # |
| ^⌘w |  h |  2 |  ## |
| ^⌘w |  h |  3 |  ### |
| ^⌘w |  h |  4 |  #### |
| ^⌘w |  h |  5 |  ##### |
| ^⌘w |  h |  6 |  ###### |
|  |   | | |
| Markdown link (l) |   |
| ^⌘w |  l |  t |  create a link for selected text, cursor between () `[selected text]([cursor])` ( links without selected text first, these can produce a mess using multiple clipboards make a text selection before you run them) |
| ^⌘w |  l |  c |  create a link for selected text, inserting clipboard as url `[[cursor]selected text](clipboard contents)`  |
|  |   | | |
| Link as image (i) |   |
| ^⌘w |  i |  t |  same as lt, but with image syntax `![selected text]([cursor])`  |
| ^⌘w |  i |  c |  same as lc, but with image syntax `![selected text](clipboard)`  |
|  |   | | |
| Reference links (:) |   |
| ^⌘w |  : |  t |  create a reference from selected text |
| ^⌘w |  : |  c |  create a reference from selected text, clipboard as url |
|  |   | | |

HTML commands
| HTML commands (^⌘e) |
| ----  |
| ^⌘e |   |  = |  ="[cursor]" |
| ^⌘e |   |  e |  entity &[cursor]; |
| ^⌘e |   |  / |  http:// |
| ^⌘e |   |  t |  Make previous word into paired HTML tag |
| HTML Links (a) |   |   | |
| ^⌘e |  a |  t |  Insert HTML link for selected text, leave cursor in the href with "http://" selected |
| ^⌘e |  a |  c |  Insert HTML link with clipboard as href |
|  |   | | |
| HTML Image (i) |   |
| ^⌘e |  i |  t |  Insert image tag, any selected text is alt text, leave cursor in src attribute |
| ^⌘e |  i |  c |  Insert image tag, clipboard as src, any selected text as alt, leave cursor at beginning of alt attribute |
|  |   | | |

Surround commands
| Surround commands (^⌘s) |
| ----  |
| ^⌘s |   |  ( |  wrap () with spaces |
| ^⌘s |   |  ) |  wrap () no spaces |
| ^⌘s |   |  \ |  wrap [] with spaces |
| ^⌘s |   |  \ |  wrap [] no spaces |
| ^⌘s |   |  { |  wrap {} with spaces |
| ^⌘s |   |  } |  wrap {} no spaces |
| ^⌘s |   |  < |  wrap <> with spaces |
| ^⌘s |   |  > |  wrap <> no spaces |
| ^⌘s |   |  ' |  wrap single quotes |
| ^⌘s |   |  ` |  wrap backticks |

This documentation is generated automatically from the comments and commands in the DefaultKeyBinding.dict file. The script `document_keybindings.rb` is free for use, but it's specifically designed for use with my formatting in the bindings plist (i.e. it's a little finicky).

[1]: http://brettterpstra.com
[2]: http://www.cs.helsinki.fi/u/lranta/keybindings/
[3]: https://gist.github.com/Lri
[4]: http://www.cs.helsinki.fi/u/lranta/
[5]: http://brettterpstra.com/keybinding-madness/
[6]: http://hints.macworld.com/article.php?story=20060317045211408
[7]: http://www.hcs.harvard.edu/%7Ejrus/site/cocoa-text.html
[8]: http://duckduckgo.com/?q=cocoa+defaultkeybindings.dict

DefaultKeyBindings.dict file (`~/Library/KeyBindings/DefaultKeyBindings.dict`) for Mac OS X, created by [Brett Terpstra][1] and based heavily on work done by [Lri][2]. Please note that these bindings won't work in all applications: TextWrangler and TextMate, for example, override these with their own settings. See Lri's [gists][3] and [website][4] for more coding madness.

**Installation:** Copy the DefaultKeyBindings.dict file to the `~/Library/KeyBindings/` directory (create `KeyBindings` if it doesn't already exist). Any open applications will need to be re-started before the key bindings will take effect -- or log out and log back in.

For more information, see my [blog post][5], check out [Macworld hints][6], an older but very relevant [article from Harvard][7] and do [a search for more information][8].

**Documentation** _(last updated 05/08/2012.)_

_Grouped items begin with the groups shortcut (if exists), followed by a subgroup (if exists) followed by the keys specified._

General Commands

Commenting commands

Multi-stroke Markdown commands

HTML commands

Surround commands

This documentation is generated automatically from the comments and commands in the DefaultKeyBinding.dict file. The script `document_keybindings.rb` is free for use, but it's specifically designed for use with my formatting in the bindings plist (i.e. it's a little finicky).

[1]: http://brettterpstra.com
[2]: http://www.cs.helsinki.fi/u/lranta/keybindings/
[3]: https://gist.github.com/Lri
[4]: http://www.cs.helsinki.fi/u/lranta/
[5]: http://brettterpstra.com/keybinding-madness/
[6]: http://hints.macworld.com/article.php?story=20060317045211408
[7]: http://www.hcs.harvard.edu/%7Ejrus/site/cocoa-text.html
[8]: http://duckduckgo.com/?q=cocoa+defaultkeybindings.dict
```


