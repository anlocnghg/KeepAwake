# KeepAwake
This is a PowerShell script to keep the computer awake by emulating keystroke.

## How to use
Just right-click on the PS script file (KeepAwake.ps1) and click 'Run with PowerShell'.

If the PS script is restricted, create a .bat file with this command:
```
powershell.exe -ExecutionPolicy Bypass -File .\KeepAwake.ps1
```
and run this .bat file.

For the convenience, the KeepAwake.bat is included, just double-click on this .bat file to run. If prevented from running this, right-click --> Properties --> then check Unblock at the Security on the General tab --> click Ok. To stop, press Ctrl+C or just close the Console Windows.

## Customizations
* Set the variable
```
$animationLoopCounts = 200
```
and numbers of milliseconds/seconds after keystroke input according to the need. Currently the script toggles forth and back the Scroll Lock key around every 180 seconds (or 3 mins). 
* There are other options, like Print Screen, Num Lock, Caps Lock, Home, Function, Help, etc. or the combined keys using SHIFT, CTRL, ALT. For more options: https://ss64.com/vb/sendkeys.html