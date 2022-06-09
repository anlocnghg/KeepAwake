<#
    PowerShell script to keep the computer awake by emulating keystroke
    by Loc Nguyen | http://locnguyen.us

    If this script is restricted, create a .bat file with this command:
        powershell.exe -ExecutionPolicy Bypass -File .\KeepAwake.ps1
    and run this .bat file.
#>

Clear-Host
Write-Host "This script is to keep the computer awake."

# Use the Windows Script Host (WSH) Shell object
$wshShell = New-Object -ComObject WScript.Shell 

$start = (Get-Date)

function KeepAwake
{
    while ($true)
    {
        #region Emulating keystroke

        # Possible options: toggle on or off {CAPSLOCK} or {SCROLLLOCK}
        # Or send the the keystroke: 
        #     {PRTSC} for Print Screen
        #     {NUMLOCK} for Num Lock
        # For more options: https://ss64.com/vb/sendkeys.html

        $wshShell.SendKeys("{SCROLLLOCK}")
        Start-Sleep -Milliseconds 100

        $wshShell.SendKeys("{SCROLLLOCK}")
        # Start-Sleep -Seconds 60

        $now = (Get-Date)
        $diff = New-TimeSpan -Start $start -End $now
        $totalMinutes = [math]::Round($diff.TotalMinutes, 0)

        # Instead of Clear-Host, return the cursor to the beginning of the line and overwrite.
        # Write-Host -NoNewline "`r`thas been running" $totalMinutes "minutes..."

        # Return a string instead of output for further processing.
        $outStr = "`r`thas been running " + $totalMinutes + " minutes..."

        #endregion

        $animationChars = @("|", "/", "-", "\")
        $blank = "`b" * ($outStr.Length + 2)
        # $clear = " " * ($outStr.Length + 2)
        
        $animationLoopCounts = 200
        while ($animationLoopCounts -gt 0)
        {
            foreach($ch in $animationChars)
            {
                Write-Host ($blank + $outStr + " " + $ch + "`b") -NoNewline -ForegroundColor DarkYellow
                Start-Sleep -Milliseconds 200
            }

            $animationLoopCounts--
        }

        # Write-Host ($blank + $clear + $blank) -NoNewline
    }
}

KeepAwake