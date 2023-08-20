title: Log files

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)(\w+ \d+|[\d\-]+) +([\d:\.]+) (\w+\.\w+ )?(\w+\[(\d+)\]\:?)?(.*)/
```

---

## Test string:

```text
Mar 15 06:10:36 --- last message repeated 24 times ---
Mar 15 06:10:36 pibble.local sandboxd[37343] ([157]): xcscredd(157) deny file-read-metadata /Users
Mar 15 06:10:41 --- last message repeated 6 times ---
Mar 15 06:10:41 pibble.local launchctl[72530]: launchctl: Dubious permissions on file (skipping): /Library/LaunchAgents/com.adobe.AAM.Updater-1.0.plist
Mar 15 06:10:41 pibble.local launchctl[72530]: launchctl: Dubious file. Not of type .plist (skipping): /Library/LaunchAgents/com.parallels.mobile.startgui.lau
2014-03-15 06:32:05.876 hazelworker[94354] ###Noodle load address: 0x10f340000
2014-03-15 06:32:05.877 hazelworker[94354] ###CK load address: 0x10f304000
2014-03-15 06:32:07.615 hazelworker[94354] Processing folder nvALT2.2
2014-03-15 06:37:01.539 hazelworker[94354] Done processing folder nvALT2.2
2014-03-15 06:42:01.777 hazelworker[5320] ###main load address: 0x107f8c000
2014-03-15 06:42:01.852 hazelworker[5320] ###Noodle load address: 0x10805f000
2014-03-15 06:42:01.852 hazelworker[5320] ###CK load address: 0x108026000
2014-03-15 06:42:03.965 hazelworker[5320] Processing folder nvALT2.2
2014-03-15 06:47:21.012 hazelworker[5320] Done processing folder nvALT2.2
2014-03-15 06:51:28.673 hazelworker[16905] ###main load address: 0x1069e5000
2014-03-15 06:51:28.675 hazelworker[16905] ###Noodle load address: 0x106abe000
2014-03-15 06:51:28.736 hazelworker[16905] ###CK load address: 0x106a84000
2014-03-15 06:51:30.120 hazelworker[16905] Processing folder nvALT2.2 (forced)
```


