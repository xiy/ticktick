# Tick Tick

I wrote a couple of AppleScripts to remind me to fill out my Tickspot Timecard. Sure, I could've just set a reminder or used a calendar entry, but where's the fun (ridiculous waste of time) in that?

There are two flavours:

OSX Mavericks: `mavericks.applescript`

Growl: `growl.applescript`

Pop them somewhere readable and then add an entry into your `crontab` file to run the script - something like this:

`15	17	*	*	1-5 osascript ~/dev/ticktick/mavericks.applescript`

If you fear the cron, I recommend the Cronnix app (google!).

That will run the AppleScript every weekday at 17:15 and pop up a desktop notification. If you're really forgetful like me, make it so that notifications from AppleScript Editor in Mavericks notifications settings or the Ticktick app in Growl have to be closed manually.

Such reminder. Many efficient. Wow.
