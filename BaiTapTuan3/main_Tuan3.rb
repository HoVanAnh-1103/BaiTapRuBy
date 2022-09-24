require_relative 'student_Tuan3.rb'

arr = [Student.new(10,7,8,"HoVanAnh","black",40,160,21,"0987654321","hovananh@113","Kinh"),
  Student.new(10,10,10,"Vanh","black",50,170,21,"0839574498","vanh@123","Kinh"),
  Student.new(10,9,9,"Van Anh","black",40,165,21,"0124388492","anh@1234","Kinh"),
  Student.new(10,9,8,"Chau Hien","black",45,158,21,"0123987456","hien@1234","Kinh"),
]

puts "Danh sách chưa sắp xếp : \n",arr,"\n"


arr_sorted = arr.sort_by { |item| -item.average_grade() }
puts "Danh sách đã sắp xếp : \n",arr_sorted