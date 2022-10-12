require_relative 'Candidate.rb'

class CandidateB < Candidate
    @toanB
    @sinh 
    @hoaB

    attr_accessor :toanB,:sinh,:hoaB

    def initialize(id,name,addr,priority,toanB,sinh,hoaB)
        super(id,name,addr,priority)
        @toanB = toanB
        @sinh = sinh
        @hoaB = hoaB
    end

    def to_s
        "Thi Sinh Khoi B:" + "ID= #{@id}" + ",HoTen= #{@name}" + ",DiaChi= #{@addr}" + ",MucUuTien = #{@priority} "  + ",Toan = #{@toanB}" + ",Sinh = #{@sinh}" + ",Hoa= #{@hoaB}"
    end

end