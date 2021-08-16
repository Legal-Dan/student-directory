#Basic header
def print_header
  puts "The students of Villains Academy"
  puts "---------------"
end

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
def print(names)
  names.each do |student|
    puts student
  end
end

#Student count
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

print_header
print(students)
print_footer(students)