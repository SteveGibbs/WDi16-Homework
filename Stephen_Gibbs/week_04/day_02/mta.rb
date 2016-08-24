# a = subway[start_line].length
# p a
# b = subway[:nline][1]
# p b
# c = subway[:nline].index("Times Square").to_i
# p c


# Activity:
#
# Students should create a program that models a simple subway system.
#
# The program takes the line and stop that a user is getting on at and the line and stop that user is getting off at and prints the total number of stops for the trip.
#
# There are 3 subway lines:
# The N line has the following stops: Times Square, 34th, 28th, 23rd, Union Square, and 8th
# The L line has the following stops: 8th, 6th, Union Square, 3rd, and 1st
# The 6 line has the following stops: Grand Central, 33rd, 28th, 23rd, Union Square, and Astor Place.
# All 3 subway lines intersect at Union Square, but there are no other intersection points.
# For example, this means the 28th stop on the N line is different than the 28th street stop on the 6 line, so you'll have to differentiate this when you name your stops in the arrays.
# We should be able to say:
#
# plan_trip( :n, "Times Square", :l, "Grand Central" )
# # Or something along those lines
# Hints:
#
# Don't worry about user input initially: get it working with hardcoded values first, and wire up the user interface once that's working
# Scope works in a different way in Ruby, so variables that you define outside won't be accessible in a method. Maybe think about using a function to return data. Or perhaps research other types of variables
# A symbol can't just be a number!
# Consider diagraming the lines by sketching out the subway lines and their stops and intersection.
# Make subway lines keys in a hash, while the values are an array of all the stops on each line.
# The key to the lab is to find the intersection of the lines at Union Square.
# Make sure the stops that are the same for different lines have different names (i.e. 23rd on the N and on the 6 need to be differentiated)


subway = {
  :nline => ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
  :lline => ["8th", "6th", "Union Square", "3rd", "1st"],
  :sixline => ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]

}

start_line = :nline
start_stop1 = "Times Square"
end_stop1 = "Union Square"

second_line = :sixline
start_stop2 = "Union Square"
end_stop2 = "Grand Central"


#TEST CODE - TO GET HASH SYNTAX CORRECT

##use of range can only go forwards so must start with smaller index
##use array.reverse in order to reverse order of stations in array
##depending on whether the start index is lower or greater (ie back or forth)


index_start_stop1 = subway[start_line].index(start_stop1).to_i

index_end_stop1 = subway[start_line].index(end_stop1).to_i



if index_start_stop1>index_end_stop1
  subways_line1 = subway[start_line][index_end_stop1..index_start_stop1].reverse.join(", ")
  p "You need to travel on the following subways #{subways_line1} on line #{start_line}"
else

subways_line1 = subway[start_line][index_start_stop1..index_end_stop1].join(", ")
p "You need to travel on the following subways #{subways_line1} on line #{start_line}"
end

index_start_stop2 = subway[second_line].index(start_stop2).to_i

index_end_stop2 = subway[second_line].index(end_stop2).to_i

if index_start_stop2>index_end_stop2
  subways_line2 = subway[second_line][index_end_stop2..index_start_stop2].reverse.join(", ")

  p "and then you need to travel on the following subways #{subways_line2} on line #{second_line}"

else

  subways_line2 = subway[second_line][index_start_stop2..index_end_stop2].join(", ")
  p "and then you need to travel on the following subways #{subways_line2} on line #{second_line}"
end
