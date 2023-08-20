title: Find Author Names

## Flags

> Flags: `(?ix-ms)`

> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive
> * x: Free spacing

## Regular Expression Search

```ruby
/(?ix-ms) #FREE SPACING -- all whitespace is ignored
^-\s* # start a line with a hypen followed by any number of spaces
(?: # start a non-capturing group
([^,\r\n]+), | # every character that's not a comma or newline until we get to a comma, OR
([^(\r\n]*)\x20\( | # every character that's not a newline until we get to a space followed by an open paren, OR
([^\r\n]*)\x20+[\r\n] | # every character that's not a newline followed by 1 or more spaces followed by a newline, OR
([^\r\n]*)[\r\n] # every character that's not a newline until a newline
) # end the non-capturing group/
```

---

## Test string:

```text
[Below are some political axioms from various authors. The lines that contain the authors' names start with a hyphen, but then it gets tricky. Some have a space after the hyphen while others don't. Some have just the author's name while others have additional information. Finally, some have one or more trailing spaces. This pattern attempts to account for all of these and extract the author's name into the last subexpression of each match. Note that the Greedy option is turned off.]


If you don’t read the newspaper you are uninformed; if you do read the newspaper you are misinformed.
-Mark Twain

Suppose you were an idiot. And suppose you were a member of Congress…. But then I repeat myself.
-Mark Twain

I contend that for a nation to try to tax itself into prosperity is like a man standing in a bucket and trying to lift himself up by the handle.
-Winston Churchill

A government which robs Peter to pay Paul can always depend on the support of Paul.
- George Bernard Shaw

A liberal is someone who feels a great debt to his fellow man, which debt he proposes to pay off with your money.
-G. Gordon Liddy

Democracy must be something more than two wolves and a sheep voting on what to have for dinner.
-James Bovard, Civil Libertarian (1994)

Foreign aid might be defined as a transfer of money from poor people in rich countries to rich people in poor countries.
-Douglas Casey,

Giving money and power to government is like giving whiskey and car keys to teenage boys.
-P.J. O’Rourke, Civil Libertarian

Government is the great fiction, through which everybody endeavors to live at the expense of everybody else.
-Frederic Bastiat, French Economist (1801-1850)

Government’s view of the economy could be summed up in a few short phrases: If it moves, tax it. If it keeps moving, regulate it. And if it stops moving, subsidize it.
-Ronald Reagan (1986)

I don’t make jokes… I just watch the government and report the facts.
-Will Rogers

If you think health care is expensive now, wait until you see what it costs when it’s free!
- P.J. O’Rourke

In general, the art of government consists of taking as much money as possible from one party of the citizens to give to the other.
-Voltaire (1764)

Just because you do not take an interest in politics doesn’t mean politics won’t take an interest in you!
-Pericles (430 B.C.)

No man’s life, liberty, or property is safe while the legislature is in session.
-Mark Twain (1866 )

Talk is cheap… except when Congress does it.
-Unknown

The government is like a baby’s alimentary canal: a happy appetite at one end and no responsibility at the other.
-Ronald Reagan

The inherent vice of capitalism is the unequal sharing of the blessings. The inherent blessing of socialism is the equal sharing of misery.
-Winston Churchill

The only difference between a tax man and a taxidermist is that the taxidermist leaves the skin.
-Mark Twain

The ultimate result of shielding men from the effects of folly is to fill the world with fools.
-Herbert Spencer, English Philosopher (1820-1903)

There is no distinctly Native American criminal class….save Congress.
-Mark Twain   

What this country needs are more unemployed politicians.
-Edward Langley, Artist (1928 - 1995)

AND FINALLY…
A government big enough to give you everything you want, is strong enough to take everything you have.
-Thomas Jefferson

```


