require_relative 'Candidate.rb'

class CandidateC < Candidate
    @van
    @su 
    @dia

    attr_accessor :van,:su,:dia

    def initialize(id,name,addr,priority,van,su,dia)
        super(id,name,addr,priority)
        @van = van
        @su = su
        @dia = dia
    end

    def to_s
        "Thi Sinh Khoi C:" + "ID= #{@id}" + ",HoTen= #{@name}" + ",DiaChi= #{@addr}" + ",MucUuTien = #{@priority} "  + ",Van = #{@van}" + ",Su = #{@su}" + ",Dia= #{@dia}"
    end

end