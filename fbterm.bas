rem FbText terminal assing by the Cshell os
rem It's not for QuickBasic!
width 50,20
sub commandShow
     print ">";
end sub
sub ifaprograms
     print "*>";
end sub

print "Welcome to FBterm"
do
     screenlock
     dim as string cmd,prog,opr
     dim as integer num1, num2, result, proc
     outofcmd:
     for i as integer = 0 to 15
          print "*";
     next i
     print
     commandShow
     input cmd
     if cmd = "about version" then
          print
          print "FreeBasic Terminal by SkyFerest"
          print "Version v0_0.2"
          print
     elseif cmd = "exit" then
          end
     elseif cmd = "sys" then
          shell ".\main.exe"
     elseif cmd = "echo" then
          input "Write to copy text:",cmd
          print cmd
     elseif cmd = "time" then
          print time
     elseif cmd = "proccess" then
          print proc & ". term"
     elseif cmd = "calc" then
          ifaprograms
          clc_try_again:
          input num1
          ifaprograms
          input opr
          ifaprograms
          input num2
          select case opr
          case "+"
               result=num1+num2
          case "-"
               result=num1-num2
          case "*"
               result=num1*num2
          case else
               color 4
               print "E:"
               color 15
               print "Wrong operation! Try again.";
               goto clc_try_again
          end select
          print result
     else
          print "command not found"
     end if
     
     screenunlock
     sleep 100,1
loop
