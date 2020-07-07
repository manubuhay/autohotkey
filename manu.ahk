#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;Switching audio outputs taken from: https://theitbros.com/hotkey-to-switch-audio-devices/
;WIN + Z switch to Edifier H840 + FiiO K1 DAC
#z::
Run, mmsys.cpl
WinWait,Sound
ControlSend,SysListView321,{Down 1}
ControlClick,&Set Default
ControlClick,OK
return

;WIN + X switch to Fantech Hellscream GS201
#x::
Run, mmsys.cpl
WinWait,Sound
ControlSend,SysListView321,{Down 3}
ControlClick,&Set Default
ControlClick,OK
return

;From: http://xahlee.info/mswin/autohotkey.html
;From https://www.isunshare.com/windows-10/5-ways-to-open-snipping-tool-in-windows-10.html
;ALT + X to run Snipping Tool
!x::Run snippingtool

;---------Custom hotkeys for Motospeed CK61------------------

;ALT + Q to input tilde (~) character
!q::
Send, {~}
return

;CTRL + Q to input grave (`) character
^q::
Send, ``
return

;From: https://www.autohotkey.com/boards/viewtopic.php?t=43380
;CTRL + , to input delete key
^,::
Send {Delete}
return

;CTRL + , to input end key
^.::
Send {End}
return

;CTRL + l to input home key
^l::
Send {Home}
return

;SHIFT + ARROW UP to input question mark, no need to toggle FN + 3 for "question mark" mode
+Up::
Send ?
return

;ALT + ARROW UP to input forward slash, no need to toggle FN + 3 for "forward slash" mode
!Up::
Send /
return

;------------------------------------------------------------
