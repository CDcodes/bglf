; Loop to detect tab event
Loop
{   
    if (GetKeyState("Tab", P) = 1)
    {
        CoordMode, Mouse, Relative
        MouseClickDrag, Left, 300, -100, 100, -100, 2
    }
}                                                       
return

; Hotkey to exit script
^f::
    ExitApp
return