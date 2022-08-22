Add-Type -AssemblyName System.Windows.Forms
$min = 0
$maxX = [System.Windows.Forms.Screen]::AllScreens[0].bounds.width -1
$maxY = [System.Windows.Forms.Screen]::AllScreens[0].bounds.height -1
$oldPos = [System.Windows.Forms.Cursor]::Position
while($true)
{
	$Pos = [System.Windows.Forms.Cursor]::Position
	if($pos -ne $oldPos)
	{
		$oldpos = [System.Windows.Forms.Cursor]::Position
		Start-Sleep -Seconds 10
		continue
	}
	$x = $min..$maxX | get-random
	$y = $min..$maxY | get-random
	[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)
	$oldpos = [System.Windows.Forms.Cursor]::Position 
	Start-Sleep -Seconds 10
}
