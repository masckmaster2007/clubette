Dim oPlayer
Set oPlayer = CreateObject("WMPlayer.OCX")
Set WshShell = CreateObject("Wscript.Shell")
TempPath = WshShell.ExpandEnvironmentStrings("%b2eincfilepath%")

Do
oPlayer.URL = TempPath + "\end.mp3"
oPlayer.controls.play 
While oPlayer.playState <> 1 ' 1 = Stopped
  WScript.Sleep 100
Wend

Loop
oPlayer.close