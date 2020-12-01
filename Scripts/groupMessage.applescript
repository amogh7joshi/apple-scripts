-- Send messages to a group chat.

property maxMessage: 25
on run {targetChat, targetMessage, repeatTime}
  -- At the moment, you will need to manually find the group chat IDs.
	if (targetChat as string) is equal to "x" then
		set targetChat to "iMessage;+;xxx"
	else
		set targetChat to targetChat as string
	end if
	if repeatTime as integer > maxMessage then
		tell me to error "You are trying to send too many messages. Stop."
	end if
	tell application "Messages"
		set targetMessage to targetMessage as string
		set theBuddy to a reference to chat id targetChat
		repeat repeatTime times
			send targetMessage to theBuddy
		end repeat
	end tell
end run
