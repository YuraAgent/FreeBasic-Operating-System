rem https://github.com/YuraAgent/FreeBasic-Operating-System/releases
windowtitle "FB-OS A-v0.3"
#include "GUI.bas"
#include "fbgfx.bi"

using FB

Const wx = 640
const hy = 480

screenres wx, hy

dim bt1 as ButtonTrigger 
bt1.ButtonX = 8
bt1.ButtonY = 2

dim bt2 as ButtonTrigger
bt2.ButtonX = 54
bt2.ButtonY = 2

dim clkbt as ButtonTrigger
clkbt.ButtonX = 73
clkbt.ButtonY = 2
Setmouse 310,245, 0

dim as integer x,y,ButtonX,ButtonY
dim as integer ButtonX2, ButtonY2, ClkX,ClkY
dim as integer mx, my, mb
dim as integer end_integer = 0
dim as integer last_mb = 0
do
    screenlock
    cls
    Desktop_color()
    
    getmouse mx, my,, mb
    
    'Setup main system
    Panel()
    'Setup panel and choise-box
    if last_mb = 0 then
        if mb = 1 then
            if mx > ButtonX + 7 and mx < ButtonX + bt1.ButtonX + 34 and _
                my > ButtonY and my < ButtonY + bt1.ButtonY + 15 then
                end_integer = not end_integer
                Button_tag(bt1.ButtonX,bt1.ButtonY)
            elseif last_mb = -1 then
                if not mx > ButtonX + 7 and mx < ButtonX + bt1.ButtonX + 34 and _
                    my > ButtonY and my < ButtonY + bt1.ButtonY + 15 then
                    end_integer = 0
                end if
            end if
        end if
    else
        last_mb = 1
    end if
    if end_integer then
        Tag_list(0,7)
    end if
    if mx > ButtonX2 + 54 and mx < ButtonX2 + bt2.ButtonX + 34 and _ 
        my > ButtonY2 and my < ButtonY2 + bt2.ButtonY + 15 then
        if mb = 1 then
            Button_tag2(bt2.ButtonX,bt2.ButtonY)
        end if
        last_mb = not mb
    end if
    
    if mx > ClkX + 562 and mx < ClkX + clkbt.ButtonX + 600 and _
        my > ClkY and my < ClkY + clkbt.ButtonY + 11 then
        if mb = 1 then
            Clock_button_tag(clkbt.ButtonX,clkbt.ButtonY)
        end if
        last_mb = not mb
    end if
    
    
    Button(x,y)'Set current name Button
    Version_Tag() :
    Digital_Clock()
    
    Mouse(mx,my)'setup mouse
    
    screenunlock
    sleep 16, 1
loop until multikey(SC_ESCAPE)
