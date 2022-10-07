# ID, Hãng sản xuất, năm sản xuất, dòng xe, giá bán, biển số và màu xe.
class PhuongTien 
    attr_accessor :id_102, :hsx_102, :nsx_102, :dongxe_102, :giaban_102, :bienso_102, :mauxe_102
    def initialize(id_102, hsx_102, nsx_102, dongxe_102, giaban_102, bienso_102, mauxe_102)
        @id_102 = id_102
        @hsx_102 = hsx_102
        @nsx_102 = nsx_102
        @dongxe_102 = dongxe_102
        @giaban_102 = giaban_102
        @bienso_102 = bienso_102
        @mauxe_102 = mauxe_102
    end  

    def display
        puts "ID: #{id_102}"
        puts "Hang san xuat: #{hsx_102}"
        puts "Nam san xuat: #{nsx_102}"
        puts "Dong xe: #{dongxe_102}"
        puts "Gia ban: #{giaban_102}"
        puts "Bien so: #{bienso_102}"
        puts "Mau xe: #{mauxe_102}"
    end
end

#số chỗ ngồi, kiểu động cơ, nhiên liệu (xăng/dầu), số túi khí, ngày đăng kiểm.
class Oto < PhuongTien
    attr_accessor :sochongoi_102, :kieudongco_102, :nhienlieu_102, :sotuikhi_102, :ngaydangkiem_102
    def initialize(id_102, hsx_102, nsx_102, dongxe_102, giaban_102, sochongoi_102, kieudongco_102, nhienlieu_102, sotuikhi_102, ngaydangkiem_102)
        super(id_102, hsx_102, nsx_102, dongxe_102, giaban_102, bienso_102, mauxe_102)
        @sochongoi_102 = sochongoi_102
        @kieudongco_102 = kieudongco_102
        @nhienlieu_102 = nhienlieu_102
        @sotuikhi_102 = sotuikhi_102
        @ngaydangkiem_102 = ngaydangkiem_102
    end  

    def display
        super
        puts "So cho ngoi: #{sochongoi_102}"
        puts "Kieu dong co: #{kieudongco_102}"
        puts "Nhien lieu: #{nhienlieu_102}"
        puts "So tui khi: #{sotuikhi_102}"
        puts "Ngay dang kiem: #{ngaydangkiem_102}"
    end
end

#công suất, dung tích bình xăng.
class XeMay < PhuongTien
    attr_accessor :congsuat_102, :dungtich_102
    def initialize(id_102, hsx_102, nsx_102, dongxe_102, giaban_102, congsuat_102, dungtich_102)
        super(id_102, hsx_102, nsx_102, dongxe_102, giaban_102, bienso_102, mauxe_102)
        @congsuat_102 = congsuat_102
        @dungtich_102 = dungtich_102
    end  

    def display
        super
        puts "Cong suat: #{congsuat_102}"
        puts "Dung tich binh xang: #{dungtich_102}"
    end
end

#Trọng tải.
class XeTai < PhuongTien
    attr_accessor :trongtai_102
    def initialize(id_102, hsx_102, nsx_102, dongxe_102, giaban_102, trongtai_102)
        super(id_102, hsx_102, nsx_102, dongxe_102, giaban_102, bienso_102, mauxe_102)
        @trongtai_102 = trongtai_102
    end 

    def display
        super
        puts "Trong tai: #{trongtai_102}"
    end
end


class QLPTGT 
    attr_accessor :qlptgt_array_102
    def initialize 
        @qlptgt_array_102 = Array.new
        @search_result_array = Array.new
    end

    def nhapthongtin
        print "Chon loai phuong tien: 1.O to  2.Xe may  3.Xe tai  "
        loai_102 = gets.chomp.to_i

        # ID, Hãng sản xuất, năm sản xuất, dòng xe, giá bán, biển số và màu xe.
        print 'ID :'
        id_102 = gets.chomp.to_s
        print 'Hang san xuat :'
        hsx_102 = gets.chomp.to_s
        print 'Nam san xuat :'
        nsx_102 = gets.chomp.to_s
        print 'Dong xe :'
        dongxe_102 = gets.chomp.to_s
        print 'Gia ban :'
        giaban_102 = gets.chomp.to_s
        print 'Bien so :'
        bienso_102 = gets.chomp.to_s
        print 'Mau xe :'
        mauxe_102 = gets.chomp.to_s

        case loai_102
            when 1
                print "Nhap so cho ngoi: "
                sochongoi_102 = gets.chomp.to_i
                print "Nhap kieu dong co: "
                kieudongco_102 = gets.chomp
                print "Chon nhien lieu: 1.Xang  2.Dau "
                nhienlieu_102 = gets.chomp.to_i
                print "Nhap so tui khi: "
                sotuikhi_102 = gets.chomp.to_i
                print "Nhap ngay dang kiem: "
                ngaydangkiem_102 = gets.chomp
          
                nl_102 = "Xang"
                if nhienlieu_102 == 2
                  nl_102 = "Dau"
                end
          
                qlptgt_array_102.push(Oto.new(id_102, hsx_102, nsx_102, dongxe_102, giaban_102, sochongoi_102, kieudongco_102, nhienlieu_102, sotuikhi_102, ngaydangkiem_102))
            when 2
                print "Nhap cong suat: "
                congsuat_102 = gets.chomp.to_i
                print "Nhap dung tich binh xang: "
                dungtich_102 = gets.chomp.to_i

                qlptgt_array_102.push(XeMay.new(id_102, hsx_102, nsx_102, dongxe_102, giaban_102, congsuat_102, dungtich_102))
            when 3
                print "Nhap trong tai: "
                trongtai_102 = gets.chomp.to_i
          
                qlptgt_array_102.push(XeTai.new(id_102, hsx_102, nsx_102, dongxe_102, giaban_102, trongtai_102))
        end 
    end

    def them id_102, hsx_102, nsx_102, dongxe_102, giaban_102, bienso_102, mauxe_102
        ptgt = PhuongTien.new(id_102, hsx_102, nsx_102, dongxe_102, giaban_102, bienso_102, mauxe_102)
        @qlptgt_array_102.push(ptgt)
    end
    
    def timkiem_hsx hsx_102
        searchList = @qlptgt_array_102.select {|o| o.hsx_102.include? hsx_102}
        searchList.each{ |sl| sl.display}
    end

    def timkiem_mau mauxe_102
        searchList = @qlptgt_array_102.select {|o| o.mauxe_102.include? mauxe_102}
        searchList.each{ |sl| sl.display}
    end

    def timkiem_bienso bienso_102
        searchList = @qlptgt_array_102.select {|o| o.bienso_102.include? bienso_102}
        searchList.each{ |sl| sl.display}
    end

    def hienthi
        length = @qlptgt_array_102.length
        for i in 0..length do
            @qlptgt_array_102[i].display
        end
    end

    def xoaphuontien(id)
        @qlptgt_array_102.delete_if { |item| item.id_102.chomp.eql?id }
        print "Đã xoá thành công!"
    end
end

class Main
    manage_102=QLPTGT.new()
    user_input = " "
    while user_input != 7
        puts "----------------------------------"
        puts "Nhap 1: Them phuong tien vao danh sach"
        puts "Nhap 2: Hien thi danh sach "
        puts "Nhap 3: Xoa phuong tien theo id"
        puts "Nhap 4: Tim phuong tien theo hang san xuat"
        puts "Nhap 5: Tim phuong tien theo mau"
        puts "Nhap 6: Tim phuong tien theo bien so"
        puts "Nhap 7: Thoat"
        print "Nhap lua chon cua ban "
        user_input = gets.chomp.to_i

        if user_input == 1
            manage_102.nhapthongtin()
=begin
            # ID, Hãng sản xuất, năm sản xuất, dòng xe, giá bán, biển số và màu xe.
            print 'ID :'
            id_102 = gets.chomp.to_s
            print 'Hang san xuat :'
            hsx_102 = gets.chomp.to_s
            print 'Nam san xuat :'
            nsx_102 = gets.chomp.to_s
            print 'Dong xe :'
            dongxe_102 = gets.chomp.to_s
            print 'Gia ban :'
            giaban_102 = gets.chomp.to_s
            print 'Bien so :'
            bienso_102 = gets.chomp.to_s
            print 'Mau xe :'
            mauxe_102 = gets.chomp.to_s

            manage_102.them(id_102, hsx_102, nsx_102, dongxe_102, giaban_102, bienso_102, mauxe_102)
=end
        elsif user_input == 2
            manage_102.hienthi()
        elsif user_input == 3
            print 'Nhap id phuong tien can xoa '
            id_102 = gets.chomp.to_s
            manage_102.xoaphuontien(id_102)
        elsif user_input == 4
            hangsx_102 = gets.chomp.to_s
            manage_102.timkiem_hsx(hangsx_102)
        elsif user_input == 5
            mau_102 = gets.chomp.to_s
            manage_102.timkiem_mau(mau_102)
        elsif user_input == 6
            bienso_102 = gets.chomp.to_s
            manage_102.timkiem_bienso(bienso_102)
        elsif
            exit
        end
    end         
end

