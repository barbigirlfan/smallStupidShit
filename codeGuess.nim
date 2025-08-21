# It was something i made so me and my friends could raid random peoples kahoot lobies as you can see, its unfinished 

import random, os, threadpool # it has multithreading so the 1 minute timer can work :3

var guessedInts: seq[int] = @[]

proc timerExit() =
  # Sleep for 1 minute:
  sleep(60000)
  quit(0)
spawn timerExit()
while true:
  var 
    searchInt: int = rand(1000000 .. 9999999)
  if searchInt notin guessedInts:
    guessedInts.add(searchInt)
  echo searchInt
  echo guessedInts
  echo guessedInts.len()
