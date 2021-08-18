#Basic header
def print_header
  puts "The students of Villains Academy"
  puts "---------------"
end

#List of students
def input_students
  students = []
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

#Print out student names
def print(names)
  names.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

#Student count
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)