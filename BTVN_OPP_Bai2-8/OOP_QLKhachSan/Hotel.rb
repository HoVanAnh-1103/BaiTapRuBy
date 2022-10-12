require_relative 'Person.rb'
require_relative 'RoomA.rb'
require_relative 'RoomB.rb'
require_relative 'RoomC.rb'

class Hotel

    @listCustomer 

    attr_accessor :listCustomer

    def initialize
        @listCustomer = Array.new

    end

    def check_DuplicateID(id)
        for @customer in @listCustomer

            if(@customer.id.to_s == id )
                return true
            end 
           
        end
        return false
    end

    def addCustomer(person)
        @listCustomer << person 
    end

    def showCustomer
        for @customer in @listCustomer
            p @customer.to_s
        end
    end

    def deleteCustomer(id)
        for @item in @listCustomer
            if @item.id.to_s == id 
                @listCustomer.delete_if { |i| i == @item }
                p "XOA THANH CONG !"
            end
        end
    end

    def calcCustomer(id)
        for @item in @listCustomer
            if @item.id.to_s == id 
                @price = @item.roomType.price * @item.numRent
                p "TIEN THUE PHONG CUA ID: #{@item.id} la - #{@price}"
            end
        end
    end
end