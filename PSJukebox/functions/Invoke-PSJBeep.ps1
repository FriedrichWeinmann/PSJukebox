function Invoke-PSJBeep
{
<#
	.SYNOPSIS
		Executes a console beep
	
	.DESCRIPTION
		Executes a console beep
	
	.PARAMETER Height
		The height of the beep to play.
		Anything below 37 will instead execute a sleep for the specified length.
	
	.PARAMETER Length
		The length in milliseconds to play the beep for.
	
	.EXAMPLE
		PS C:\> Invoke-PSJBeep -Height 500 -Length 750
	
		Plays a beep at height 500 for 750 ms.
#>
	[CmdletBinding()]
	Param (
		[int]
		$Height,
		
		[int]
		$Length
	)
	
	if ($Height -lt 37) { Start-Sleep -Milliseconds $Length }
	else { [Console]::Beep($Height, $Length) }
}
Set-Alias -Name beep -Value Invoke-PSJBeep