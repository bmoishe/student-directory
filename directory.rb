def interactive_menu
  students = []
  loop do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "3. Exit" # 9 because we'll be adding more items
    selection = gets.chomp
    case selection
    when '1'
      students = input_students
      #input students
    when '2'
      print_header
      print(students)
      print_footer(students)
      # Show the students
    when '3'
        exit  # Exit
    else
        puts 'I dont know what you meant, try again'
    end
  end
end

#lets' put all students into an array
def input_students
  puts "Please enter the names of the students"
  puts "To finnish, jusr hit return twice"
  #creates an empty Array
  students = []
  # get the first name
  name = gets.chomp
  # while the ame is not empty, repeat this code
  while !name.empty? do
  # add the student hash to the array
  students << {name: name, cohort: :november}
  puts "Now we have #{students.count} students"
  # get another name from user
  name = gets.chomp
  end
  # return the array of the students
  students
end

def print_header
  puts "The student of Villains Academy"
  puts "------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

interactive_menu
