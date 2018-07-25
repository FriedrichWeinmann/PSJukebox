function Register-PSJTune
{
<#
	.SYNOPSIS
		Registers a new tune.
	
	.DESCRIPTION
		Registers a new tune.
	
	.PARAMETER Name
		The name to register the tune under.
	
	.PARAMETER Scriptblock
		The tune code.
	
	.PARAMETER Description
		Additional description of the tune.
	
	.PARAMETER Link
		Link to some online resource about the tune.
	
	.PARAMETER Category
		The category the tune belongs to.
	
	.EXAMPLE
		PS C:\> Register-PSJTune -Name imperial-march -Category tune -Description 'One of the most legendary music pieces of movie history' -Scriptblock $scriptblock
	
		Registers the imperial march as tune.
#>
	[CmdletBinding()]
	param (
		[Parameter(Mandatory = $true)]
		[string]
		$Name,
		
		[Parameter(Mandatory = $true)]
		[scriptblock]
		$Scriptblock,
		
		[string]
		$Description,
		
		[System.Uri]
		$Link,
		
		[Parameter(Mandatory = $true)]
		[PsfValidateSet(TabCompletion = 'PSJukebox.Tunes.Category')]
		[string]
		$Category
	)
	
	begin
	{
		
	}
	process
	{
		[PSJukebox.Tunes.TunesHost]::Tunes[$Name] = New-Object PSJukebox.Tunes.Tune -Property @{
			Name = $Name
			Code = $Scriptblock
			Description = $Description
			Link	    = $Link
			Category = (Get-PSJTuneCategory -Name $Category)
		}
	}
	end
	{
		
	}
}
