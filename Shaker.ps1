$wsh = New-Object -ComObject WScript.Shell
$start = get-date
cls
while($true)
{	
	cls
	$runtime = (get-date)-$start
	$beat = "Running for: {0}" -f "{0}:{1}:{2}" -f $runtime.hours, $runtime.minutes.tostring("00"), $runtime.seconds.tostring("00")
	write-host -foregroundcolor cyan $beat
	$wsh.SendKeys('{scrollLOCK}')
	Start-Sleep -milliSeconds 100
	$wsh.SendKeys('{scrollLOCK}')
	Start-Sleep -Seconds 240
}
