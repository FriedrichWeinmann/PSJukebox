Register-PSJTune -Name 'Eponas Song' -Category tune -Description "Look at Epona go!"  -Scriptblock {
    Invoke-PSJBeep -Height 587.330 -Length 250
    Invoke-PSJBeep -Height 493.883 -Length 250
    Invoke-PSJBeep -Height 440 -Length 1000
    Invoke-PSJBeep -Height 587.330 -Length 250
    Invoke-PSJBeep -Height 493.883 -Length 250
    Invoke-PSJBeep -Height 440 -Length 1000
    Invoke-PSJBeep -Height 587.330 -Length 250
    Invoke-PSJBeep -Height 493.883 -Length 250
    Invoke-PSJBeep -Height 440 -Length 500
    Invoke-PSJBeep -Height 493.883 -Length 500
    Invoke-PSJBeep -Height 440 -Length 1500
}
