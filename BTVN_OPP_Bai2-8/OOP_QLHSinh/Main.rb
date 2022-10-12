require_relative "Student"
require_relative "School"

school = School.new
while true
  # add student
  puts "Nhap bao nhieu hoc sinh:"
  number = gets.to_i
  for i in 0..number-1
    puts "\n-----Them hoc sinh #{i+1}-----"
    puts " HoTen:"
    name = gets.chomp
    puts " Tuoi:"
    age = gets.to_i
    puts " QueQuan:"
    hometown = gets.chomp
    puts "Lop:"
    classStudent = gets.to_i

    student = Student.new(name, age, hometown, classStudent)
    school.addStudent(student)
  end
  puts "\n\n-----Danh sach hoc sinh-----"
  school.show()

  # Students 20 years old
  puts "\n\n-----Danh sách hoc sinh 20 tuổi-----"
  school.getStudent20YearsOld()

  # Student 20 years old and in DN
  puts "\n\n-----Số hoc sinh 23 tuổi-----"
  count = school.countStudent23YearOldInDN()
  puts "count: #{count}"
end