WinActivate, ahk_exe TslGame.exe
WinGetActiveStats, Title, Width, Height, X, Y
MsgBox, The active window "%Title%" is %Width% wide`, %Height% tall`
i := 3 ; Number of iterations that the script will run per key press

Loop
{
    if (GetKeyState("NumpadAdd", P) = 1 and i < 10) ; Add 1 iteration
    {
        While GetKeyState("NumpadAdd") ; Prevents more than one iteration of the addition to occur
        {
        }
        i++
    }
    if (GetKeyState("NumpadSub", P) = 1 and i > 1) ; Sub 1 iteration
    {
        While GetKeyState("NumpadSub") ; Prevents more than one iteration of the subtraction to occur
        {
        }
        i-- 
    }
    if (GetKeyState("RControl", P) = 1) ; Display how many iterations will run
    {
        MsgBox %i%
    }
    
    if (WinActive("ahk_exe TslGame.exe") and GetKeyState("``", P) = 1) ; Checks to see if game is active and ` is pressed before running script
    {
        Loop i
        {
            ; MouseClickDrag, Left, 215, 160, 940, 300, 5 1080p Display
            ; MouseClickDrag, Left, 215, 230, 940, 300, 5 1440p Display
            
            ; This needs testing on 1080p monitors
            MouseClickDrag, Left, Width / 9, Height / 6.25, Width / 2.5, Height / 4, 5 ; Scaled resolution display
        }
    }
}                                                       
return

j:: ; Exit script by pressing j
    ExitApp
return