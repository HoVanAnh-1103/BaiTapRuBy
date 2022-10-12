require_relative "ManagerTeacher"
require_relative "Teacher"

managerTeacher = ManagerTeacher.new
while true
  puts "\n\n-----QUAN LY GIAO VIEN-----"
  puts "1: Them giao vien"
  puts "2: Xoa giao vien"
  puts "3: Tinh luong"
  puts "4: Thoat"

  line = gets.to_i
  case line
  when 1
    puts "\n-----Them giao vien-----"
    puts "ID:"
    id = gets.chomp
    puts "HoTen:"
    name = gets.chomp
    puts "Tuoi:"
    age = gets.to_i
    puts "QueQuan:"
    hometown = gets.chomp
    puts "Luong:"
    salary = gets.to_i
    puts "Luong thuong:"
    bonus = gets.to_i
    puts "Luong phat"
    penaty = gets.to_i
    # puts "Enter real salary:"
    # realSalary = gets.to_i

    teacher = Teacher.new(salary, bonus, penaty, name, age, hometown, id)

    managerTeacher.addTeacher(teacher)
  when 2
    puts "\n-----Xoa giao vien-----"
    puts "ID giao vien:"
    id = gets.chomp
    managerTeacher.deleteById(id)
  when 3
    puts "\n-----Tinh luong-----"
    puts "ID giao vien:"
    id = gets.chomp
    managerTeacher.getSalary(id)
  when 4
    puts "Thoat"
    return
  else
    puts "Khong hop le"
  end
end