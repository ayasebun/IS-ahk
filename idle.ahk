#SingleInstance force
DetectHiddenWindows, On
SetControlDelay, 10

^Space:: ; Start Script

trigger=0
#IfWinActive Idle Skilling
while trigger = 0
{
    ControlFocus,, Idle Skilling
    ; Attack Menu
    ControlSend,, {1}{2}{3}{4}{5}, Idle Skilling
    sleep, 3000
    ; Special Attack Menu
    ControlSend,, {w}, Idle Skilling
    sleep, 500
    ControlSend,, {1}{2}, Idle Skilling
    sleep, 500
    ; Back to main menu
    ControlSend,, {q}, Idle Skilling
    sleep, 500
    ; Buff Menu
    ControlSend,, {q}, Idle Skilling
    sleep, 500
    ; Always assume that Midas is up. Spam the shit out of click anyways bc its not like its going to do anything.
    ControlSend,, {1}{2}{3}{4}{5}, Idle Skilling
    ControlClick,, Idle Skilling,,, 175, NA
    ; Attack Menu
    sleep, 500
    ControlSend,, {q}, Idle Skilling
    sleep, 500
}
return

; Pause scriptQ
^q::trigger=1

; Bail
+q::ExitApp
