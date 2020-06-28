#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


#Persistent			; This keeps the script running permanently.
#SingleInstance		; Only allows one instance of the script to run.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Win+A to change Audio Playback Device
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;Switching audio outputs taken from: https://theitbros.com/hotkey-to-switch-audio-devices/
;ALT + E switch to Edifier H840 + FiiO K1 DAC
#e::
Run, mmsys.cpl
WinWait,Sound
ControlSend,SysListView321,{Down 1}
ControlClick,&Set Default
ControlClick,OK
return

;ALT + E switch to Fantech Hellscream GS201
#f::
Run, mmsys.cpl
WinWait,Sound
ControlSend,SysListView321,{Down 3}
ControlClick,&Set Default
ControlClick,OK
return

;WIN + Q to input tilde (~) character
!q::
Send, {~}
return

;CTRL + Q to input grave (`) character
^q::
Send, ``
return