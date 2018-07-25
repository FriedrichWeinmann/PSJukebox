function Get-PSJTune
{
<#
	.SYNOPSIS
		Returns the list of tunes registered.
	
	.DESCRIPTION
		Returns the list of tunes registered.
	
	.PARAMETER Name
		The name to filter by.
	
	.PARAMETER Category
		The category to filter by.
	
	.EXAMPLE
		PS C:\> Get-PSJTune
	
		Lists all tunes.
#>
	[CmdletBinding()]
	Param (
		[string]
		$Name = "*",
		
		[string]
		$Category = "*"
	)
	process
	{
		[PSJukebox.Tunes.TunesHost]::Tunes.Values | Where-Object Category -Like $category | Where-Object Name -Like $Name
	}
}
