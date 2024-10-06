Result := MsgBox("Mean Little's Autorun will continue working in the background`n
`nTo close it just find the icon on the system tray and right click on it.
`nFinally select the `"Exit`" option.`n
`nAdditionally, you can close the app right now if you press `"Cancel`" ",
 "Mean Little's Autorun",
 "Iconi OKCancel")

if Result = "Cancel" {
	MsgBox("Mean Little's Autorun will close.`n`nHave a Corny Day!",
  "Mean Little's Autorun",
  "Iconi")
	ExitApp()
}

OnExit ExitMenu

ExitMenu(ExitReason,ExitCode)
{
	if ExitReason == "Menu" {
		Result := MsgBox("Mean Little's autorun will close.`n
    `nHave a Corny Day!",
    "Mean Little's Autorun",
    "Iconi")
		return 0
	}
}

NumpadAdd::
{
	Send("{w down}")
	Send("{shift down}")
	loop {
		if GetKeyState("NumpadSub", "P"){
			Send("{w up}")
			Send("{shift up}")
			return
		}
	}
}
return
