; Custom Text Expander Library

; Script setep

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force
#NoTrayIcon
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Hotstring C R

; hotstrings

::;nws::
(
This is a multi-line snippet.
It is inserted when I type ;nws and hit the tab key.
try it!
)

::;sma::Status Meeting Agenda

::;smm::Please see the attached meeting minutes from yesterday’s status meeting.

::;email::
(
Dear Bill,

Please review the attached files.

Thanks,
)

return