rem https://github.com/YuraAgent/FreeBasic-Operating-System/releases
dim as integer logfile=freefile
#define CPU_SPEED 20
width 40, 10
#if (CPU_SPEED >= 300)
 print "WARNING: High gate!"
#endif
dim as long memory_cash = 200
print "Cpu:" & CPU_SPEED
print "Memmory:" & memory_cash
if memory_cash > 8000 then
        print "High memmory!"
end if
windowtitle "FB-OS A-v0.3.1"
#include "GUI.bas"
#include "fbgfx.bi"

using FB
dim as integer cpr_or_memmory = CPU_SPEED or memory_cash
Const wx = 640
const hy = 480
dim as integer usr_entryes
open "User\Root\log.txt" for binary access write as #logfile
        put #logfile,, "Date and time:" & time & date
        put #logfile,, "Vissiting:" & usr_entryes
        put #logfile,, "Warning:" & cpr_or_memmory
    close #logfile
    
screenres wx, hy
dim as integer mx, my
Type ButtonTrigger
    ButtonX as ushort
    ButtonY as ushort
end type  
Sub Mouse(x as integer, y as integer)
    line(x,y)-(x + 2,y + 7),4:line(x,y)-(x + 7,y + 2),4:line(x + 10,y + 10)-(x,y),4
end sub

dim bt1 as ButtonTrigger 
bt1.ButtonX = 1
bt1.ButtonY = 1

dim bt2 as ButtonTrigger
bt2.ButtonX = 48
bt2.ButtonY = 1

dim clkbt as ButtonTrigger
clkbt.ButtonX = 73
clkbt.ButtonY = 2

dim bt3 as ButtonTrigger
bt3.ButtonX = 98
bt3.ButtonY = 1


dim SHt_Button_ok as ButtonTrigger
SHt_Button_ok.ButtonX = 263
SHt_Button_ok.ButtonY = 264
dim SHt_Button_Cancel as ButtonTrigger
SHt_Button_Cancel.ButtonX = 343
SHt_Button_Cancel.ButtonY = 264
rem Tag_list(0,7)
Setmouse 310,245, 0
dim as integer LastPressed = 0, tag_active = 0
do
        
    screenlock
    cls
    Desktop_color()
    dim as integer x,y
    dim as integer last_mb = 0
    dim as integer mousebutton
    getmouse mx, my,, mousebutton
    usr_entryes = +1
    'Setup main system
    if multikey(SC_ESCAPE) then lastpressed = 1
    if lastPressed = 0 then
            lastpressed = not lastpressed
            memory_cash = +1
    elseif lastpressed = 1 then
            ContentsForTheShutDown()
            if last_mb = 0 then
                if mousebutton and 1 then
                        if mx <= SHt_Button_ok.ButtonX + 53 and mx >= SHt_Button_ok.ButtonX and my <= SHt_Button_ok.ButtonY + 16 and my >= SHt_Button_ok.ButtonY then
                                ButtonSHT_tag(SHt_Button_ok.ButtonX,SHt_Button_ok.ButtonY)
                                end
                        elseif not mx <= SHt_Button_ok.ButtonX + 53 and mx >= SHt_Button_ok.ButtonX and my <= SHt_Button_ok.ButtonY + 16 and my >= SHt_Button_ok.ButtonY then
                                last_mb = 0
                        end if
                        if mx <= SHt_Button_Cancel.ButtonX + 53 and mx >= SHt_Button_Cancel.ButtonX and my <= SHt_Button_Cancel.ButtonY + 16 and my >= SHt_Button_Cancel.ButtonY then
                                ButtonSHT_tag(SHt_Button_Cancel.ButtonX,SHt_Button_Cancel.ButtonY)
                                lastpressed = 0
                                memory_cash = -1
                        elseif not mx <= SHt_Button_Cancel.ButtonX + 53 and mx >= SHt_Button_Cancel.ButtonX and my <= SHt_Button_Cancel.ButtonY + 16 and my >= SHt_Button_Cancel.ButtonY then
                                last_mb = 0
                        end if
                        last_mb = not last_mb
                end if
            end if
            Button_Action()
    end if
    Panel()
    'Setup panel and choise-box
    if last_mb = 0 then
            if mousebutton and 1 then
                    if mx <= bt1.ButtonX + 46 and mx >= bt1.ButtonX and my <= bt1.ButtonY + 15 and my >= bt1.ButtonY then
                            Button_tag(bt1.ButtonX,bt1.ButtonY)
                    elseif not mx <= bt1.ButtonX + 46 and mx >= bt1.ButtonX and my <= bt1.ButtonY + 15 and my >= bt1.ButtonY then
                            last_mb = 0
                    end if
                    last_mb = not last_mb
                    if mx <= bt2.ButtonX + 49 and mx >= bt2.ButtonX and my <= bt2.ButtonY + 15 and my >= bt2.ButtonY then
                            Button_tag2(bt2.ButtonX,bt2.ButtonY)
                    elseif not mx <= bt2.ButtonX + 49 and mx >= bt2.ButtonX and my <= bt2.ButtonY + 15 and my >= bt2.ButtonY then
                            last_mb = 0
                    end if
                    last_mb = not last_mb
                    if mx <= bt3.Buttonx + 52 and mx >= bt3.ButtonX and my <= bt3.ButtonY + 15 and my >= bt3.ButtonY then
                             Button_tag3(bt3.ButtonX,Bt3.ButtonY)
                    elseif not mx <= bt3.Buttonx + 52 and mx >= bt3.ButtonX and my <= bt3.ButtonY + 15 and my >= bt3.ButtonY then
                             last_mb = 0
                    end if
                    last_mb = not last_mb
            end if
    end if
    line(48,0)-(48,16),16
    line(98,0)-(98,16),16
    line(150,0)-(150,16),16
    Button(x,y)'Set current name Button
    Version_Tag() :
    Digital_Clock()
    
    Mouse(mx,my)'setup mouse
    
    screenunlock
    sleep CPU_SPEED, 1
loop
