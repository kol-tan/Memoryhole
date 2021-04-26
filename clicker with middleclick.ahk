toggle:=!toggle

~LButton & RButton::
toggle:=toggle
Send, {MButton Down}
KeyWait, RButton, U
Send, {MButton Up}
Return

$w::
toggle:=toggle
Send, {w Down}
KeyWait w, T0.2
While (GetKeyState("w", "P") and GetKeyState("LButton", "P"))
{
Send, {w Up}
Send, {LButton Down}
Sleep 200  ;  milliseconds
Send, {LButton Up}
Send, {w Down}
sleep 200
}
KeyWait, RButton, U
Send, {w Up}
return

~LButton::
KeyWait LButton, T0.5
While (toggle and GetKeyState("LButton", "P"))
{
Click
Sleep 100  ;  milliseconds
}
return

$1::
Send, 12345
Return
