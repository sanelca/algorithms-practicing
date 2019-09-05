=begin

Angry Professor

A Discrete Mathematics professor has a class of students. Frustrated with
their lack of discipline, he decides to cancel class if fewer than some number
of students are present when class starts. Arrival times go from on time ()
to arrived late ().

Given the arrival time of each student and a threshhold number of attendees,
determine if the class is canceled.

The first line of input contains , the number of test cases.

Each test case consists of two lines.

The first line has two space-separated integers,  and ,
the number of students (size of ) and the cancellation threshold.
The second line contains  space-separated integers () describing the
arrival times for each student.

Note: Non-positive arrival times () indicate the student arrived early or on time;
positive arrival times () indicate the student arrived  minutes late.

For example, there are  students who arrive at times . Four are there on time,
and two arrive late. If there must be  for class to go on, in this case the
class will continue. If there must be , then class is cancelled.

=end


def angryProfessor(k, a)
  arrayOfAttend = []
  a.each { | lateOrNo |
     if lateOrNo <= 0
         arrayOfAttend.push(lateOrNo)
     end
  }
  if arrayOfAttend.count >= k
      return "NO"
  end
  return "YES"

end

p angryProfessor 3, [-1, -3, 4, 2]
p angryProfessor 2, [0, -1, 2, 1]
