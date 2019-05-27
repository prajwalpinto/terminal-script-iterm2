tell application "iTerm"
	set newWindow to (create window with default profile)
	tell current session of newWindow
		write text "cd <directoryPath>"
		write text "rails s"
	end tell
	tell newWindow
		set newTab to (create tab with default profile)
		tell current session of newTab
			write text "cd <directoryPath>"
			write text "rake subscribers:enroll"
		end tell
		set newTab to (create tab with default profile)
		tell current session of newTab
			write text "cd <directoryPath>"
			write text " rake subscribers:sign_up"
		end tell
		set newTab to (create tab with default profile)
		tell current session of newTab
			write text "cd <directoryPath>"
			write text "rails s"
		end tell
		set newTab to (create tab with default profile)
		tell current session of newTab
			write text "cd cd <directoryPath>"
			write text "npm run start"
		end tell
	end tell
end tell
