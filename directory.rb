#Interactive menu
def interactive_menu
  students = []
  loop do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
    selection = gets.chomp
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit
    else
      puts "Invalid selection"
    end
  end
end


#Basic header
def print_header
  puts "The students of Villains Academy"
  puts "---------------"
end

#List of students
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  name = gets.chomp
  studentstemp = []
  while !name.empty? do
    studentstemp << {name: name, cohort: :november}
    puts "now we have #{studentstemp.count} students"
    name = gets.chomp
  end
  studentstemp
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

interactive_menu