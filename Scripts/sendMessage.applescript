on run {targetPhone, targetMessage, repeatTime}
	tell application "Messages"
		set targetService to 1st service whose service type = iMessage
		set targetBuddy to buddy targetPhone of targetService
		repeat repeatTime times
			send targetMessage to targetBuddy
		end repeat
	end tell
end run

-- In a terminal shell run: osascript sendMessage.applescript <target phone number> <message> <number of messages you want to send>
