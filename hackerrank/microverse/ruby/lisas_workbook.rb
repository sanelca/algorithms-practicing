=begin

Lisa just got a new math workbook. A workbook contains exercise problems,
grouped into chapters. Lisa believes a problem to be special if its index
(within a chapter) is the same as the page number where it's located.
The format of Lisa's book is as follows:

There are  chapters in Lisa's workbook, numbered from  to .
The  chapter has  problems, numbered from  to .
Each page can hold up to  problems. Only a chapter's last page of exercises
may contain fewer than  problems.
Each new chapter starts on a new page, so a page will never contain problems
from more than one chapter.
The page number indexing starts at .
Given the details for Lisa's workbook, can you count its number of special problems?

For example, Lisa's workbook contains  problems for chapter , and  problems
for chapter . Each page can hold  problems. The first page will hold
problems for chapter . Problem  is on page , so it is special. Page
contains only Chapter , Problem , so no special problem is on page .
Chapter  problems start on page  and there are  problems. Since there is no
problem  on page , there is no special problem on that page either.
There is  special problem in her workbook.

Note: See the diagram in the Explanation section for more details.

=end

def workbook(n, k, arr)
  page = 0  # start
  specials = 0  # this will get updated as we go

  # iterate over chapters
  arr.each do |chpt|
      # number of pages chapter will consume
      chpt_pages = (chpt.to_f / k).ceil

      # get only the specials for this chapter
      chpt_specials = (1..chpt).select { |ti|
          # the ceiling of (ti / k) gives us the page for that chapter
          ti == page + (ti.to_f / k).ceil
      }

      # add the number of specials we found
      specials += chpt_specials.size

      # increment the pages to be current
      page += chpt_pages
  end
  p specials

end

workbook 5, 3, [4, 2, 6, 1, 10]
workbook 10, 5, [3, 8, 15, 11, 14, 1, 9, 2, 24, 31]
