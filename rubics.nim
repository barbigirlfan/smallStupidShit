#variables
var
  front: seq[string] = @[
    "\e[38;5;196m*\e[0m", "\e[38;5;196m*\e[0m", "\e[38;5;196m*\e[0m",
    "\e[38;5;196m*\e[0m", "\e[38;5;196m*\e[0m", "\e[38;5;196m*\e[0m",
    "\e[38;5;196m*\e[0m", "\e[38;5;196m*\e[0m", "\e[38;5;196m*\e[0m"
  ]
  
  back: seq[string] = @[
    "\e[38;5;208m*\e[0m", "\e[38;5;208m*\e[0m", "\e[38;5;208m*\e[0m",
    "\e[38;5;208m*\e[0m", "\e[38;5;208m*\e[0m", "\e[38;5;208m*\e[0m",
    "\e[38;5;208m*\e[0m", "\e[38;5;208m*\e[0m", "\e[38;5;208m*\e[0m"
  ]
  
  left: seq[string] = @[
    "\e[38;5;46m*\e[0m", "\e[38;5;46m*\e[0m", "\e[38;5;46m*\e[0m",
    "\e[38;5;46m*\e[0m", "\e[38;5;46m*\e[0m", "\e[38;5;46m*\e[0m",
    "\e[38;5;46m*\e[0m", "\e[38;5;46m*\e[0m", "\e[38;5;46m*\e[0m"
  ]
  
  right: seq[string] = @[
    "\e[38;5;21m*\e[0m", "\e[38;5;21m*\e[0m", "\e[38;5;21m*\e[0m",
    "\e[38;5;21m*\e[0m", "\e[38;5;21m*\e[0m", "\e[38;5;21m*\e[0m",
    "\e[38;5;21m*\e[0m", "\e[38;5;21m*\e[0m", "\e[38;5;21m*\e[0m"
  ]
  
  top: seq[string] = @[
    "\e[38;5;15m*\e[0m", "\e[38;5;15m*\e[0m", "\e[38;5;15m*\e[0m",
    "\e[38;5;15m*\e[0m", "\e[38;5;15m*\e[0m", "\e[38;5;15m*\e[0m",
    "\e[38;5;15m*\e[0m", "\e[38;5;15m*\e[0m", "\e[38;5;15m*\e[0m"
  ]
  
  bottom: seq[string] = @[
    "\e[38;5;226m*\e[0m", "\e[38;5;226m*\e[0m", "\e[38;5;226m*\e[0m",
    "\e[38;5;226m*\e[0m", "\e[38;5;226m*\e[0m", "\e[38;5;226m*\e[0m",
    "\e[38;5;226m*\e[0m", "\e[38;5;226m*\e[0m", "\e[38;5;226m*\e[0m"
  ]

var
  pfront: seq[string] = @[
    "\e[38;5;196m#\e[0m", "\e[38;5;196m#\e[0m", "\e[38;5;196m#\e[0m",
    "\e[38;5;196m#\e[0m", "\e[38;5;196m#\e[0m", "\e[38;5;196m#\e[0m",
    "\e[38;5;196m#\e[0m", "\e[38;5;196m#\e[0m", "\e[38;5;196m#\e[0m"
  ]
  
  pback: seq[string] = @[
    "\e[38;5;208m$\e[0m", "\e[38;5;208m$\e[0m", "\e[38;5;208m$\e[0m",
    "\e[38;5;208m$\e[0m", "\e[38;5;208m$\e[0m", "\e[38;5;208m$\e[0m",
    "\e[38;5;208m$\e[0m", "\e[38;5;208m$\e[0m", "\e[38;5;208m$\e[0m"
  ]
  
  pleft: seq[string] = @[
    "\e[38;5;46m%\e[0m", "\e[38;5;46m%\e[0m", "\e[38;5;46m%\e[0m",
    "\e[38;5;46m%\e[0m", "\e[38;5;46m%\e[0m", "\e[38;5;46m%\e[0m",
    "\e[38;5;46m%\e[0m", "\e[38;5;46m%\e[0m", "\e[38;5;46m%\e[0m"
  ]
  
  pright: seq[string] = @[
    "\e[38;5;21m&\e[0m", "\e[38;5;21m&\e[0m", "\e[38;5;21m&\e[0m",
    "\e[38;5;21m&\e[0m", "\e[38;5;21m&\e[0m", "\e[38;5;21m&\e[0m",
    "\e[38;5;21m&\e[0m", "\e[38;5;21m&\e[0m", "\e[38;5;21m&\e[0m"
  ]
  
  ptop: seq[string] = @[
    "\e[38;5;15m?\e[0m", "\e[38;5;15m?\e[0m", "\e[38;5;15m?\e[0m",
    "\e[38;5;15m?\e[0m", "\e[38;5;15m?\e[0m", "\e[38;5;15m?\e[0m",
    "\e[38;5;15m?\e[0m", "\e[38;5;15m?\e[0m", "\e[38;5;15m?\e[0m"
  ]
  
  pbottom: seq[string] = @[
    "\e[38;5;226m*\e[0m", "\e[38;5;226m*\e[0m", "\e[38;5;226m*\e[0m",
    "\e[38;5;226m*\e[0m", "\e[38;5;226m*\e[0m", "\e[38;5;226m*\e[0m",
    "\e[38;5;226m*\e[0m", "\e[38;5;226m*\e[0m", "\e[38;5;226m*\e[0m"
  ]
  
# procs for rubiks logic
proc updateMemory() =
  pfront = front
  pback = back
  pleft = left
  pright = right
  ptop = top
  pbottom = bottom



proc rotateCTop() = # ok so take a rubiks cube and rotate a side see how the top of the side rotates. this is the code for that C is clockwise CC is counter clockwise 
  for i in 1 .. 3:
    top[0] = ptop[2]
    top[1] = ptop[5]
    top[2] = ptop[8]
    top[3] = ptop[1]
    top[5] = ptop[7]
    top[6] = ptop[0]
    top[7] = ptop[3]
    top[8] = ptop[6]
    updateMemory()

proc rotateCCTop() =
  for i in 1 .. 3:
    top[2] = ptop[0]
    top[5] = ptop[1]
    top[8] = ptop[2]
    top[1] = ptop[3]
    top[7] = ptop[5]
    top[0] = ptop[6]
    top[3] = ptop[7]
    top[6] = ptop[8]
    updateMemory()

proc rotateCBottom() =
  for i in 1 .. 3:
    bottom[0] = pbottom[2]
    bottom[1] = pbottom[5]
    bottom[2] = pbottom[8]
    bottom[3] = pbottom[1]
    bottom[5] = pbottom[7]
    bottom[6] = pbottom[0]
    bottom[7] = pbottom[3]
    bottom[8] = pbottom[6]
    updateMemory()

proc rotateCCBottom() =
  for i in 1 .. 3:
    bottom[2] = pbottom[0]
    bottom[5] = pbottom[1]
    bottom[8] = pbottom[2]
    bottom[1] = pbottom[3]
    bottom[7] = pbottom[5]
    bottom[0] = pbottom[6]
    bottom[3] = pbottom[7]
    bottom[6] = pbottom[8]
    updateMemory()

proc rotateCRight() =
  for i in 1 .. 3:
    right[0] = pright[2]
    right[1] = pright[5]
    right[2] = pright[8]
    right[3] = pright[1]
    right[5] = pright[7]
    right[6] = pright[0]
    right[7] = pright[3]
    right[8] = pright[6]
    updateMemory()

proc rotateCCRight() =
  for i in 1 .. 3:
    right[2] = pright[0]
    right[5] = pright[1]
    right[8] = pright[2]
    right[1] = pright[3]
    right[7] = pright[5]
    right[0] = pright[6]
    right[3] = pright[7]
    right[6] = pright[8]
    updateMemory()

proc rotateCLeft() =
  for i in 1 .. 3:
    left[0] = pleft[2]
    left[1] = pleft[5]
    left[2] = pleft[8]
    left[3] = pleft[1]
    left[5] = pleft[7]
    left[6] = pleft[0]
    left[7] = pleft[3]
    left[8] = pleft[6]
    updateMemory()

proc rotateCCLeft() =
  for i in 1 .. 3:
    left[2] = pleft[0]
    left[5] = pleft[1]
    left[8] = pleft[2]
    left[1] = pleft[3]
    left[7] = pleft[5]
    left[0] = pleft[6]
    left[3] = pleft[7]
    left[6] = pleft[8]
    updateMemory()

proc rotateCFront() =
  for i in 1 .. 3:
    front[0] = pfront[2]
    front[1] = pfront[5]
    front[2] = pfront[8]
    front[3] = pfront[1]
    front[5] = pfront[7]
    front[6] = pfront[0]
    front[7] = pfront[3]
    front[8] = pfront[6]
    updateMemory()

proc rotateCCFront() =
  for i in 1 .. 3:
    front[2] = pfront[0]
    front[5] = pfront[1]
    front[8] = pfront[2]
    front[1] = pfront[3]
    front[7] = pfront[5]
    front[0] = pfront[6]
    front[3] = pfront[7]
    front[6] = pfront[8]
    updateMemory()

proc rotateCBack() =
  for i in 1 .. 3:
    back[0] = pback[2]
    back[1] = pback[5]
    back[2] = pback[8]
    back[3] = pback[1]
    back[5] = pback[7]
    back[6] = pback[0]
    back[7] = pback[3]
    back[8] = pback[6]
    updateMemory()

proc rotateCCBack() =
  for i in 1 .. 3:
    back[2] = pback[0]
    back[5] = pback[1]
    back[8] = pback[2]
    back[1] = pback[3]
    back[7] = pback[5]
    back[0] = pback[6]
    back[3] = pback[7]
    back[6] = pback[8]
    updateMemory()

# commands for the rubiks (the naming convention is T for top, M for middle, Bo for bottom, L for left, R for right, D for down, U for up wish you luck with reading ts)
proc TL() =
  front[0 .. 2] = pright[0 .. 2]
  left[0 .. 2] = pfront[0 .. 2]
  back[0 .. 2] = pleft[0 .. 2]
  right[0 .. 2] = pback[0 .. 2]
  rotateCTop()
  updateMemory()

proc TR() =
  front[0 .. 2] = pleft[0 .. 2]
  right[0 .. 2] = pfront[0 .. 2]
  back[0 .. 2] = pright[0 .. 2]
  left[0 .. 2] = pback[0 .. 2]
  rotateCCTop()
  updateMemory()

proc ML() =
  front[3 .. 5] = pright[3 .. 5]
  left[3 .. 5] = pfront[3 .. 5]
  back[3 .. 5] = pleft[3 .. 5]
  right[3 .. 5] = pback[3 .. 5]
  updateMemory()

proc MR() =
  front[3 .. 5] = pleft[3 .. 5]
  right[3 .. 5] = pfront[3 .. 5]
  back[3 .. 5] = pright[3 .. 5]
  left[3 .. 5] = pback[3 .. 5]
  updateMemory()

proc BoL() =
  front[6 .. 8] = pright[6 .. 8]
  left[6 .. 8] = pfront[6 .. 8]
  back[6 .. 8] = pleft[6 .. 8]
  right[6 .. 8] = pback[6 .. 8]
  rotateCCBottom()
  updateMemory()

proc BoR() =
  front[6 .. 8] = pleft[6 .. 8]
  right[6 .. 8] = pfront[6 .. 8]
  back[6 .. 8] = pright[6 .. 8]
  left[6 .. 8] = pback[6 .. 8]
  rotateCBottom()
  updateMemory()

proc zaStrane(dest: var seq[string], src: var seq[string], a, b, c: int) = # the proc translates into "forSides" i made it so its easier to do the sides
  dest[a] = src[a]
  dest[b] = src[b]
  dest[c] = src[c]


proc LU() =
  zaStrane(front, pbottom, 0, 3, 6)
  zaStrane(top, pfront, 0, 3, 6)
  zaStrane(back, ptop, 0, 3, 6)
  zaStrane(bottom, pback, 0, 3, 6)
  rotateCCLeft()
  updateMemory()

proc LD() =
  zaStrane(front, ptop, 0, 3, 6)
  zaStrane(top, pback, 0, 3, 6)
  zaStrane(back, pbottom, 0, 3, 6)
  zaStrane(bottom, pfront, 0, 3, 6)
  rotateCLeft()
  updateMemory()

proc RU() =
  zaStrane(front, pbottom, 2, 5, 8)
  zaStrane(top, pfront, 2, 5, 8)
  zaStrane(back, ptop, 2, 5, 8)
  zaStrane(bottom, pback, 2, 5, 8)
  rotateCRight()
  updateMemory()

proc RD() =
  zaStrane(front, ptop, 2, 5, 8)
  zaStrane(top, pback, 2, 5, 8)
  zaStrane(back, pbottom, 2, 5, 8)
  zaStrane(bottom, pfront, 2, 5, 8)
  rotateCCRight()
  updateMemory()

proc MU() =
  zaStrane(front, pbottom, 1, 4, 7)
  zaStrane(top, pfront, 1, 4, 7)
  zaStrane(back, ptop, 1, 4, 7)
  zaStrane(bottom, pback, 1, 4, 7)
  updateMemory()

proc MD() =
  zaStrane(front, ptop, 1, 4, 7)
  zaStrane(top, pback, 1, 4, 7)
  zaStrane(back, pbottom, 1, 4, 7)
  zaStrane(bottom, pfront, 1, 4, 7)
  updateMemory()

proc FR() =
  zaStrane(right, ptop, 0, 3, 6)
  zaStrane(bottom, pright, 0, 3, 6)
  zaStrane(left, pbottom, 0, 3, 6)
  zaStrane(top, pleft, 0, 3, 6)
  rotateCFront()
  updateMemory()

proc FL() =
  zaStrane(right, pbottom, 0, 3, 6)
  zaStrane(bottom, pleft, 0, 3, 6)
  zaStrane(left, ptop, 0, 3, 6)
  zaStrane(top, pright, 0, 3, 6)
  rotateCCFront()
  updateMemory()

proc MMR() =
  zaStrane(right, ptop, 1, 4, 7)
  zaStrane(bottom, pright, 1, 4, 7)
  zaStrane(left, pbottom, 1, 4, 7)
  zaStrane(top, pleft, 1, 4, 7)
  updateMemory()

proc MML() =
  zaStrane(right, pbottom, 1, 4, 7)
  zaStrane(bottom, pleft, 1, 4, 7)
  zaStrane(left, ptop, 1, 4, 7)
  zaStrane(top, pright, 1, 4, 7)
  updateMemory()

proc BaR() =
  zaStrane(right, ptop, 2, 5, 8)
  zaStrane(bottom, pright, 2, 5, 8)
  zaStrane(left, pbottom, 2, 5, 8)
  zaStrane(top, pleft, 2, 5, 8)
  rotateCCBack()
  updateMemory()

proc BaL() =
  zaStrane(right, pbottom, 2, 5, 8)
  zaStrane(bottom, pleft, 2, 5, 8)
  zaStrane(left, ptop, 2, 5, 8)
  zaStrane(top, pright, 2, 5, 8)
  rotateCBack()
  updateMemory()



# a proc for another proc
proc slozenaStrana(seq: seq[string]): bool = #trasnslates to "solvedSide"
  if seq.len == 0:
    return true
  let firstValue = seq[0] # it works by checking the first item in a seq and seeing if all others are the same
  for item in seq:
    if item != firstValue:
      return false
  return true

proc slozenaRubiksova(): bool = # translate to "solvedRubiks" and it checks if the cube is solved
  if slozenaStrana(front) and slozenaStrana(back) and slozenaStrana(left) and slozenaStrana(right) and slozenaStrana(top) and slozenaStrana(bottom) == true:
    return true
  else:
    return false

proc echoRubicsStanje() =
  echo "\n"
  echo "Front", "\n", front[0], front[1], front[2], "\n", front[3], front[4], front[5], "\n", front[6], front[7], front[8], "\n"
  echo "Back", "\n", back[0], back[1], back[2], "\n", back[3], back[4], back[5], "\n", back[6], back[7], back[8], "\n"
  echo "Left", "\n", left[0], left[1], left[2], "\n", left[3], left[4], left[5], "\n", left[6], left[7], left[8], "\n"
  echo "Right", "\n", right[0], right[1], right[2], "\n", right[3], right[4], right[5], "\n", right[6], right[7], right[8], "\n"
  echo "Top", "\n", top[0], top[1], top[2], "\n", top[3], top[4], top[5], "\n", top[6], top[7], top[8], "\n"
  echo "Bottom", "\n", bottom[0], bottom[1], bottom[2], "\n", bottom[3], bottom[4], bottom[5], "\n", bottom[6], bottom[7], bottom[8], "\n"

# to operate the cube
proc rjesiRubiksovu() =
  while slozenaRubiksova() == false:
    echo "put in rubiks cube notations to control the cube: "
    var komanda = readLine(stdin)
    case komanda
    of "U":
      TL()
      echoRubicsStanje()
    of "U'":
      TR()
      echoRubicsStanje()
    of "E'":
      ML()
      echoRubicsStanje()
    of "E":
      MR()
      echoRubicsStanje()
    of "D'":
      BoL()
      echoRubicsStanje()
    of "D":
      BoR()
      echoRubicsStanje()
    of "L'":
      LU()
      echoRubicsStanje()
    of "L":
      LD()
      echoRubicsStanje()
    of "M'":
      MU()
      echoRubicsStanje()
    of "M":
      MD()
      echoRubicsStanje()
    of "R":
      RU()
      echoRubicsStanje()
    of "R'":
      RD()
      echoRubicsStanje()
    of "F'":
      FL()
      echoRubicsStanje()
    of "F":
      FR()
      echoRubicsStanje()
    of "S":
      MMR()
      echoRubicsStanje()
    of "S'":
      MML()
      echoRubicsStanje()
    of "B":
      BaL()
      echoRubicsStanje()
    of "B'":
      BaR()
      echoRubicsStanje()
    else:
      echo "fak you repeat it all"
      break
updateMemory()
RU() # the first move if this wasnt here the cube would be solved. planing to add a random move set to begin a cube
echoRubicsStanje()

rjesiRubiksovu()
