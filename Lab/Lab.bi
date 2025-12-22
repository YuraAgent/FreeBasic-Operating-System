#include "fbgfx.bi"
Using FB

function Factory_lab(Lab_1 as integer, Lab_2 as integer) as integer
       dim as integer index, offset
       dim as integer FileName 
       dim as string PathName
       
       select case Lab_1
       
       case 1
              
              if index = FileName then
                     
                     Lab_1 = int(index) 
                     
                     PathName = "C:\users\sasha\Desktop\Lab"
                     PathName = "C:\users\sasha\Desktop\Lab\Lab"
                     PathName = "C:\users\sasha\Desktop\Lab\Lab.info"
                     
              end if
              
       case 2
              
              if index >= offset and FileName = index then
                     
                     Lab_2 = int(index)
                     
                     Filename = MkDir(PathName)
                     
              end if
              
       end select
       
       return Lab_1
       return Lab_2
       
end function

Sub Extent_Config()
       
       dim as integer set, offset
       dim as integer i, j
       set = offset * 7
       
       for i = 0 to 1
              
              for j = 0 to 2
                     
                     if offset + i or offset = i mod 3 then
                            
                            set = int(i)
                            
                            set = int(j)
                            
                     end if
                     
              next
              
       next
       
end sub
Factory_lab(1,2)
Extent_Config()