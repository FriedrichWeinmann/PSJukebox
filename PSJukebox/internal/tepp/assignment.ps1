Register-PSFTeppArgumentCompleter -Command Register-PSJTune -Parameter Category -Name "PSJukebox.Tunes.Category"
Register-PSFTeppArgumentCompleter -Command Get-PSJTuneCategory -Parameter Name -Name "PSJukebox.Tunes.Category"
Register-PSFTeppArgumentCompleter -Command Get-PSJTune -Parameter Category -Name "PSJukebox.Tunes.Category"
Register-PSFTeppArgumentCompleter -Command Invoke-PSJTune -Parameter Category -Name "PSJukebox.Tunes.Category"

Register-PSFTeppArgumentCompleter -Command Unregister-PSJTune -Parameter Name -Name "PSJukebox.Tunes.Name"
Register-PSFTeppArgumentCompleter -Command Get-PSJTune -Parameter Name -Name "PSJukebox.Tunes.Name"
Register-PSFTeppArgumentCompleter -Command Invoke-PSJTune -Parameter Name -Name "PSJukebox.Tunes.Name"