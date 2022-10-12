require_relative 'Person.rb'

class Family < Person
    @addr
    @listPerson = Array.new

    attr_accessor :addr,:listPerson

    def initialize(addr)
        @addr = addr
        @listPerson = Array.new
    end

    def check_DuplicateIDinFamily(id)
        for @itemFamily in @listPerson

            if(@itemFamily.id.to_s == id )
                return true
            end 
           
        end
        return false
    end

    def addPerson(person)
        @listPerson << person 
    end

    def familyInfo
        p "---------------------------------------------"
        p "GIA DINH - Dia chi: #{@addr}"
        p " DANH SACH THANH VIEN: "
        for @item in listPerson
            p @item.to_s
        end
    end
end

    
