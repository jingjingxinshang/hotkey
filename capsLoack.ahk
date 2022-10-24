;管理员运行
if not A_IsAdmin
{
   Run *RunAs "%A_ScriptFullPath%" 
   ExitApp
}
 
;无环境变量
#NoEnv
 
SetCapsLockState, AlwaysOff  
SetStoreCapslockMode,Off
 
;高进程
Process Priority,,High
 
CapsLock::
KeyWait, CapsLock, T0.3
If ErrorLevel {
    Send, {Capslock}
    KeyWait, CapsLock
} else {
    ;DllCall("SendMessage", UInt, WinActive("A"), UInt, 80, UInt, 1, UInt, DllCall("ActivateKeyboardLayout", UInt, 1, UInt, 256))
    Send, {Ctrl}^{Space}
}
Return

$!c::
	SendInput {Ctrl Down}{c}{Ctrl Up}
Return
$!x::
	SendInput {Ctrl Down}{x}{Ctrl Up}
Return
$!v::
	SendInput {Ctrl Down}{v}{Ctrl Up}
Return
$!a::
	SendInput {Ctrl Down}{a}{Ctrl Up}
Return
$!s::
	SendInput {Ctrl Down}{s}{Ctrl Up}
Return
$!w::
	SendInput {Ctrl Down}{w}{Ctrl Up}
Return
$!z::
	SendInput {Ctrl Down}{z}{Ctrl Up}
Return
$!r::
	SendInput {Ctrl Down}{r}{Ctrl Up}
Return
$!t::
	SendInput {Ctrl Down}{t}{Ctrl Up}
Return
$!q::
	SendInput {Alt Down}{F4}{Alt Up}
Return
$!f::
	SendInput {Ctrl Down}{f}{Ctrl Up}
Return
$!/::
	SendInput {Ctrl Down}{/}{Ctrl Up}
Return
$^a::
	SendInput {Home}
Return
$^e::
	SendInput {End}
Return
$^u::
	SendInput {Shift Down}{Home}{Shift Up}{Backspace Down}{Backspace Up}
Return
$!LButton::
	SendInput {Ctrl Down}{Click Left}{Ctrl Up}
Return