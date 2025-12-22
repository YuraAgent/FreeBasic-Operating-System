#include "fbgfx.bi"
Using Fb

Sub Panel()
    
    Draw "BM 1,1"
    Draw "C15"
    Draw "r637 d15 l637 u15"
    Draw "BM +1,1"
    Draw "P 15,15"
    
end sub

Sub Button(x as integer, y as integer)
    
    Draw string (x+10,y+5),"Menu",16
    Draw string (x+55,y+5),"Edit",16
    
end sub

Sub Button_tag(x as integer,y as integer)
    
    Draw "BM " & (x + 0) & "," & (y + 0)
    Draw "C 24"
    Draw "r34 d13 l34 u13"
    Draw "BM +" & (x + 1) & "," & (y + 1)
    Draw "P 24,24"
    
end sub

Sub Arrow_Left()
    
    draw "BM 50,50"
    draw "c22"
    draw "r16 d16 l16 u16"
    draw "BM +1,1"
    draw "P 7,22"
    draw "BM 60,54"
    draw "c0"
    draw "g4 f4"
    
end sub

Sub Arrow_Right()
    
    draw "BM 50,50"
    draw "c22"
    draw "r16 d16 l16 u16"
    draw "BM +1,1"
    draw "P 7,22"
    draw "BM 57,54"
    draw "c0"
    draw "f4 g4"
    
end sub

Sub Arrow_Up()
    
    draw "BM 50,50"
    draw "c22"
    draw "r16 d16 l16 u16"
    draw "BM +1,1"
    draw "P 7,22"
    draw "BM 54,59"
    draw "c0"
    draw "e4 f4"
    
end sub

Sub Arrow_Down()
    
    draw "BM 50,50"
    draw "c22"
    draw "r16 d16 l16 u16"
    draw "BM +1,1"
    draw "P 7,22"
    draw "BM 62,56"
    draw "c0"
    draw "g4 h4"
    
end sub

Sub Arrow_Left_Active()
    
    draw "BM 50,50"
    draw "c22"
    draw "r16 d16 l16 u16"
    draw "BM +1,1"
    draw "P 20,22"
    draw "BM 60,54"
    draw "c15"
    draw "g4 f4"
    
end sub

Sub Arrow_Right_Active()
    
    draw "BM 50,50"
    draw "c22"
    draw "r16 d16 l16 u16"
    draw "BM +1,1"
    draw "P 20,22"
    draw "BM 57,54"
    draw "c15"
    draw "f4 g4"
    
end sub

Sub Arrow_Up_Active()
    
    draw "BM 50,50"
    draw "c22"
    draw "r16 d16 l16 u16"
    draw "BM +1,1"
    draw "P 20,22"
    draw "BM 54,59"
    draw "c15"
    draw "e4 f4"
    
end sub

Sub Arrow_Down_Active()
    
    draw "BM 50,50"
    draw "c22"
    draw "r16 d16 l16 u16"
    draw "BM +1,1"
    draw "P 20,22"
    draw "BM 62,56"
    draw "c15"
    draw "g4 h4"
    
end sub

Sub Desktop_color()
    
    paint (639,479),20
    
end sub

Sub Digital_Clock()
    
    draw string(565,5),time,16
    
end sub

Sub Version_Tag()
    
    draw String(280,5),"V0.1_Alpha",16
    
end sub