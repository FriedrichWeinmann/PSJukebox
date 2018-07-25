function Invoke-PSJTune
{
<#
	.SYNOPSIS
		Executes the specified tune.
	
	.DESCRIPTION
		Executes the specified tune.
		Will run a random tune if the result of the parameters is ambiguous.
	
	.PARAMETER Name
		Name of the tune to play
	
	.PARAMETER Category
		Category of the tune to play
	
	.PARAMETER Tune
		Tune object to play.
		Returned by Get-PSJTune.
	
	.PARAMETER Random
		Play a random tune.
	
	.EXAMPLE
		PS C:\> Invoke-PSJTune -Name 'Imperial-March'
	
		Plays the imperial march.
#>
	[CmdletBinding(DefaultParameterSetName = 'Name')]
	param (
		[Parameter(Mandatory = $true, ParameterSetName = 'Name')]
		[string]
		$Name,
		
		[Parameter(ParameterSetName = 'Name')]
		[Parameter(ParameterSetName = 'Random')]
		[string]
		$Category = "*",
		
		[Parameter(Mandatory = $true, ValueFromPipeline = $true, ParameterSetName = 'Tune')]
		[PSJukebox.Tunes.Tune[]]
		$Tune,
		
		[Parameter(ParameterSetName = 'Random')]
		[switch]
		$Random
	)
	
	begin
	{
		
	}
	process
	{
		if ($Name)
		{
			$tuneObject = Get-PSJTune -Name $Name -Category $Category | Get-Random
			if ($tuneObject)
			{
				$scriptblock = [scriptblock]::Create($tuneObject.Code.ToString())
				& $scriptblock
			}
		}
		foreach ($tuneObject in $Tune)
		{
			$scriptblock = [scriptblock]::Create($tuneObject.Code.ToString())
			& $scriptblock
		}
		if ($Random)
		{
			$tuneObject = Get-PSJTune -Name "*" -Category $Category | Get-Random
			if ($tuneObject)
			{
				$scriptblock = [scriptblock]::Create($tuneObject.Code.ToString())
				& $scriptblock
			}
		}
	}
	end
	{
	
	}
}
