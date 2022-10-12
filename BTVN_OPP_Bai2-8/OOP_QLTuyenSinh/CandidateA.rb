require_relative 'Candidate.rb'

class CandidateA < Candidate
    @toanA
    @ly 
    @hoaA

    attr_accessor :toanA,:ly,:hoaA

    def initialize(id,name,addr,priority,toanA,ly,hoaA)
        super(id,name,addr,priority)
        @toanA = toanA
        @ly = ly
        @hoaA = hoaA
    end

    def to_s
        "Thi Sinh Khoi A:" + "ID= #{@id}" + ",HoTen= #{@name}" + ",DiaChi= #{@addr}" + ",MucUuTien = #{@priority} "  + ",Toan = #{@toanA}" + ",Ly = #{@ly}" + ",Hoa= #{@hoaA}"
    end

end