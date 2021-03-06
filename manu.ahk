#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;-------Switching audio outputs------------------------------

;From: https://theitbros.com/hotkey-to-switch-audio-devices/
;Warning:
; Inputting this hotkey in applications that are in fullscreen mode may cause the program to minimize
; Windowed mode or borderless fullscreen mode is recommended, or input hotkey before launching program that uses fullscreen mode

;--->"WIN + Z" switch to PC Headphones
#z::
Run, mmsys.cpl
WinWait,Sound
ControlSend,SysListView321,{Down 1}
ControlClick,&Set Default
ControlClick,OK
return

;--->"WIN + X" switch to PC Speakers
#x::
Run, mmsys.cpl
WinWait,Sound
ControlSend,SysListView321,{Down 3}
ControlClick,&Set Default
ControlClick,OK
return

;-------------------------------------------------------------


;From: http://xahlee.info/mswin/autohotkey.html
;From: https://www.isunshare.com/windows-10/5-ways-to-open-snipping-tool-in-windows-10.html
;--->"ALT + X" to run Snipping Tool
!x::Run snippingtool


;---------Custom Profile for Motospeed CK61------------------

;--->"ALT + Q" to input tilde (~) character
!q::
Send, {~}
return

;--->"CTRL + Q" to input grave (`) character
^q::
Send, ``
return

;From: https://www.autohotkey.com/boards/viewtopic.php?t=43380
;--->"CTRL + ," to input delete key
^,::
Send {Delete}
return

;--->"CTRL + ." to input end key
^.::
Send {End}
return

;--->"CTRL + l" to input home key
^l::
Send {Home}
return

;--->"LSHIFT + ARROW UP" to input question mark, no need to toggle FN + 3 for "question mark" mode
<+Up::
Send ?
return

;--->"RSHIFT + ARROW UP" to input forward slash, no need to toggle FN + 3 for "forward slash" mode
>+Up::
Send /
return

;From: https://www.autohotkey.com/boards/viewtopic.php?t=5565
;--->"WIN + Q" closes active window
#q:: ;
WinGetTitle, Title, A
PostMessage, 0x112, 0xF060,,, %Title%
return


;------->Function Keys Customization<-------
; No need to toggle FN + 1 for function key mode

;--->"ALT + 1" to input F1
!1::
Send {F1}
return

;--->"ALT + 2" to input F2
!2::
Send {F2}
return

;--->"ALT + 3" to input F3
!3::
Send {F3}
return

;--->"ALT + 4" to input F4
; Instead of using ALT + F4 to close active window use WIN + Q(quit) instead, see above hotkey
; Since "ALT + 4 = F4" you cannot input "ALT + F4"
!4::
Send {F4}
return

;--->"ALT + 5" to input F5
!5::
Send {F5}
return

;--->"ALT + 6" to input F6
!6::
Send {F6}
return

;--->"ALT + 7" to input F7
!7::
Send {F7}
return

;--->"ALT + 8" to input F8
!8::
Send {F8}
return

;--->"ALT + 9" to input F9
!9::
Send {F9}
return

;--->"ALT + 0" to input F10
!0::
Send {F10}
return

;--->"ALT + -" to input F11
!-::
Send {F11}
return

;--->"ALT + =" to input F12
!=::
Send {F12}
return

;--->End of Function Keys Customization<---


;------------------------------------------------------------
