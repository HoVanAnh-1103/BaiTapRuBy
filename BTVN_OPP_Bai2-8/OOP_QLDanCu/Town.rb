require_relative 'Family.rb'

class Town < Family
    @listFamily = Array.new
    
    attr_accessor :listFamily

    def initialize
        @listFamily = Array.new
    end

    def addFamily(family)
        @listFamily << family 
    end

    def townInfo
        for @item in @listFamily
            @item.familyInfo
        end
    end

    def check_DuplicateID(id)
        for @itemFamily in @listFamily
            for @itemPerson in @itemFamily.listPerson
                if @itemPerson.id.to_s == id 
                    return true
                end
            end
        end
        return false
    end
end