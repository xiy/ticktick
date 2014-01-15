tell application "System Events"
	set isRunning to (count of (every process whose bundle identifier is "com.Growl.GrowlHelperApp")) > 0
end tell

if isRunning then
	tell application id "com.Growl.GrowlHelperApp"
		set the allNotificationsList to ¬
			{"Tickspot Reminder"}
		
		set the enabledNotificationsList to ¬
			{"Tickspot Reminder"}

		register as application ¬
			"Ticktick Tickspot Reminder" all notifications allNotificationsList ¬
			default notifications enabledNotificationsList ¬
			icon of application "Script Editor"
		
		notify with name ¬
			"Tickspot Reminder" title ¬
			"Tickspot Reminder" description ¬
			"Your Tickspot timecard is due for today!" application name "Ticktick Tickspot Reminder"
	end tell
end if