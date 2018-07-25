function Get-PSJTuneCategory
{
<#
	.SYNOPSIS
		Returns the list of tune categories available.
	
	.DESCRIPTION
		Returns the list of tune categories available.
	
	.PARAMETER Name
		Filter the available categories by name.
	
	.EXAMPLE
		PS C:\> Get-PSJTuneCategory
	
		List all tune categories.
	
	.EXAMPLE
		PS C:\> Get-PSJTuneCategory -Name signal
	
		Return the tune category 'signal'
#>
	[CmdletBinding()]
	Param (
		[string]
		$Name = "*"
	)
	
	begin
	{
		
	}
	process
	{
		[PSJukebox.Tunes.TunesHost]::Categories.Values | Where-Object Name -Like $Name
	}
	end
	{
	
	}
}
