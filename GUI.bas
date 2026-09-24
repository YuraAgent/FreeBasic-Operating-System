Sub Panel()
    Draw "BM 1,1":Draw "C15":Draw "r637 d15 l637 u15":Draw "BM +1,1":Draw "P 15,15"
end sub
Sub Exclamatory_Tag(First_CircleX as integer, First_CircleY as integer, Circle_AnglePosX as single, Circle_AnglePosY as single, EX_posX as integer, EX_posY as integer)
        circle(First_CircleX,First_CircleY),15,1,,,,F
        circle(First_CircleX,First_CircleY),15,15
        circle(Circle_AnglePosX,Circle_AnglePosY),5,15,,,4,F
        circle(EX_posX,EX_posY),2,15,,,,f
end sub
Sub Button(x as integer, y as integer)
    Draw string (x+9,y+5),"Menu",16:Draw string (x+58,y+5),"Edit",16
    Draw string (x+109,y+5),"View",16
end sub
Sub ShutDown_Window(x as integer, y as integer)
        draw "BM " & (x+238) & "," & (y+188):draw "C15":draw "R180 D100 L180 U100":draw "BM +1,1":draw "P 27,15"
        
        draw "BM " & (x+238) & "," & (y+188):draw "C15":draw "R180 D13 L180 U13":draw "BM +1,1":draw "P 28,15"
        
        draw "BM " & (x+343) & "," & (y+264):draw "C28":draw "R53 D16 L53 U16":draw "BM +1,1":draw "P 31,28"
        
        draw "BM " & (x+263) & "," & (y+264):draw "C28":draw "R53 D16 L53 U16":draw "BM +1,1":draw "P 31,28"
        
        draw string(x + 242, y + 192),"Shutdown",16
        draw string(x + 283, y + 223),"Turn off system?",16
end sub
Sub Button_Action()
        dim x as integer, y as integer
        draw string(x + 347, y + 269),"Cancel",16
        draw string(x + 283, y + 269),"Ok",16
end sub
Sub ContentsForTheShutDown()
        ShutDown_Window(0,0)
        Exclamatory_Tag(260, 226, 261.4, 223, 261, 234)
end sub
Sub Button_tag(x as integer,y as integer)
    draw "BM " & x & "," & y:draw "C24":draw "R46 D15 L46 U15":draw "BM +1,1":draw "P 24,24"
end sub
Sub ButtonSHT_tag(x as integer,y as integer)
    draw "BM " & x & "," & y:draw "C0":draw "R53 D16 L53 U16":draw "BM +1,1":draw "P 24,0"
end sub
Sub Button_tag2(x as integer,y as integer)
    draw "BM " & x & "," & y:draw "C24":draw "R49 D15 L49 U15":draw "BM +1,1":draw "P 24,24"
end sub
sub Button_tag3(x as integer,y as integer)
        draw "BM " & x & "," & y:draw "C24":draw "R52 D15 L52 U15":draw "BM +1,1":draw "P 24,24"
end sub
Sub Clock_button_tag(x as integer,y as integer)
    draw "BM 560,2":draw "C0":draw "R73 D13 L73 U13":draw "BM +1,1":draw "P 24,0"
end sub

Sub Storage(x as integer, y as integer)
    draw "BM " & x + 9 & "," & y + 40:draw "C6":draw "R12 D6 L12 U6":draw "BM +1,1":draw "P 6,6"
    draw "BM " & x + 9 & "," & y + 45:draw "C14":draw "R35 D23 L35 U23":draw "BM +1,1":draw "P 14,14"
    draw string (x+12,y+73),"Root",0
end sub

Sub Arrow_Left()
    draw "BM 50,50":draw "c22":draw "r16 d16 l16 u16":draw "BM +1,1":draw "P 7,22":draw "BM 60,54":draw "c0":draw "g4 f4"
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
    draw String(450,5),"V0.3.1_Alpha",6
end sub

Sub Tag_list(x as integer,y as integer)
    draw "Bm " & (x+8) & "," & (y+10):draw "C8":draw "r75 d48 l75 u48":draw "Bm +1,1":draw "P 15,8":draw string(x+15,y+14),"settings",16
    draw "Bm " & (x+8) & "," & (y+25):draw "C8":draw "r75 l75"
    draw "Bm " & (x+8) & "," & (y+42):draw "C8":draw "r75 l75":draw string(x+30,y+30),"none",16:draw string(x+15,y+47),"shutdown",16
end sub
