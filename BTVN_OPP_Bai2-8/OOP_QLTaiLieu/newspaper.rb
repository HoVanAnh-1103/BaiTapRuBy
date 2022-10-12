require_relative 'document.rb'
class Bao < TaiLieu
    @ngayPH

    attr_accessor :ngayPH

    def initialize(id,nxb,number,ngayPH)
        super(id,nxb,number)
        @ngayPH = ngayPH
    end

    def to_s
        "Bao{ id= " + @id +", nxb= " + @nxb +","+"NgayPhatHanh= " + "#{@ngayPH}" + ", SoBan= " + "#{ @number}" +'}'
    end
end
