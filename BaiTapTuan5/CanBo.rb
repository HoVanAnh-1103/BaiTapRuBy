class Canbo


    def initialize

    end 

   

    def enter_infomation
        print "Nhập tên : "
        @name102 = gets.chomp
        print "Nhập tuổi : "
        @age102 = gets.to_i
        print "Nhập giới tính 1(nam) 0(nữ) 2(khác) : "
        @gender102 = gets.to_i
        print "Nhập địa chỉ : "
        @address102 = gets.chomp
    end

    def info    
        puts "Tên : #{@name102}"
        puts "Tuối : #{@age102}"
        if @gender102 == 1 
            puts'Giới tính : Nam'
        elsif @gender102 == 0
            puts 'Giới Tính : Nữ'
        else 
            puts 'Giới Tính : Khác'
        end
        puts "Địa chỉ : #{@address102}"
    end
    attr_accessor :name102, :age102, :gender102, :address102
end 



class Congnhan < Canbo

    def initialize
    end

    attr_accessor :name102, :age102, :gender102, :address102, :bac102

    def enter_infomation
        super
        print "Nhập bậc : "
        @bac102 = gets.chomp
    end

    def info 
        super   
        puts "Bậc : #{@bac102}"
    end

end

class Kysu < Canbo

    def initialize
    end

    def enter_infomation
        super
        print "Nhập ngành đào tạo : "
        @nganh102 = gets.chomp
    end
    def info 
        super   
        puts "Ngành : #{@nganh102}"
    end
    attr_accessor :name102, :age102, :gender102, :address102, :nganh102
end

class Nhanvien < Canbo
    def initialize
    end

    def enter_infomation
        super
        print "Nhập công việc : "
        @congviec102 = gets.chomp
    end
    def info 
        super   
        puts "Công việc : #{@congviec102}"
    end
    attr_accessor :name102, :age102, :gender102, :address102, :congviec102

end

class QLCB
    def initialize
    end

    $canbos102 = []
    
    def addCanbo
        puts"1. Nhâp công nhân :"
        puts"2. Nhâp Ky su :"
        puts"3. Nhập Nhân viên :"
        print "Mơi bạn chon : "
        choose = gets.to_i
        if choose ==1 
            canbo102 =Congnhan.new
         
        elsif choose == 2
            canbo102 =Kysu.new
        else 
            canbo102 = Nhanvien.new
        end
        canbo102.enter_infomation
        $canbos102 << canbo102       
    end

    def infomatinon 
        puts "============Danh sách cán bộ là================"    
        $canbos102.each do |canbo102|
            puts canbo102.info
        end
    end

end



$continute = true
while $continute

    quanly = QLCB.new
    puts "1. thêm mới cán bộ."
    puts "2. Tìm kiếm theo tên."
    puts "3. Hiện thị thông tin danh sách cán bộ ."
    puts "4 Thoát khỏi chương trình."

    print "Mời bạn chọn : "
    choose = gets.to_i

    case choose
    when 1
        quanly.addCanbo
    when 2
       puts "Khong đc"
    when 3
        quanly.infomatinon
    else
       puts "Xin tạm biệt!"
        $continute = false
    end
end
