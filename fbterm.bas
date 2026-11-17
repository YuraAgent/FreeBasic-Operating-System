rem FbText terminal assing by the Cshell os

#include "dir.bi"
#include "fbgfx.bi"
using FB
dim as integer x = 20, y = 50
sub commandShow
     print ">";
end sub
sub ifaprograms
     print "*>";
end sub
width y,x
print "Welcome to FBterm"
do
     screenlock
     dim as string cmd,prog,opr,fsystemfile,usrcreateFolder,usrremoveFolder
     dim as integer num1, num2, result, proc,a,b
     rem Add variable search
     var filesearch = fbDirectory or fbHidden or fbSystem or fbArchive or fbReadOnly
     outofcmd:
     commandShow
     input "",cmd
     if cmd = "about version" then
          print
          print "FreeBasic Terminal by SkyFerest"
          print "Version v0_0.4"
          print
     elseif cmd = "exit" then
          end
     elseif cmd = "run" then
          if fsystemfile = ".\main.exe" then
              shell fsystemfile
          elseif fsystemfile <> ".\main.exe" then
              print "ERR: openning file FBOS please try again!"
          end if
     elseif cmd = "echo" then
          input "Write a text there: ",cmd
          print cmd
     elseif cmd = "time" then
          print time
     elseif cmd = "proccess" then
          print using "#. #"; proc
     elseif cmd = "cls" then
          cls
     elseif cmd = "color" then
          input "Set a youre color for foreground:",a
          input "Set a youre color for backround:",b
          if a <> a and b <> b then
              color 15,0
          else
              color a,b
          end if
     elseif cmd = "help" then
         print "All command in version v0_0.4"
         print "HELP - taken a just help commands"
         print "TIME - show a time"
         print "CLS - cleared screen"
         print "PROCCESS - show a proccess table"
         print "ABOUT VERSION - showcase a current version"
         print "ECHO - startup a echo"
         print "DIR - show a directory"
         print "RUN - start a system"
         print "COLOR - set a color for term [foreground] and [backround] if just pressed key then color are default"
         print "MAKE DIR(MK or MKDIR) - create a dirrectory"
         print "REMOVE DIR(RM or RMDIR) - remove a dirrectory"
         print "TEM SIZE - change a window size. Default is a (50 - y,20 - x)"
         print "EXIT - exit a FBTERM"
         
     elseif cmd = "calc" then
          ifaprograms
          clc_try_again:
          input "",num1,opr,num2
          select case opr
          case "+"
               result=num1+num2
          case "-"
               result=num1-num2
          case "*"
               result=num1*num2
          case else
               color 4
               print "E:";
               color 15
               print "Wrong operation! Try again."
               goto clc_try_again
          end select
          print result
     elseif cmd = "dir" then
         var Atrr = 0
         var curfile = dir("*.*",filesearch,Atrr)
            while curfile>""
                if Atrr and fbArchive then
                    print curfile
                end if
                if Atrr and fbDirectory then
                    print curfile 
                end if
                curfile = dir(Atrr)
            wend
     elseif cmd = "make dir" then
             input "Write name for new folder:",usrcreateFolder
             if err <> 0 then : print "You cannot create a unamed folder!" : end if
             mkdir(usrcreateFolder)
     elseif cmd = "remove dir" then
             input "Enter to name for remove folder:",usrremoveFolder
             if err <> 0 then : print "You cannot delete a unamed folder!" : end if
             rmdir(usrremoveFolder)
     elseif cmd = "term size" then
             Input "Change a window size:", y,x
             width y,x
     else
          print "command not found"
     end if
     screenunlock
     sleep 100,1
loop