0. This is a PowerShell script to keep the computer awake by emulating keystroke.

1. How to use:
  + Right-click on the PS script file (KeepAwake.ps1) and click 'Run with PowerShell'. If 'Security Warning' popups, un-check 'Always ask before opening this file'. Click Open.

  + If the PS script is restricted, create a .bat file with this command:
    powershell.exe -ExecutionPolicy Bypass -File .\KeepAwake.ps1
  and run this .bat file by double-clicking on it.

  + For the convenience, the KeepAwake.bat is included, just double-click on this .bat file to run. If prevented from running this, right-click --> Properties --> then check Unblock at the Security on the General tab --> click Ok. To stop, press Ctrl+C or just close the Console Windows.

2. Customizations
  + Set variable variable $animationLoopCounts, as well as numbers of milliseconds/seconds according to the need. Currently the script toggles forth and back the Scroll Lock key around every 180 seconds (or 3 mins).