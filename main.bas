#include "GUI.bas"
#include "fbgfx.bi"
Using Fb

dim as integer wx = 640, hy = 480
screenres wx, hy

const ButtonX = 0
const ButtonY = 0

Sub Mouse(x as integer, y as integer)
    line(x,y)-(x + 3,y + 8),4
    line(x,y)-(x + 8,y + 3),4
    line(x + 10,y + 10)-(x,y),4
end sub

Setmouse ,, 0
do
    screenlock()
    cls
    Desktop_color()
    
    dim as integer x,y
    dim as integer mx, my, mb
    getmouse(mx,my,,mb)
    
    'Setup main system
    Panel()
    
    Button(x,y): Version_Tag() :Digital_Clock()
    
    Mouse(mx,my)'setup mouse
    
    screenunlock()
    sleep 18
    
loop