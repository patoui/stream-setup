set chromeWindows to {{location:"http://laravel-profile.test", bounds:{0, 0, 1280, 1080}}, {location:"https://www.youtube.com/livestreaming/", bounds:{200, 0, 640, 1080}}}

tell application "Google Chrome"
	repeat with win in chromeWindows
		make new window
		open location location of win
		set bounds of front window to bounds of win
	end repeat
end tell

activate application "iTerm"
tell application "iTerm"
	tell current session of current window
		set cmd to "cd ~/code/laravel-profile && subl ."
		write text cmd
	end tell
	tell current session of current window
		set cmd to "/usr/bin/open -a /Applications/OBS.app"
		write text cmd
	end tell
end tell
