=begin

Chocolate Feast

Little Bobby loves chocolate. He frequently goes to his favorite  store,
Penny Auntie, to buy them. They are having a promotion at Penny Auntie.
If Bobby saves enough wrappers, he can turn them in for a free chocolate.

For example, Bobby has  to spend on bars of chocolate that cost  each.
He can turn in  wrappers to receive another bar. Initially, he buys
bars and has wrappers after eating them. He turns in  of them, leaving him with ,
for  more bars. After eating those two, he has  wrappers, turns in
leaving him with  wrapper and his new bar. Once he eats that one, he has
wrappers and turns them in for another bar. After eating that one,
he only has  wrapper, and his feast ends. Overall, he has eaten  bars.

=end


def chocolateFeast(n, c, m)
  answer = 0
  chocolate = n / c
  answer += chocolate

  free_choco = chocolate / m

  while free_choco > 0 do
    answer += free_choco
    wrappers = free_choco * m
    chocolate -= wrappers
    chocolate += free_choco
    free_choco = chocolate / m
  end
  return answer

end

p chocolateFeast 10, 2, 5
p chocolateFeast 12, 4, 4
p chocolateFeast 6, 2, 2
p chocolateFeast 7, 3, 2
