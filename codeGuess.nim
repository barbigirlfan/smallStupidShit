import random, os, threadpool

var guessedInts: seq[int] = @[]

proc timerExit() =
  # Sleep for 1 second:
  sleep(60000)
  # Exit program with status 0 (success). You can use quit(code) for other codes.
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
