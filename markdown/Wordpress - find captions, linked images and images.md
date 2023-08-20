title: Wordpress - find captions, linked images and images

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)(<div.+?(?=class)class=".*?(?=wp-caption)wp-caption.*?(?=\/div)\/div>|(<a href[^>]+?.)?<img[^>]+.(<\/a>)?)/
```

---

## Test string:

```text
<div id="post-1071-clip"><div id="attachment_1072" class="wp-caption alignleft" style="width: 160px"><a href="http://cdn.brettterpstra.com/wp-content/uploads/2010/10/PromptDownEditScreen.jpg" rel="lightbox[1071]"><img src="http://cdn.brettterpstra.com/wp-content/uploads/2010/10/PromptDownEditScreen-150x150.jpg" alt="PromptDown Edit Screen" title="PromptDown Edit Screen" width="150" height="150" class="size-thumbnail wp-image-1072" /></a><p class="wp-caption-text">PromptDown Edit Screen</p></div><div id="attachment_1074" class="wp-caption alignleft" style="width: 160px"><a href="http://cdn.brettterpstra.com/wp-content/uploads/2010/10/PromptDownPromptScreen.jpg" rel="lightbox[1071]"><img src="http://cdn.brettterpstra.com/wp-content/uploads/2010/10/PromptDownPromptScreen-150x150.jpg" alt="PromptDown Prompt Screen" title="PromptDown Prompt Screen" width="150" height="150" class="size-thumbnail wp-image-1074" /></a><p class="wp-caption-text">PromptDown Prompt Screen</p></div><p>Here's my stupid trick of the day: a Markdown teleprompter called <a href="http://brettterpstra.com/share/promptdown/">PromptDown</a> (I see what you did there...). The idea was to create a teleprompter for recording screencast voiceovers that was cheap, fast and worked on plain text. I wanted to provide a non-WYSIWYG form field for typing or pasting which still preserved paragraph breaks, so <a href="http://daringfireball.net/projects/markdown/syntax">Markdown</a><a href="http://cdn.brettterpstra.com/wp-content/uploads/2010/10/PromptDownPromptScreen.jpg" rel="lightbox[1071]"><img src="http://cdn.brettterpstra.com/wp-content/uploads/2010/10/PromptDownPromptScreen-150x150.jpg" alt="PromptDown Prompt Screen" title="PromptDown Prompt Screen" width="150" height="150" class="size-thumbnail wp-image-1074" /></a>

<img src="http://cdn.brettterpstra.com/wp-content/uploads/2010/10/PromptDownPromptScreen-150x150.jpg" alt="PromptDown Prompt Screen" title="PromptDown Prompt Screen" width="150" height="150" class="size-thumbnail wp-image-1074" /><div id="attachment_1074" class="wp-caption alignleft" style="width: 160px"><img src="http://cdn.brettterpstra.com/wp-content/uploads/2010/10/PromptDownPromptScreen-150x150.jpg" alt="PromptDown Prompt Screen" title="PromptDown Prompt Screen" width="150" height="150" class="size-thumbnail wp-image-1074" /><p class="wp-caption-text">PromptDown Prompt Screen</p></div>

<a href="http://cdn.brettterpstra.com/wp-content/uploads/2010/10/PromptDownPromptScreen.jpg"><img src="http://cdn.brettterpstra.com/wp-content/uploads/2010/10/PromptDownPromptScreen-150x150.jpg" alt="PromptDown Prompt Screen" title="PromptDown Prompt Screen" width="150" height="150" class="size-thumbnail wp-image-1074" /></a><p class="wp-caption-text">PromptDown Prompt Screen</p></div>
```


