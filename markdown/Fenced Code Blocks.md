title: Fenced Code Blocks

## Flags

> Flags: `(?ims-U)`

> * -U: Greedy
> * i: Case insensitive
> * m: Treat target as one line
> * s: Dot matches newline

## Regular Expression Search

```ruby
/(?ims-U)([~`]{3,})\s*([a-z]+)?.*\1/
```

---

## Test string:

```text
---
layout: post
title: Scripting podcast and screencast prep on a Mac
categories:
- Code
tags:
- scripting
- automator
- recording
- osx
comments: true
post_class: code
date: 2013-12-24 12:00
slug: scripting-podcast-and-screencast-prep-on-a-mac
keywords:
- applescript
- dropbox
- geektool
- growl
- launchbar
- notification center
- shell script
- totalfinder
---
There's a lot to remember when you're preparing to record a screencast or a podcast. Quitting some apps, launching others, changing settings... I find it easiest just to script everything. That's probably not a surprise to anyone.

Here are some tricks I've learned along the way. You can use them to implement your own scripted environment for screencasting or podcasting. I've split the two up below (podcasting and screencasting) because they have very different requirements.

I have two pairs of scripts: "Podcasting Start" and "Podcasting Stop," and "Screencasting Start" and "Screencasting Stop." The "start" scripts prepare my setup for the task, the "stop" scripts restore it to my normal working environment.

### Automator vs. Applescripts vs. Shell Scripts

I originally did this all with Bash scripts that I called from the command line or from an AppleScript "do shell script" command in LaunchBar. These days I'm doing it all with Automator so that I can take advantage of all the things that it makes easier, while still throwing in as much shell scripting as I like.

Automator workflows can still be called from other scripts using the `automator` command:

	automator ~/scripts/screencast_start.workflow &> /dev/null

The tricks I'm going to list here will, by and large, work in any form you want to build them in, be it shell script, AppleScript or Automator workflow. I'll be coming at it from an Automator perspective, though.

There's also Keyboard Maestro. To see some alternative solutions using that app, [check out this post over at MacDrifter](http://www.macdrifter.com/2012/09/the-podcaster-macro.html).

### Quitting and launching applications

The most basic thing a script like this should do is quit certain applications and start others. For example, my screencasting script starts by quitting TotalFinder (so as not to confuse anyone) and Simplify ([Sidecar](/projects/sidecar/) takes up a lot of Desktop), and launches ScreenFlow automatically.

The easiest way to quit and launch applications is with AppleScript. You can get fancy and create arrays to pass to a function, but if you're just stopping/starting a few apps every time, it's easy enough to just write a line of script for each one.

In a shell script or shell action in Automator, you use the `osascript` command to run a line of AppleScript:

	osascript -e 'tell app "Tweetbot" to quit'
	# or
	osascript -e 'tell app "Tweetbot" to launch'

In my fancier moments I take the time to have the script record whether an app was open at the time it ran so that I don't relaunch apps at the end that weren't running before. I won't go into that here, but it's possible.

### Screencasting

My screencasting scripts are primarily concerned with looks. Cleaning up the desktop, setting backgrounds, etc. Here are a few tricks.

#### Desktop Picture

I like to use plain backgrounds and maintain some consistency across screencasts in a series, but I don't like to use them as my wallpaper every day. This little trick lets me script in a specific "screencasting" desktop picture, and when I'm done it automatically restores whatever was there before.

In my "Start Screencasting" Automator workflow, I run this in a shell action:

	osascript -e 'tell application "Finder" to return POSIX path of (desktop picture as alias)' > ~/.olddesktop

That stores the path to the current desktop picture in a text file in my home directory. Then I can just run the "Get Specified Finder Items" pointed to my preferred background image and pass it to the "Set the Desktop Picture" action.

In the "Stop Screencasting" Automator workflow, there's a shell action at the top that ends with:

	cat ~/.olddesktop

That echoes out the path I stored earlier and passes it to the next action, "Set the Desktop Picture," which just does the right thing with it. You can do the same thing purely in a shell script with:

	osascript -e 'tell application "Finder" to set desktop picture to (POSIX file "$(cat ~/.olddesktop)")'


#### Notification Center and Growl

Notifications ruin screencasts, and it's really easy to forget to disable them until one pops up halfway through a recording. Disabling both Growl and Notification center is easy with a couple lines of code.

To disable Notification Center entirely, just run:

	launchctl unload /System/Library/LaunchAgents/com.apple.notificationcenterui.plist

You can re-enable it seamlessly by running:

	launchctl load /System/Library/LaunchAgents/com.apple.notificationcenterui.plist

Growl has an AppleScript dictionary for pause/resume now, too:

	osascript -e 'tell application "Growl" to pause'

and 

	osascript -e 'tell application "Growl" to resume'

No more popups.

#### Desktop Icons

You don't want people to be distracted trying to figure out the names of all the documents on your Desktop, so it's best just to hide them all. In a "Run Shell Script" action:

	defaults write com.apple.finder CreateDesktop 0 && killall "Finder"

To restore them:

	defaults write com.apple.finder CreateDesktop 1 && killall "Finder"

#### Hiding the Dock

I like to hide my Dock as well, as people tend to be quite obsessed with what applications other people are running, to a point of distraction (I do it all the time).

If you normally have your Dock shown, you can toggle hiding with this command: 

	osascript -e 'tell application "System Events" to set the autohide of the dock preferences to true'

And restore it with:

	osascript -e 'tell application "System Events" to set the autohide of the dock preferences to false'



#### GeekTool

GeekTool is great, and fun to show off, but in any kind of professional screencast that's _not_ about GeekTool it's a no-no. Fortunately, GeekTool's AppleScript library makes it a cinch:

	osascript -e 'tell application "GeekTool Helper" to set visible of group "Default Group" to false'

You can run that on any groups you have set up and toggle them individually. When turning it back to 'true', you'll want to run a refresh directly after:

	osascript -e 'tell application "GeekTool Helper" to refresh'

### Podcasting

While the screencasting scripts are more concerned with aesthetics, the podcasting scripts are primarily concerned with network quality. I check to make sure a few apps are running at the start (Shush, Stopwatch Pro, Skype, etc.), but the rest of the script is about stopping tasks.

#### Dropbox

Dropbox kicking into high gear almost always causes Skype distortion. There are two ways to "pause" it, though on OS X there's no command to do it legitimately. First, you can use `kill` to pause the process:

	kill -STOP $(ps cx | awk -F' ' '/ Dropbox$/{print $1}')

will stop Dropbox in its tracks (literally freezing it), and:

	kill -CONT $(ps cx | awk -F' ' '/ Dropbox$/{print $1}')

will restore functionality. I don't love this method, and it makes me a little nervous about causing corruption if files Dropbox was operating on change while its unable to detect or block it. I prefer to simply quit and re-launch Dropbox:

```applescript
	osascript -e 'tell application "Dropbox" to quit'

	osascript -e 'tell application "Dropbox" to launch'
```

#### Time Machine

Time Machine kicking in can cause some issues, though generally not with the network. My most common problem is it kicking my fans up while recording, and the potentially excessive disk access can make some noise and cause some operational issues. I disable Time Machine entirely during podcasts.

Doing this from a script requires root level access via `sudo`, which requires your system password. Alternatively, you can add yourself to `/etc/sudoers` with `username ALL=(ALL) NOPASSWD: ALL`, but the security flaws in that approach are worse than having your password stored in plain text in a script. So we'll just show how to script a password:

	echo "PASSWORD" | sudo -S tmutil disable

As you can probably imagine, re-enabling is as simple:

	echo "PASSWORD" | sudo -S tmutil enable

#### Other backup programs

I use Arq on my podcasting machine. Arq makes it ridiculously simple to pause backup via script:

	/Applications/Arq.app/Contents/MacOS/Arq pause 180

Other apps like CrashPlan, Backblaze, etc. can cause just as many problems as Dropbox. I don't have the tricks for all of them, but if you're running any of them you should look into it.

<ins datetime="2013-12-24T13:29:25-0600">Gabe Weatherhead has some additional solutions, including Backblaze, [over at MacDrifter](http://www.macdrifter.com/2012/09/the-podcaster-macro.html).</ins>

#### Audio Input/Output

There's a free command line utility called [switchaudio-osx](https://github.com/deweller/switchaudio-osx) that can easily set input and output devices, show current settings and mute/unmute any device. It's actually called AudioSwitcher, but a paid utility took that name.

You can download a binary of switchaudio-osx [here](https://github.com/deweller/switchaudio-osx/downloads). It does not appear to be the latest version, so if you're able to compile your own, you're better off pulling the [source from GitHub](https://github.com/deweller/switchaudio-osx).

Once it's installed, just run `AudioSwitcher` from the command line to see the available options for listing and switching input and output sources.

#### Remembering to start it all back up

I often forget to run the "Stop Podcasting" script and then wonder why Dropbox isn't syncing hours later. I have my script set up a three-hour time limit when it starts using the `at` command. The ID for the resulting job is stored in a text file, and if I do remember to run "Stop Podcasting" before then, the ID is deleted and the reminder job is cancelled.

In the "Podcast Start" script, I run:

	id=$(echo "automator '~/scripts/Podcast Start.workflow'" | at now + 180 minute 2>&1 | awk '{print $2}')
	echo -n $id > ~/.podcast_at_job

In the "Podcast Stop" script, I run:

	if [[ -a ~/.podcast_at_job ]]; then
	    atrm `cat ~/.podcast_at_job`
	    rm ~/.podcast_at_job
	fi

If the script was triggered by `at` itself, the job will already have been deleted, but it exits cleanly anyway.

That's it. It's not actually as complicated a process as this post makes it out to be. It's just that my scripts won't be of use to anyone else because each person's setup is going to be different. The tricks here will probably be of use to anyone looking to do the same type of thing, though.

Best of luck with your amazing screencasts and awesome podcast. Keep up the good work. 

```


