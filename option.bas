#include "GUI.bas"
WindowTitle "FreeBasicOS"
rem Create {Type} Event
Type event
    mxx as integer
    xx as integer
    myy as integer
    yy as integer
    inclipt as integer
    flux_step as double
end type
rem Create {Type} Event Button for Mouse
Type event_button
    Msx as integer
    Msy as integer
    specifical as integer
    triger as integer
    choise as integer
end type
rem Create {Type} Remove glitch technical mouse
Type Ignore_place
    Jump_mb as integer
    Whait_release_mb as integer
end type