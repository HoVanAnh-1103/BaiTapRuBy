require_relative "Student"
require_relative "Card"
require_relative "ManagerCard"

managerCard = ManagerCard.new
while true
  puts "\n\n-----QUAN LY THU VIEN-----"
  puts "1: Them phieu muon "
  puts "2: Xoa phieu muon"
  puts "3: Hien thi thong tin"
  puts "4: Thoat"

  line = gets.to_i
  case line
  when 1
    puts "\n ID:"
    id = gets.chomp
    puts "HoTen:"
    name = gets.chomp
    puts "Tuoi:"
    age = gets.to_i
    puts "Truong:"
    school = gets.chomp
    puts "NgayMuon:"
    borrowDate =  gets.to_i
    puts "NgayTra:"
    paymentDate =  gets.to_i
    puts "ID_Sach:"
    bookId =  gets.chomp

    card = Card.new(name, age, school, id, borrowDate, paymentDate, bookId)

    managerCard.addCard(card)
  when 2
    puts "\n ID phieu muon:"
    id = gets.chomp
    managerCard.deleteCard(id)
  when 3
    puts "\n-----Hien thi thong tin-----"
    managerCard.show()
  when 4
    puts "Thoat"
  else
    puts "Khong hop le"
  end
end