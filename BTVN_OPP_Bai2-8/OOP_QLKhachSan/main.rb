# Để quản lý khách hàng đến thuê phòng của một khách sạn
# , người ta cần các thông tin sau: 
#     Số ngày thuê, loại phòng, thông tin cá nhân của những người thuê phòng.

# Biết rằng phòng loại A có giá 500$, phòng loại B có giá 300$ và loại C có giá 100$.

# Với mỗi cá nhân cần quản lý các thông tin sau: Họ tên, tuổi, số chứng minh nhân dân.

# Yêu cầu 1: Hãy xây dựng lớp Nguoi để quản lý thông tin cá nhân của những người thuê phòng.

# Yêu cầu 2: Xây dựng lớp KhachSan để quản lý các thông tin về các phòng trong khác sạn.

# Yêu cầu 3: Xây dựng các phương thức thêm mới, xoá khách theo số chứng minh nhân dân. 
#     Tính tiền thuê phòng cho khách(xác định khách bằng số chứng minh nhân dân) 
#     dựa vào công thức: (số ngày thuê * giá của từng loại phòng)
require_relative 'Hotel.rb'


listCustomer = Hotel.new

while (true)
    p "--------------------------------------------"
    puts("QUAN LY KHACH SAN");
    puts("1: Them khach hang");
    puts("2: In tat ca khach hang");
    puts("3: Xoa khach hang theo CMND: " );
    puts("4: Tinh tien theo CMND " );
    puts("5: Thoat " );


    print "Moi nhap lua chon cua ban: "
    index_205 = gets.to_i

    case index_205 
    when 1
        while(true)
            puts "------------- MOI LUA CHON -----------------"
            puts "Nhan 1: Them khach hang"
            puts "Nhan 2: Quay lai Menu"
            
            print "Moi nhap lua chon: "
            choosen = gets.to_i
            
            case choosen
            when 1
                while true
                    print("Nhap vao CMND: ")
                    id = gets.chomp.to_s
                    if ( listCustomer.check_DuplicateID(id) == true)
                        p "CMND BAN NHAP DA TON TAI. Vui long nhap lai !"
                    else break
                    end
                end
                        
                print("Nhap vao Ten: ")
                name = gets.chomp.to_s
                print("Nhap vao Tuoi: ")
                age = gets.to_i
                
                print("Nhap vao Loai Phong: ")
                room = gets.chomp.to_s
                
                if room == "A"
                    room = RoomA.new
                elsif room == "B"
                    room = RoomB.new   
                else
                    room = RoomC.new
                end

                print("Nhap vao So ngay thue: ")
                numRent = gets.to_i
                
                
                person = Person.new(id,name,age,room,numRent)
                listCustomer.listCustomer << person
                
            else 
                break
            end
        end

    when 2 
        listCustomer.showCustomer

    when 3
        print "Nhap CMND can xoa:  "
        delete_id = gets.chomp.to_s
        listCustomer.deleteCustomer(delete_id)

    when 4
        print "Nhap CMND can tinh tien: "
        calc_id = gets.chomp.to_s
        listCustomer.calcCustomer(calc_id)
    else
        p "KET THUC CHUONG TRINH"
        break
    end

end