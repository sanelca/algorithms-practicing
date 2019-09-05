=begin

  The Hurdle Race

  Dan is playing a video game in which his character competes in a hurdle race.
  Hurdles are of varying heights, and Dan has a maximum height he can jump.
  There is a magic potion he can take that will increase his maximum height by
  unit for each dose. How many doses of the potion must he take to be able
  to jump all of the hurdles.

  Given an array of hurdle heights , and an initial maximum height Dan can jump, ,
  determine the minimum number of doses Dan must take to be able to clear
  all the hurdles in the race.

  For example, if  and Dan can jump  unit high naturally, he must take  doses
  of potion to be able to jump all of the hurdles.

=end

def hurdleRace(k, height)
    maxDose = height.max - k
    if maxDose < 0
       maxDose = 0
    end
    return maxDose
end

p hurdleRace 4, [1, 6, 3, 5, 2]
p hurdleRace 7, [2, 5, 4, 5, 2]
