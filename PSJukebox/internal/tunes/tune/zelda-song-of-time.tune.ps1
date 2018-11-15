Register-PSJTune -Name 'Song of Time' -Category tune -Description "Break out the ol' Ocarina..."  -Scriptblock {
    Invoke-PSJBeep -Height 440 -Length 500
    Invoke-PSJBeep -Height 293.228 -Length 1000
    Invoke-PSJBeep -Height 349.228 -Length 500
    Invoke-PSJBeep -Height 440 -Length 500
    Invoke-PSJBeep -Height 293.228 -Length 1000
    Invoke-PSJBeep -Height 349.228 -Length 500
    Invoke-PSJBeep -Height 440 -Length 250
    Invoke-PSJBeep -Height 523.251 -Length 250
    Invoke-PSJBeep -Height 493.833 -Length 500
    Invoke-PSJBeep -Height 391.995 -Length 500
    Invoke-PSJBeep -Height 349.228 -Length 250
    Invoke-PSJBeep -Height 391.995 -Length 250
    Invoke-PSJBeep -Height 440 -Length 500
    Invoke-PSJBeep -Height 293.228 -Length 500
    Invoke-PSJBeep -Height 261.626 -Length 250
    Invoke-PSJBeep -Height 329.628 -Length 250
    Invoke-PSJBeep -Height 293.665 -Length 1000
}
