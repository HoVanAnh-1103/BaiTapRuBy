require_relative 'book.rb'
require_relative 'journal.rb'
require_relative 'newspaper.rb'

listDocument = Array.new




def inDS(listDocument)
    for item in listDocument
        if item.is_a?(Sach)
        p item.to_s
        end
    end

    for item in listDocument
        if item.is_a?(TapChi)
        p item.to_s 
        end
    end

    for item in listDocument
        if item.is_a?(Bao)
        p item.to_s
        end
    end
end


def searchTL(listDocument,type)
    if type == 1
        for item in listDocument
            if item.is_a?(Sach)
                p item.to_s
            end 
        end
    elsif type == 2
        for item in listDocument
            if item.is_a?(TapChi)
                p item.to_s
            end 
        end
    else
        for item in listDocument
            if item.is_a?(Bao)
                p item.to_s
            end 
        end
    end
end

def deleteTL(listDocument,id)
    for item in listDocument
        if item.id.to_s == id 
            listDocument.delete_if { |i| i == item }
        end
    end
end

def check_DuplicateID(listDocument,id)
    for item in listDocument
        if item.id.to_s == id 
            return true
        end
    end
    return false
end

# sach = Sach.new("id1","nxb1","number1","tg1","page1")
# tapchi = TapChi.new("id2","nxb2","number2","soPH1","thangPH1")
# bao = Bao.new("id3","nxb3","number3","ngayPH1")

# listDocument << sach
# listDocument << tapchi
# listDocument << bao

# inDS(listDocument)

# deleteTL(listDocument,"id3")

# inDS(listDocument)



while (true)
    p "--------------------------------------------"
    puts("Quan Ly Tai Lieu");
    puts("1: Them tai lieu");
    puts("2: Hien thi thong tin ve tai lieu");
    puts("3: Tim kiem theo loai" );
    puts("4: Xoa tai lieu theo ID: " );
    puts("5: Thoat:");

    print "Moi nhap lua chon cua ban: "
    index = gets.to_i

    case index 
    when 1
        p "-------- NHAP VAO TAI LIEU: ----------------"
        puts("1: Them sach");
        puts("2: Them tap chi");
        puts("3: Them bao");
        puts("4: Thoat");
        print "Moi nhap lua chon cua ban: "
        choosen = gets.to_i

        case choosen
        when 1
            p "-------- NHAP VAO SACH: ----------------"
            while true 
                print("nhap vao id: ")
                id = gets.chomp.to_s 
                if (check_DuplicateID(listDocument,id) == true)
                    p "ID BAN NHAP DA TON TAI. Vui long nhap lai !"
                else break
                end
            end

            print("nhap vao Nha Xuat Ban: ")
            nxb = gets.chomp.to_s
            print("Nhap vao so phat hanh: ")
            number = gets.to_i
            print("nhap vao ten tac gia: ")
            author = gets.chomp.to_s
            print("nhap vao so trang: ")
            page = gets.to_i
            #sach = Sach.new("id1","nxb1","number1","tg1","page1")
            sach = Sach.new(id,nxb,number,author,page)
            listDocument << sach 
           
        when 2
            p "-------- NHAP VAO TAP CHI: ----------------"
            while true 
                print("nhap vao id: ")
                id = gets.chomp.to_s 
                if (check_DuplicateID(listDocument,id) == true)
                    p "ID BAN NHAP DA TON TAI. Vui long nhap lai !"
                else break
                end
            end
            print("nhap vao Nha Xuat Ban: ")
            nxb = gets.chomp.to_s
            print("Nhap vao so Ban: ")
            number = gets.to_i
            print("nhap vao so PH: ")
            soPH = gets.to_i
            print("nhap vao thang PH: ")
            thangPH = gets.to_i

            tapchi = TapChi.new(id,nxb,number,soPH,thangPH)
            #tapchi = TapChi.new("id2","nxb2","number2","soPH1","thangPH1")
            listDocument << tapchi
        when 3
            p "-------- NHAP VAO BAO: ----------------"
            while true 
                print("nhap vao id: ")
                id = gets.chomp.to_s 
                if (check_DuplicateID(listDocument,id) == true)
                    p "ID BAN NHAP DA TON TAI. Vui long nhap lai !"
                else break
                end
            end
            print("nhap vao Nha Xuat Ban: ")
            nxb = gets.chomp.to_s
            print("Nhap vao so Ban: ")
            number = gets.to_i
            print("nhap vao ngay PH: ")
            ngayPH = gets.to_i

            bao = Bao.new(id,nxb,number,ngayPH)
            # bao = Bao.new("id3","nxb3","number3","ngayPH1")
            listDocument << bao
        else 
            p "Ket thuc Nhap"
        end

    when 2
        p "-------DANH SACH TAI LIEU-----------"
        inDS(listDocument)    

    when 3
        p "------TIM KIEM TAI LIEU THEO LOAI---------"
        puts("1: Tim kiem sach");
        puts("2: Tim kiem tap chi");
        puts("3: Tim kiem bao");
        puts("4: Thoat");
        print "Nhap lua chon cua ban: "
        search_choosen = gets.to_i
        searchTL(listDocument,search_choosen)
    when 4
        p "------XOA TAI LIEU THEO ID---------"
        print "Nhap ID can Xoa: "
        deleteID = gets.chomp.to_s
        deleteTL(listDocument,deleteID)
        p "Xoa Thanh Cong !"

    else
        p "Ket Thuc Chuong Trinh"
         break
    end
end





