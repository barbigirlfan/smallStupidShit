import os, osproc, parseutils
#asking user for what files to change and to what
echo "what files are being changed"
let inputExtension = readLine(stdin)
echo "to what will those files be changed to"
let outputExtension = readLine(stdin)

#looking for the files (the loop variable is song as this was made to turn m4a files into mp3)
for song in walkFiles("/home/[YOUR NAME]/[WORKING DIRECTORY]/*" & inputExtension): #for some reason the ~/ shortcut to the home dir broke the code :( so you have to do the complete dir name
  var showUser = execCMD("ffmpeg -i " & song & " " & song & "." & outputExtension) #yes this makes it so that file.mp4 turns into file.mp4.mp3 didnt feel like making it remove the extetion
  echo showUser
