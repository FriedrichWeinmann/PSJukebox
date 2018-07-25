function Unregister-PSJTune
{
<#
	.SYNOPSIS
		Removes a tune from the system.
	
	.DESCRIPTION
		Removes a tune from the system.
	
	.PARAMETER Name
		The name of the tune to kill
	
	.EXAMPLE
		PS C:\> Unregister-PSJTune -Name 'imperial-march'
	
		Removes the imperial march from the list of available tunes.
#>
	[CmdletBinding()]
	param (
		[Parameter(Mandatory = $true)]
		[string]
		$Name
	)
	process
	{
		Get-PSJTune -Name $Name | ForEach-Object {
			[PSJukebox.Tunes.TunesHost]::Tunes.Remove($_.Name)
		}
	}
}
