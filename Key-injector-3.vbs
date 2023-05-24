'REM version 1.0 
'Author Name Hacker01 
'REM Targeted on windows 10 device only  
'REM file size: 606 bytes 
'note: This code has been tested on windows 10 machine 

const delay = 100

class KeyInjector 
  Private keypress 

  Public sub openpowershell()

    set keypress = CreateObject("WScript.shell")
    keypress.Run "powershell.exe" 'Opens powershell terminal 

    'your key strokes goes here: 
    Wscript.Sleep delay 'wait 100 ms

    'note: what you want the code to do?
    keypress.sendkeys "echo off"
    
  End Sub 

End class 

set inject = New KeyInjector 
inject.openpowershell()
