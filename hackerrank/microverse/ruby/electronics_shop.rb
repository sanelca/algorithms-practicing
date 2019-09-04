=begin
Electronics Shop

Monica wants to buy a keyboard and a USB drive from her favorite electronics store.
The store has several models of each. Monica wants to spend as much as
possible for the items, given her budget.

Given the price lists for the store's keyboards and USB drives, and Monica's budget,
find and print the amount of money Monica will spend. If she doesn't
have enough money to both a keyboard and a USB drive, print -1 instead.
She will buy only the two required items.

For example, suppose she has  to spend. Three types of keyboards cost .
Two USB drives cost . She could purchase a , or a . She chooses the latter.
She can't buy more than  items so she can't spend exactly .
=end

def getMoneySpent(keyboards, drives, b)
    #
    # Write your code here.
    #
    l = []
    for x in keyboards
        for y in drives
            if x+y <= b
                l.push(x+y)
            end
        end
    end
    if l.max
        return l.max
    else
        return -1
    end
end


p getMoneySpent [3, 1], [5, 2, 8], 10
p getMoneySpent [7, 12, 5, 2], [5, 2, 22], 15
