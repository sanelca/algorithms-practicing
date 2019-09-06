=begin

The Time in Words

Given the time in numerals we may convert it into words, as shown below:

At , use o' clock. For , use past, and for  use to. Note the space between the
apostrophe and clock in o' clock. Write a program which prints the time in words
for the input given in the format described.

=end


def timeInWords(h, m)
    translator = (1..20).to_a.zip(%w[one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen twenty]).to_h
    if m == 0
        return translator[h] + " o' clock"
    elsif m == 30
        return "half past " + translator[h]
    elsif m == 15
        return "quarter past " + translator[h]
    elsif m == 45
        return "quarter to " + translator[(h+1)%12]
    elsif m == 1
        return "one minute past " + translator[h]
    elsif m < 30 and m > 20
        return "twenty " + translator[m-20] + " minutes past " + translator[h]
    elsif m > 30 and m < 40
        return "twenty " + translator[40 - m] + " minutes to " + translator[(h + 1)%12]
    elsif m < 30
        return translator[m] + " minutes past " + translator[h]
    elsif m > 30
        return translator[60 - m] + " minutes to " + translator[(h + 1)%12]
    end
end

p timeInWords 5, 47
p timeInWords 3, 0
p timeInWords 7, 15
