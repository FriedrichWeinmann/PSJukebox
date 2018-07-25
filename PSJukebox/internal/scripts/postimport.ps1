# Add all things you want to run after importing the main code

# Load Configurations
foreach ($file in (Get-ChildItem "$ModuleRoot\internal\configurations\*.ps1" -ErrorAction Ignore)) {
	. Import-ModuleFile -Path $file.FullName
}

# Load Tab Expansion
foreach ($file in (Get-ChildItem "$ModuleRoot\internal\tepp\*.tepp.ps1" -ErrorAction Ignore)) {
	. Import-ModuleFile -Path $file.FullName
}

# Load Tab Expansion Assignment
. Import-ModuleFile -Path "$ModuleRoot\internal\tepp\assignment.ps1"

# Load Tunes
. Import-ModuleFile -Path "$ModuleRoot\internal\tunes\categories.ps1"
foreach ($file in (Get-ChildItem "$ModuleRoot\internal\tunes\" -Filter "*.tune.ps1" -ErrorAction Ignore -Recurse))
{
	. Import-ModuleFile -Path $file.FullName
}

# Load License
. Import-ModuleFile -Path "$ModuleRoot\internal\scripts\license.ps1"