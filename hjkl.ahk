#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetCapsLockState, AlwaysOff

CapsLock & h::Send, {blind}{Left}
CapsLock & j::Send, {blind}{Down}
CapsLock & k::Send, {blind}{Up}
CapsLock & l::Send, {blind}{Right}

CapsLock & i::Send, {blind}{Insert}
CapsLock & o::Send, {blind}{Delete}
CapsLock & p::Send, {blind}{BackSpace}
CapsLock & u::Send, {blind}{Escape}

RShift & LShift::Send, {blind}{CapsLock} 
LShift & RShift::Send, {blind}{CapsLock}

CapsLock & <::ShiftAltTab
CapsLock & >::AltTab

CapsLock & Enter::Run Arch.exe
;CapsLock & \::Send !{f4}
CapsLock & \:: WinClose, A

CapsLock & Space::
   WinGet MX, MinMax, A
   If MX
        WinRestore A
   Else WinMaximize A

#NoTrayIcon