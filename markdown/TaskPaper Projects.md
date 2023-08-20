title: TaskPaper Projects

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)^\w[\w ]+:\s*(@\S+\s*)*$/
```

---

## Test string:

```text
Currently:
	- 2014-03-13 23:39 | Still working on Marked
		new github line ending regex
			less complex, probably smarter
		And some other stuff.
	- 2014-03-13 23:27 | Working on Marked
	- 2014-03-13 22:00 | Playing with Highlights.app
	- 2014-03-13 20:05 | Working on Slogger/nvALT/Day One script
	- 2014-03-13 16:35 | Setting up the mini for everyday use
	- 2014-03-12 20:02 | Setting up the studio
	- 2014-03-12 16:00 | Writing the book!
	- 2014-03-12 15:00 | Getting ready to write on the book. For realz.
	- 2014-03-12 13:05 | Blogging MindMeister Google Docs Add-on
	- 2014-03-11 22:05 | Doing a little work for Mark Pearl
	- 2014-03-11 13:01 | Blogging Stormcloud and Publish
	- 2014-03-10 15:00 | Trying to figure out why so many things are broken on brettterpstra.com
	- 2014-03-09 18:00 | Blogging about geohopper
	- 2014-03-09 16:00 | Added new recap image for better mobile presentation
	- 2014-03-09 15:00 | Adding scroll animations to bt.com and marked2app.com
	- 2014-03-06 18:00 | Publishing popclip 1.14 post
	- 2014-03-06 17:04 | Working on LinkCleaner extension for PopClip
	- 2014-03-06 16:00 | Looking for something to blog about
	- 2014-03-05 21:30 | Getting frustrated with iBeacons
	- 2014-03-04 20:00 | Working on webhook for Indigo
	- 2014-03-04 18:00 | Blogging for a bit.
	- 2014-03-04 15:00 | Discussing co-authoring technologies with Brother Gabriel.
	- 2014-03-03 21:00 | Releasing Marked 2.2 824
	- 2014-03-03 14:00 | Prepping for an early morning Systematic
	- 2014-03-02 15:00 | Trying to highlight long sentences in Marked
	- 2014-02-25 18:01 | Packing for Markdown trip
	- 2014-02-25 17:01 | Setting up Sponsor and Recap posts
	- 2014-02-25 15:00 | Writing up the recap and web excursions posts
	- 2014-02-24 22:00 | Markdown presentation
	- 2014-02-24 17:00 | Working with Eric Linder
	- 2014-02-24 15:00 | Working on the Markdown presentation.
	- 2014-02-22 21:00 | Working on the Day One blog post about this specific topic.
	- 2014-02-21 20:00 | Rocking out and getting nothing done.
	- 2014-02-21 12:11 | Adding a --dedup-similar function to Slogger
	- 2014-02-21 11:00 | Adding binary image comparison to Slogger --dedup
	- 2014-02-20 21:00 | Figured out the sponsor_text key for sidebar and include generation
	- 2014-02-20 20:02 | Working on Slogger
	- 2014-02-20 19:01 | Working on some Jekyll/blogging stuff.
	- 2014-02-20 18:00 | Why am I doing work for AOL?
	- 2014-02-20 17:00 | Trying to fix the category feed content.
	- 2014-02-20 00:01 | Fixing control characters in blog posts.
	- 2014-02-19 23:00 | Working on the sponsor post.
	- 2014-02-19 22:00 | Adding a sponsorship page for the new syndicate setup.
	- 2014-02-19 19:00 | MacCast
	- 2014-02-19 18:00 | Writing the blog posts I need for today and tomorrow.
	- 2014-02-19 17:00 | Doing some brainstorming for Macworld talk
	- 2014-02-19 16:00 | Trying out the Arq 4 beta
	- 2014-02-19 05:35 | Played around with LS_COLORS for a bit and got bored.
	- 2014-02-18 23:21 | This is to test that nvALT importer. Betcha it works.
	- 2014-02-18 23:04 | Writing that Day One importer I was thinking about.
	- 2014-02-18 22:00 | Looking for a backup solution that I can use on macminicolo.
	- 2014-02-18 20:00 | Writing Alfred workflows for SearchLink and iTunesIcon
	- 2014-02-18 19:00 | Finished Day One writeup, published shoots and leaves.
	- 2014-02-18 18:43 | Worked out some encoding issues in Slogger
	- 2014-02-18 00:00 | Working on notehub
	- 2014-02-17 23:01 | Working on the whatchadoin.sh script for some god-only-knows reason.
	- 2014-02-17 22:00 | Trying to get myself to start writing.
	- 2014-02-17 16:00 | Playing
	- 2014-02-17 15:07 | Doing customer support for Marked 2 and Slogger
	- 2014-02-17 08:51 | Customer support for Marked 2
	- 2014-02-17 04:16 | Why am I trying to replace Day One with a hacky launchd script?
	- 2014-02-16 21:58 | Making a growl style for whatchadoin
	- 2014-02-16 20:41 | Making a TextExpander snippet for recap posts
	- 2014-02-16 20:20 | Optimizing website and adding CloudFront CDN
	- 2013-12-26 21:38 | working on downrabbithol.es
	- 2013-12-26 21:38 | working on Marked autoscroll
	- 2013-12-26 21:37 | working on blog.trpstra.net
	- 2013-11-23 06:21 | Playing with URL schemes. growlvoice:123456790?text&message=message
	- 2013-11-22 19:22 | Working my ass off on the iOS Controls video outline
	- 2013-11-22 19:22 | Wasting time tweaking bt.com
	- 2013-11-22 15:14 | Revising the systematic links gathering bookmarklet and updating syslinks page
	- 2013-11-22 04:21 | Started MailMateMate
	- 2013-11-22 03:43 | Marked keyword drawer redesign
	- 2013-11-22 01:42 | Setting up brettterpstra.com/audiodrop for taking submissions for Systematic
	- 2013-09-30 15:04 | Working on a Last.fm page update <file:///Users/ttscoff/Downloads/bluetidepro-jQuery.JamCity-655219c/demo.htm>
	- 2013-08-28 13:45 | Fixing the Wrappers extension, improving the Outdent one and getting ready to package a download
	- 2013-08-26 19:56 | Looking at http://vestride.github.io/Shuffle/ for sorting and filtering on the projects page. Sort by created/modified/alpha/popularity/etc
	- 2013-08-26 06:10 | Working on jTag
	- 2013-07-27 08:27 | brainstorming featuretap
	- 2013-07-27 06:38 | started playing with rails, maybe for Featuretap (<http://ttscoff.com:3000>)
	- 2013-07-27 05:19 | fixed the doing script
	- 2013-07-27 05:19 | Made a history feature for back button on bt.com infinite scroll
	- 2013-07-27 02:34 | working on the Marked 2 Site
	- 2013-07-27 02:34 | playing with Leap Motion and BetterTouchTool
	- 2013-07-27 02:34 | Removing sonar from the website
	- 2013-07-27 02:25 | working on marked and Paddle
	- 2013-07-06 15:54 | Considering modular loading of js on bt.com
	- 2013-07-05 00:05 | Considering making more use of Evernote again
	- 2013-07-04 23:18 | brainstorming pinboard app
Old: @archive
Later:
	- 2013-07-27 08:48 | back to dicking around with bt.com
[@taskpaper @wwid]

Working on page numbers, headers and footers for Marked print/pdf.

http://www.cocoabuilder.com/archive/cocoa/147444-nstextview-printing-page-numbers-and-headers.html

```


