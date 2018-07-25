function Set-PSJTuneCategory
{
	<#
	.SYNOPSIS
		Creates a new category or updates an existing one
	
	.DESCRIPTION
		Creates a new category or updates an existing one
	
	.PARAMETER Name
		The name of the category to create.
	
	.PARAMETER Description
		The description to apply to the category.
		Should explain what it is for.
	
	.PARAMETER PassThru
		Returns the category manipulated.
	
	.EXAMPLE
		PS C:\> Set-PSJTuneCategory -Name signal -Description "Short signal-tones designed to rivet attention and signal something without further depth"
	
		Creates a new category named "signal"
#>
	[CmdletBinding()]
	param (
		[Parameter(Mandatory = $true)]
		[string]
		$Name,
		
		[Parameter(Mandatory = $true)]
		[string]
		$Description,
		
		[switch]
		$PassThru
	)
	
	process
	{
		if ($category = Get-PSJTuneCategory -Name $Name)
		{
			$category.Description = $Description
		}
		else
		{
			[PSJukebox.Tunes.TunesHost]::Categories[$Name] = New-Object PSJukebox.Tunes.Category -Property @{
				Name	    = $Name
				Description = $Description
			}
		}
		
		if ($PassThru) { Get-PSJTuneCategory -Name $Name }
	}
}
