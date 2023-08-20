title: CheckMarkdown

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)(^[\n\r]+#{1,5}\s+\S.*[\n\r]{2,}|\[.*?\]\(\S+\)|^[=\-]{4,}\s*$)/
```

---

## Test string:

```text
<h3>Switched / DLS to HuffPost Tech</h3>

<p>Code sweeps and sales campaign discussions have been ongoing this week to coordinate Switched and DLS moving over to HuffPost Tech. Should you notice any Switched or DLS links, please let us know.</p>

<h3>Joystiq/Massively Ad Skins</h3>

<p>In the process of working through the skinning of Joystiq and Massively for 24-hour, full-background ad campaigns, a system has been developed to allow nearly-complete automation of the skins on timed layers. It&#8217;s cool.</p>

<h3>Engadget Production Process</h3>

<p>In the effort to begin improving the self-sustainability of the Engadget workflow, Brett has begun work on revamping the Hero tool in Flex to generate more flexible templates that work more effectively with the range of hero designs that Engadget has been using recently. We will continue to work closely with the editors at Engadget to provide tools that allow them to run the blog with less direct intervention from the tech team. </p>

<p>Effort continues to ensure that a transition to the new CMS editor is seamless as well, including transitioning plugins and providing alternatives for any workflow items which might be disrupted.</p>

<h3>Tech Crunch 125px Ads</h3>

<p>These ads are designed to provide affordable advertising opportunities to developers/small businesses and were launched this week on TUAW in the right rail.</p>

<h3>BigDownload Migration to Joystiq</h3>

<p>The BigDownload migration is in testing phase. We&#8217;re waiting on feedback from editorial regarding bugs and change requests. We&#8217;re still on track for end of April launch, unless major changes are requested.</p>

<h3>Ongoing Projects</h3>

<p>The following projects are all moving forward, but have no particularly interesting developments to report this week.</p>

<ul>
<li>Engadget Internationals</li>
<li>Pstbl</li>
<li>Newsletters</li>
<li>Comments</li>
<li>AOL Share Tool 1.2 / Facebook Code Updates for Engadget</li>
<li>TUAW Redesign</li>
<li>Big Download Migration</li>
</ul>

```


