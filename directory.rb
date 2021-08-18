#Interactive menu
def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
end

def show_students
  print_header
  print_students_list(@students)
  print_footer(@students)
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "9"
    exit
  else
    puts "Invalid selection"
  end
end

def interactive_menu
  @students = []
  loop do
    print_menu
    selection = gets.chomp
    process(selection)
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
  @students = []
  while !name.empty? do
    @students << {name: name, cohort: :november}
    puts "now we have #{@students.count} students"
    name = gets.chomp
  end
end

#Print out student names
def print_students_list(names)
  names.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

#Student count
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

interactive_menu