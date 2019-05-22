def print_header
  puts "The students of Villains Academy".center (60)
  puts "-------------".center (60)
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november, country: :England}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

def print(students)
      students.each do |student|
      puts "#{student[:name]} (#{student[:cohort]} cohort) in #{student[:country]}".center (60)
  end
end
def print_footer(names)
  puts "Overall we have #{names.count} great students"
end



students = input_students
print_header
print(students)
print_footer(students)
