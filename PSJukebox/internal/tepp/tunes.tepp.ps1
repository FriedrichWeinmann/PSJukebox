Register-PSFTeppScriptblock -Name "PSJukebox.Tunes.Category" -ScriptBlock {
	[PSJukebox.Tunes.TunesHost]::Categories.Keys
}
Register-PSFTeppScriptblock -Name "PSJukebox.Tunes.Name" -ScriptBlock {
	if ($fakeBoundParameter.Category) { $category = $fakeBoundParameter.Category }
	else { $category = "*" }
	([PSJukebox.Tunes.TunesHost]::Tunes.Values | Where-Object Category -Like $category).Name
}