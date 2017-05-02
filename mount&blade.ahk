;Author: Ahmed Moussa <moussa.ahmed95@gmail.com
;License: MIT
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#IfWinActive Mount&Blade
n := 0
loop 
{
	if global n = 1
	{
		send, {LControl down}
		sleep, 1
		send, {h down}
		sleep, 1
		send, {h up}
		sleep, 1
		;send, {LShift down}
		;sleep, 1
		;send, {h down}
		;sleep, 1
		;send, {h up}
		;sleep, 1
		;send, {LShift up}
		;sleep, 1
		send, {LControl up}
	}
}
^f::
	Loop, 100
	{
		send, {LControl down}
		sleep, 1
		send, {x down}
		sleep, 1
		send, {x up}
		sleep, 1
		send, {LControl up}
	}
^h::
	if global n = 0
	{
		global n := 1
	}
	else
	{
		global n := 0
	}
#IfWinActive
return
