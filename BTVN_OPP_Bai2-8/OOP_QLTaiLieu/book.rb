require_relative 'document.rb'
class Sach < TaiLieu
    @tacgia
    @sotrang

    attr_accessor :tacgia, :sotrang

    def initialize(id,nxb,number,tacgia,sotrang)
        super(id,nxb,number)
        @tacgia = tacgia
        @sotrang = sotrang
    end

    def to_s
        "Sach{" + "TacGia=" + "#{@tacgia}" + ", SoTrang=" + "#{@sotrang}" +", id=" + "#{@id}" + ", nxb=" + @nxb + ", SoPhatHanh=" + "#{@number}" +'}'
    end
end




