title: Level 2 Markdown headers

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)^##(?!#)\s*(.*?)(\s*#+)?$/
```

---

## Test string:

```text
Covers multiple formats of ATX Header

Flexibility is key.

{{toc}}

## Gear Menu ## [gearmenu]

![][4]

   [4]: images/gearmenu.jpg

The Gear menu provides most of the features found in the menubar, plus some preview-specific functions. Just click the gear in the lower right of the window to access these functions.

## Keep on Top

![][5]

   [5]: images/KeepOnTopPin.jpg

The lock icon in the lower left will bring the Preview window to the front and keep it there (float it) when switching to other applications. You can set a transparency on the window in the {% prefspane General %} which will allow the window to fade when using other applications.

This feature can also be toggled with {% kbd {{shift}}{{cmd}}F %}.

## Window level defaults

In the {% prefspane General %} you can use "Keep new windows on top" to set new windows to always remain above other windows, and/or set windows to rise to the top when their associated document is updated. Windows set to rise on update will not "steal focus" from your editor, they will only rise to be visible without becoming active.

## View Source

![][6]

   [6]: images/view_source.jpg

You can switch between preview and source code views with the button in the upper right corner. This view can also be toggled with U.

## Search

![][7]

   [7]: images/SearchBarFull.jpg

The find bar can be accessed with {% kbd {{cmd}}F %} and allows you to search through the preview for a word or phrase. Once you search, you can use {% kbd {{cmd}}G %} and {% kbd {{shift}}{{cmd}}G %} to navigate forward and backward through additional results.

The checkboxes on the right side of the search bar allow you to narrow the search down by case sensitivity, whole words only and regular expressions. In addition to regular expression search, wildcard (*?) searches always work, even when the regex option is off.

You can also surround a search term or phrase with slashes to interpret it as a regular expression automatically (e.g. '/term.+?\b/').


Use the search feature in combination with bookmarking to save locations as you find them. Press Tab ({% kbd ⇥ %}) to focus the document, then type Shift-[1-9] to set a bookmark on that number. You can jump back to the bookmark by just typing the number (without the Shift key), or by using n/p to navigate through them in document order. N/P will navigate in numeric order. See the [Preview Navigation](Keyboard_Shortcuts.html#previewnavigation) section for more options, or type "?" any time in the Preview.

> **Note:** The search cannot wrap between elements, meaning that a search string cannot continue between a paragraph and a headline, across list items, etc. It also means that links and existing highlight elements will break the search string. You can search _within_ those elements, but if a link or highlight starts in the middle of a search string match, it will not be highlighted.

You can toggle the "Whole words," "Case sensitive," and "Regex" checkboxes using {% kbd {{ctrl}}{{shift}}1 %}, {% kbd 2 %} and {% kbd 3 %}, respectively.

### Advanced search ###

You can use wildcards in a non-regex search. `*` will match any series of non-space characters and `?` will match any single character.

Starting a search with a `*` will make it a jQuery selector search. You can use any jQuery selector and all matching elements will be highlighted and navigable with {% kbd {{cmd}}G %} and {% kbd {{shift}}{{cmd}}G %}. To limit the scope of a text search to a certain element type, add the search terms in double quotes after the selector definition:
        
    *h2 "Alice"

This is the equivalent of `*h2:contains(Alice)`

## Table of Contents

![][8]

   [8]: images/tableofcontentsbutton.jpg

If your document has headers in it, a list button will appear in the toolbar. Clicking this button will expand the Table of Contents, and clicking the title of a header will navigate to that section of the preview. Use "j"/"k" (down/up) to navigate the list from the keyboard, and Enter or "o" to jump to the highlighted header. 

Hit the Spacebar to open the type-ahead navigation field. Type any part of the name (uses TextMate-style matching so you can, for example, just type the first letters of each word) and press Tab ({% kbd ⇥ %}) or the Down Arrow ({% kbd ↓ %}) to navigate the filtered list.

Pressing the {% kbd f %} key while previewing a document will activate "fast navigation" mode, which opens the Table of Contents with the filter field open and ready for you to type. Just enter any part of a headline's title and the list will filter down to matching headlines. If the list gets down to a single headline, pressing Return ({% kbd ↩ %}) will jump to that headline automatically. To select from multiple remaining headlines, use the down arrow key or the tab key to leave the filter box, and then j/k or up/down to select the desired headline. "o" or Return will jump to it and close the Table of Contents.

If ["Headlines Collapse Sections"](#collapsibleheadlines) is enabled in the {% prefspane General %}, holding the Command key while clicking an item in the Table of Contents will collapse or expand that section, revealing parent sections as necessary.

For a list of available shortcuts, see the [Keyboard Shortcuts](Keyboard_Shortcuts.html#TableofContentsNavigation) section.

See the [Document Navigation video on YouTube](https://www.youtube.com/watch?v=Z2p5BvBpbmA&list=PLNoOPRHOBV0ptk_ka386xltm3VyVw6QgZ&index=2) for more details.

### Full-screen mode for Table of Contents

When switching a Marked preview window to Full Screen mode, the Table of Contents will move to the left side of the screen and can be left permanently to allow fixed navigation. It can still be toggled with {% kbd {{cmd}}T %}, but clicking a link or outside of the TOC will not hide it.

This mode can be triggered when not in full screen mode by clicking the small icon at the bottom of the popup TOC. You can also force it back to the normal mode by clicking the icon at the top of the full screen TOC.

### Customizing the Table of Contents

The Table of Contents may be placed manually in the document using the [special syntax](Special_Syntax.html#tocplacement) `<!--TOC-->` anywhere in the text.

You can also set a maximum depth by adding `max#` to the TOC tag. For example, to only display the first and second header levels, use `<!--TOC max2-->`.

## Fast Switcher

Type "F" in the preview to open the Table of Contents directly to the filter field. You can then start typing the text of any header and filter down to the correct one. If there is only one item shown in the menu after filtering, pressing Return ({% kbd ↩ %}) will go directly to it. To select from multiple results, press Tab ({% kbd ⇥ %}) to exit the filter field and use {% kbd j %}/{% kbd k %} or {% kbd ↓ %}/{% kbd ↑ %} arrows to navigate. Pressing Tab again will return you to the search field.

## Keyboard Navigation

The preview window can be navigated quickly using keyboard shortcuts. Use {% kbd j %} and {% kbd k %} to move up and down, and hold down Shift ({% kbd J %}/{% kbd K %}) to move faster. {% kbd t %} and {% kbd b %} will move to the top and bottom of the document (as will {% kbd gg %} and {% kbd G %}, for Vim fans). {% kbd u %} and {% kbd d %} will move 1/2 page up and down.

### Header jumping

Pressing the comma ({% kbd , %}) and period ({% kbd . %}) keys will jump backward and forward through any headers in the document. Holding down Shift ({% kbd {{shift}} %} will jump only between level 1 and 2 headers.

### Bookmarks

Set bookmarks on scroll position using {% kbd {{shift}}1-9 %}, and jump back to them using just the number of the bookmark {% kbd 1-9 %}. You can also use {% kbd n %} and {% kbd p %} to move through them in their position order. {% kbd N %} and {% kbd P %} (holding Shift) will move through them in numeric order.

Changing the Style or adjusting the page size will affect the bookmark location. These are meant to be temporary markers when reviewing a document and do not persist between document sessions. They _will_ persist through refreshes and document changes, though.

You can bookmark a headline instead of a scroll position by using Option ({% kbd {{opt}} %}) instead of Shift. Typing {% kbd {{opt}}1-9 %} will add a bookmark for the header closest to the top of the page, or the last one before the top of the page.

Typing {% kbd {{cmd}}D %} will add a bookmark in the next available position. (For vim users, you can use {% kbd \`\` %}.)

Press {% kbd 0 %} to expand the bookmarks, showing any applicable header titles and making them easier to click. If the Mini Map (see below) is enabled, this will display at the same time. Press Escape or {% kbd 0 %} to shrink the bookmark panel back to its compact state.

Press {% kbd xx %} ("x" twice) to clear all bookmarks.

There are [additional shortcuts available](Keyboard_Shortcuts.html). Press the {% kbd h %} key at any time and a list of shortcuts will be shown. Use {% kbd {{opt}}{{cmd}}K %} (or the {% appmenu Help %} menu) to open a floating reference of all of Marked's keyboard shortcuts.


## Mini Map

If the Mini Map is enabled in the {% prefspane Preview %}, you can press {% kbd 0 %} to open the Mini Map while viewing your document. It will present your entire document scaled to the height of your screen, and clicking anywhere on the Mini Map will jump to that point in the full-size document. Any bookmarks set will be displayed as horizontal lines on the map, with number and header labels (if applicable). 

Holding down the Command ({% kbd {{cmd}} %}) key while moving the mouse over the Mini Map will enable a magnifier, allowing you to better read the sections you're jumping to. Holding down the Option ({% kbd {{opt}} %}) key and moving the mouse over the Mini Map will scroll as if you're dragging the scrollbar.

The Mini Map will regenerate when your window changes size, offering you an accurate preview of your document as line breaks and paragraph lengths change.

Press {% kbd 0 %} or Escape to close the Mini Map.

**Performance note:** On very long documents, the preview will freeze momentarily as new Mini Maps are generated. This only happens after a refresh or window size change and only if the map is showing. Marked will automatically detect longer documents and not generate the initial Mini Map until it's requested (by pressing {% kbd 0 %}), so if you don't need it at all, you won't experience any pauses.

## Full-Screen 

Full-screen mode can be toggled from the Preview menu or by typing {% kbd {{ctrl}}{{cmd}}F %}.

## Clicking external links

![][10]

[10]: images/linkpopover.png

Clicking an external link in your document's preview will open it in your default browser. If you click and hold, when you release Marked will give you three options: you can copy the link's URL to your clipboard, validate the link, or open the link in your default browser. Just click anywhere in your preview to dismiss the window. This feature can be disabled in the {% prefspane Preview %} ("Enable link popovers").

See an [overview video on YouTube](https://www.youtube.com/watch?v=nrt7YZPrnv0&list=PLNoOPRHOBV0ptk_ka386xltm3VyVw6QgZ&index=1).

{% comment %}
## Scroll progress indicator ##

![][progress]

[progress]: images/documentprogress.png

If enabled, a thin bar across the top of the window will show you your scroll progress in the document. This is especially handy when jumping around the document using the Table of Contents, search or bookmarks on Mountain Lion or higher where you can't see the scroll bar on the right. The indicator will not show up in printed or exported documents.
{% endcomment %}

## Collapsible headlines ##

When "Headlines collapse sections" is enabled in the {% prefspane Preview %}, clicking headlines will collapse the section between that headline and the next headline at the same level. Sub-sections within that section are hidden. Optionally, you can limit this behavior to {{cmd}}-clicking.

![][13]

[13]: images/headlines.jpg

Holding down {% kbd {{opt}} %} when clicking (or {% kbd {{cmd}} %}-clicking) will expand/collapse all of the child sections below the clicked heading. Holding down the {% kbd {{shift}} %} (Shift) key while clicking will collapse all other sections at the same level, revealing only the clicked section.

Collapsed sections are marked with a yellow highlight to the right of the title, and the cursor will indicate what will happen when the item is clicked.

If an edit is made that needs to be visible, or a table of contents section is clicked that is currently within a collapsed section, the necessary parent sections will be expanded to reveal it.

You can collapse/expand all of the sections in a document at once with the "Collapse all sections" ({% kbd {{opt}}{{cmd}}{{left}} %}) and "Expand all sections" ({% kbd {{opt}}{{cmd}}{{right}} %}).

See the [Document Navigation video on YouTube](https://www.youtube.com/watch?v=Z2p5BvBpbmA&list=PLNoOPRHOBV0ptk_ka386xltm3VyVw6QgZ&index=2) for more details.

## Custom Processor indicators/toggles ##

![][indicators]

[indicators]: images/processorindicators.png

When the custom processor and/or preprocessor are enabled, indicator lights appear in the toolbar. These can be used to see whether or not the processor is turned on for the current document (indicator will be highlighted) and clicking them will toggle the use of the custom preprocessor and processor, respectively.

## Scroll To Edit

The "scroll to edit" feature in Marked keeps track of differences between the latest update and the last, trying to find the point where you made your most recent changes. Marked always tracks this, and a small red line appears in the preview to show you the location of the first change detected. In the {% prefspane Preview %}, you can turn on "Scroll to first edit" and when a preview updates it will gently scroll the view to that location.

With "Scroll to first edit" turned off, you can still press the "e" key at any time in the preview to go to the last stored edit point.

## Autoscroll

For reading or (proofreading), you can take an automated stroll through your document.

Trigger autoscroll by pressing {% kbd s %}. This will begin scrolling forward through the document at the default speed. 

An indicator at the bottom left will show you the current speed. The speed can be adjusted with the up and down arrows, and {% kbd {{shift}}{{up}}/{{down}} %} will speed it up and slow it down in larger increments.

{% kbd Space %} will pause and play as you scroll.

Pressing {% kbd S %} (Shift-s) while scrolling will reverse the scroll direction.

Press {% kbd s %} again (or hit {% kbd Escape %}) to end autoscroll mode.


## Zoom Overview

Type {% kbd z %} while in the preview to zoom out the text to an overview. This also works in the Word Repetition Visualization ({% kbd {{ctrl}}{{cmd}}w %}) as a way to rapidly view the concentrations of highlighted words in the document. Pressing {% kbd z %} again will zoom out at the current scroll location, so it also works as a means for navigating the document.

## Markdown Reference

![][11]

   [11]: images/markdown_reference.jpg

Select Markdown Reference from the {% appmenu Help %} menu to display a guide that floats over your other windows. This is handy for those who are still learning Markdown's syntax. You can open this panel via the keyboard using {% kbd {{opt}}{{cmd}}M %}.

## Global Keyboard Shortcuts

In the {% prefspane General %}, you can designate a custom keyboard shortcut for activating Marked, and one for raising just the front window to the top without leaving your editor.

```


