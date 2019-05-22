def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

def print(students)
  students.each.with_index(1) do |student, index|
    if "#{student[:name]}".capitalize.split("")[0] == "A"
      puts "#{index} #{student[:name]} (#{student[:cohort]} cohort)"
      else
      nil
    end
  end
end
def print_footer(names)
  puts "Overall we have #{names.count} great students"
end



students = input_students
print_header
print(students)
print_footer(students)
