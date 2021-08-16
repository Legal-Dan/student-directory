#Basic header
puts "The students of Villains Academy"
puts "---------------"

#List of students
students = [
  "Dr. Hannibal Lecter", 
  "Darth Vader", 
  "Nurse Ratched", 
  "Michael Corleone", 
  "Alex DeLarge", 
  "The Wiched Witch of the West", 
  "Terminator", 
  "Freddy Krueger", 
  "The Joker", 
  "Joffrey Baratheon", 
  "Norman Bates"
]

#Print out student names
students.each do |student|
  puts student
end

#Student count
print "Overall, we have #{students.count} great students"