title: HTML Comments

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)\<![ \r\n\t]*(--([^\-]|[\r\n]|-[^\-])*--[ \r\n\t]*)\>/
```

---

## Test string:

```text
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="http://brettterpstra.dev/xmlrpc.php?rsd">
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="http://brettterpstra.dev/wp-includes/wlwmanifest.xml"> 
<link rel="index" title="Brett Terpstra" href="http://brettterpstra.dev">
<link rel="start" title="Readability2 leaks&nbsp;out" href="http://brettterpstra.dev/2009/11/02/readability2-leaks-out/">
<link rel="prev" title="fk: a&nbsp;useful bash&nbsp;function" href="http://brettterpstra.dev/2009/11/14/fk-a-useful-bash-function/">
<link rel="next" title="Where I’ve been this&nbsp;week" href="http://brettterpstra.dev/2009/12/12/where-ive-been-this-week/">
<link rel="canonical" href="http://brettterpstra.dev/2009/11/17/my-new-favorite-bash-prompt/">


<!-- Begin - HITS-IE6 PNGFix -->

<!--  End  - HITS-IE6 PNGFix -->


<style type="text/css"></style>


<!-- Protected by WP-SpamFree v2.1.1.2 :: JS BEGIN -->
 
<!-- Protected by WP-SpamFree v2.1.1.2 :: JS END -->

<style type="text/css"></style>
<link type="text/css" rel="stylesheet" media="screen" href="http://brettterpstra.dev/wp-content/plugins/jquery-lightbox-balupton-edition/css/jquery.lightbox.css" id="lightbox-stylesheet-lightbox"><script type="text/javascript" src="http://brettterpstra.dev/share/readability.js?x=0.7615092624910176"></script><link rel="stylesheet" href="http://brettterpstra.dev/share/readability.css?x=0.19161631958559155" type="text/css" media="screen"><link rel="stylesheet" href="http://brettterpstra.dev/share/readability.css?x=0.3490231435280293" type="text/css" media="screen"><script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
```


